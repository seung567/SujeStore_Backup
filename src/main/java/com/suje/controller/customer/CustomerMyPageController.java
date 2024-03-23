package com.suje.controller.customer;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.MemberVO;
import com.suje.service.customer.CustomerInfoService;


@Controller
public class CustomerMyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerMyPageController.class);
	
	@Autowired
	private CustomerInfoService service;
	
	@RequestMapping(value = "customerMyPage")
	public String getCustomerInfo(@RequestParam String id, Model model) {
		
		MemberVO vo = service.getCustomerInfo(id);

		System.out.println("=> CustomerMyPageController  => getCustomerInfo 실행");
		
		model.addAttribute("vo",vo);
		
		return "/customer/customerMyPage";
		
	}
	
}



