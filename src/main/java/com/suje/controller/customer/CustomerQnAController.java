package com.suje.controller.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.QnAVO;
import com.suje.service.customer.CustomerQnAService;

@Controller
public class CustomerQnAController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerQnAController.class);
	
	@Autowired
	private CustomerQnAService service;
	
	@RequestMapping(value= "customerQnA")
	public String getCustomerQnA(@RequestParam String id, Model model) {
		
		logger.info("getCustomerQnA");
		
		List<QnAVO> vo = service.getCustomerQnA(id);
		
		model.addAttribute("vo", vo);
		return "/customer/customerQnA";
		
	}
	
}
