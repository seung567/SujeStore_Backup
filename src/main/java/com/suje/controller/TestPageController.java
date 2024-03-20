package com.suje.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.suje.domain.HomeVO;
import com.suje.main.HomeController;

@Controller
public class TestPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private HomeVO homeVO;
	// 테스트용 컨트롤 메소드
	@RequestMapping(value="testPageSet")
	public String ysm(@RequestParam("page") String page, @RequestParam("site") String siteURL) {

		return siteURL;
	}
	
	
	@RequestMapping(value="modaltest")
	public ModelAndView modalTest() {
		
		ModelAndView m = new ModelAndView();
		m.setViewName("customer/Modal/orderInfoModal");
		m.addObject("vo", homeVO);
		
		return m;
	}
	
}
