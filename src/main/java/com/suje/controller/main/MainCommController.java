package com.suje.controller.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.main.MainCommVO;
import com.suje.service.main.MainCommService;

@Controller
public class MainCommController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainCommController.class);
	
	@Autowired
	private MainCommService mainCommService;
	
	int totalRowCount; // 전체 레코드 수
	int pageTotalCount; // 전체 페이지 수
	int countPerPage = 5; // 한페이지당 레코드 수
	int firstNum, endNum;
	
	@RequestMapping("communityMain.do")
	public String communityMain(@RequestParam("page") int page, @RequestParam("cCate") String cCate, Model model) {
		
		MainCommVO vo = new MainCommVO();
		
		logger.info("커뮤니티 전체 행수 컨트롤러");
		// 전체 테이블 행 수
		totalRowCount = mainCommService.getTotalAllCountPage();
		
		//전체 페이지 수
		pageTotalCount = totalRowCount / countPerPage;
		if(totalRowCount == 0) pageTotalCount = 0;
		if(totalRowCount%countPerPage > 0) pageTotalCount++;
		
		// 부분 페이지 수 계산
		firstNum = (page - 1) * countPerPage + 1;
		endNum = page * countPerPage;
		
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		
		model.addAttribute("cCate", cCate);
		model.addAttribute("pageTotalCount", pageTotalCount);
		
		logger.info("커뮤니티 전체 게시글 컨트롤러");
		model.addAttribute("commList", mainCommService.getCommList(vo));
		
		
		return "main/maincommu/mainComm";
	}
}
