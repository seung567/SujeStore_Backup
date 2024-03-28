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

@Controller
public class MainRealTimeReviewController {
	private static final Logger logger = LoggerFactory.getLogger(AdminQnAController.class);

	
	private int totalRowCount; // 전체 레코드 수
    private int pageTotalCount; // 전체 페이지 수
    private int countPerPage = 10; // 한페이지당 레코드 수

    @RequestMapping(value = "viewRealTimeReview.do")
    public String viewRealTimeReview() {
  
        return "main/mainRealTimeReview";
    }
        



}	
