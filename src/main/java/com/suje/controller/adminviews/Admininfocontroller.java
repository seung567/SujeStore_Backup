package com.suje.controller.adminviews;

import com.suje.domain.adminviews.AdmininfoVO;
import com.suje.service.adminviews.Admininfoservice;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Admininfocontroller {
    private static final Logger logger = LoggerFactory.getLogger(Admininfocontroller.class);

    @Autowired
    Admininfoservice info;

    @RequestMapping(value = "admininfo.do")
    public String getAdminInfo(@RequestParam String id, Model model) {
        logger.info("admininfocontroller: getAdminInfo 실행");

        AdmininfoVO vo = info.getAdminInfo(id);
        model.addAttribute("vo", vo);

        return "adminview/admininfo";
    }
}
