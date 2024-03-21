package com.suje.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.HomeVO;
import com.suje.service.HomeService;

@Controller
public class TestPageController {

	private static final Logger logger = LoggerFactory.getLogger(TestPageController.class);

	@Autowired
	private HomeService homeserviceTest;

	// 테스트용 컨트롤 메소드
	@RequestMapping(value = "testPageSet")
	public String ysm(@RequestParam("page") String page, @RequestParam("site") String siteURL) {

		return siteURL;
	}

	@RequestMapping(value = "modaltest")
	@ResponseBody
	public List<String> modalTest(HomeVO vo, Model model) {
		
		
		HomeVO result = homeserviceTest.getModalTest(vo);
		
		List list = new ArrayList();
		
		list.add(result.getTestval());
		list.add("이수정");
		list.add("REST API");

		return list;
		


	}

}
