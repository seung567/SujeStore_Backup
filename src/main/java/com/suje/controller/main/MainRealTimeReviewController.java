package com.suje.controller.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.controller.adminviews.AdminQnAController;
import com.suje.domain.adminviews.AdminQnAVO;
import com.suje.domain.main.MainRealTimeReviewVO;
import com.suje.service.main.MainRealTimeReviewService;

@Controller
public class MainRealTimeReviewController {
    private static final Logger logger = LoggerFactory.getLogger(AdminQnAController.class);
    
    @Autowired
    private MainRealTimeReviewService mainRealTimeReviewService;

    private int totalRowCount; // 전체 레코드 수
    private int pageTotalCount; // 전체 페이지 수
    private int countPerPage = 10; // 한페이지당 레코드 수

    //RealTimeview.do (뷰(테이블 가져오기),페이징)
    @RequestMapping(value = "viewRealTimeReview.do")
    public String viewRealTimeReview(@RequestParam("page") int page, Model model) {
        logger.info("실시간 후기 view 실행 컨트롤러");
        
        //전체 페이지 수 
        pageTotalCount = totalRowCount / countPerPage;
        if (totalRowCount % countPerPage > 0) pageTotalCount++;
        
        // 부분 페이지 수 계산
        int firstNum = (page - 1) * countPerPage + 1;
        int endNum = page * countPerPage;
        
        MainRealTimeReviewVO vo = new MainRealTimeReviewVO();
        vo.setFirstNum(firstNum);
        vo.setEndNum(endNum);
        
        model.addAttribute("pageTotalCount", pageTotalCount);
        model.addAttribute("reviewList", mainRealTimeReviewService.getreviewList(vo));
        
        return "main/mainRealTimeReview";
    }
}
