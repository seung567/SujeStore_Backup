package com.suje.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.main.HomeController;

@Controller
public class TestPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 테스트용 컨트롤 메소드
	@RequestMapping(value="testPageSet")
	public String ysm(@RequestParam("page") String page, @RequestParam("site") String siteURL) {

		return siteURL;
	}
	
	
}
