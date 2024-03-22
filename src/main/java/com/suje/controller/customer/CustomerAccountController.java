package com.suje.controller.customer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.AccountVO;
import com.suje.service.customer.CustomerAccountService;

@Controller
public class CustomerAccountController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerAccountController.class);

	@Autowired
	CustomerAccountService service;
	
	@RequestMapping(value = "customerAccount.do")
	public String getCustomerAccount(@RequestParam String id, Model model) {
		
		AccountVO vo = service.getCustomerAccount(id);
		
		System.out.println("컨트롤러 실행");
		
		model.addAttribute("vo", vo);
		
		return "customer/customerAccount";
	}
	
	
}
