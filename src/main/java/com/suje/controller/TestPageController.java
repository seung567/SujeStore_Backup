package com.suje.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.HomeVO;
import com.suje.main.HomeController;
import com.suje.service.HomeService;

@Controller
public class TestPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService homeserviceTest;
	
	// 테스트용 컨트롤 메소드
	@RequestMapping(value="testPageSet")
	public String ysm(@RequestParam("page") String page, @RequestParam("site") String siteURL) {

		return siteURL;
	}
	
	
	@RequestMapping(value="modaltest")
	public String modalTest(HomeVO vo, Model model) {
		System.out.println("컨트롤러 진입");
		model.addAttribute("home", homeserviceTest.getModalTest(vo));
		
		return "/customer/Modal/orderInfoModal";
	}
	
}
