package com.suje.controller.adminviews;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.adminviews.AdminQnAVO;
import com.suje.service.adminviews.AdminQnAService;

@Controller
public class AdminQnAController {
	private static final Logger logger = LoggerFactory.getLogger(AdminQnAController.class);
	
	@Autowired 
	private AdminQnAService AdminQnAService;
	
	private int totalRowCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 5; // 한페이지당 레코드 수
	
	// QnA 관리 (MAIN)
	@RequestMapping(value = "adminQnA")
	public String adminqna(@RequestParam("page") int page, Model model ) {
		logger.info("스토어 QnA 컨트롤러");
		
		// 전체 테이블 행 수 
		totalRowCount = AdminQnAService.getTotalCountPage();
		
		//전체 페이지 수 
		pageTotalCount = totalRowCount / countPerPage;
		if (totalRowCount%countPerPage >0) pageTotalCount++;
		
		// 부분 페이지 수 계산
		int firstNum = (page - 1) * countPerPage + 1;
		int endNum = page * countPerPage;
		
		AdminQnAVO vo= new AdminQnAVO();
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		
		model.addAttribute("pageTotalCount", pageTotalCount);
		model.addAttribute("QnAList", AdminQnAService.getQnAList(vo));
		
		return "adminviews/adminQnA";
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
