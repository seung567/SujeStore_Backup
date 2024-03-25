package com.suje.controller.adminviews;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.suje.domain.adminviews.AdmininfoVO;
import com.suje.service.adminviews.Admininfoservice;

@Controller
public class Admininfocontroller {
    private static final Logger logger = LoggerFactory.getLogger(Admininfocontroller.class);

    @Autowired
    Admininfoservice info;

    @GetMapping(value = "/admininfo")
    public String getAdminInfo(HttpSession session, Model model) {
        logger.info("관리자 정보 가져오기 컨트롤러 실행");

        // 세션에서 관리자 아이디 가져오기
        String adminId = (String) session.getAttribute("adminId");

        

        // 관리자 정보 가져오기
        AdmininfoVO vo = info.getAdminInfo(adminId);

        // 모델에 관리자 정보 추가
        model.addAttribute("vo", vo);

        return "WEB-INF/views/adminviews/admininfo";
    }
    
    @PostMapping(value = "/updateAdmin")
    public String updateAdminInfo(@ModelAttribute AdmininfoVO adminInfo, HttpSession session, Model model) {
        logger.info("관리자 정보 업데이트 컨트롤러 실행");

        // 세션에서 관리자 아이디 가져오기
        String adminId = (String) session.getAttribute("adminId");
        
        // 관리자 정보 업데이트 (아이디 제외)
        info.updateAdminExceptId(adminInfo);

        // 업데이트된 관리자 정보를 다시 가져와 모델에 추가
        AdmininfoVO updatedInfo = info.getAdminInfo(adminId);
        model.addAttribute("vo", updatedInfo);

        model.addAttribute("message", "관리자 정보가 성공적으로 수정되었습니다.");

        return "WEB-INF/views/adminviews/admininfo";
    }
}
