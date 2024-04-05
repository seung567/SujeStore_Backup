package com.suje.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.AccountVO;
import com.suje.service.customer.CustomerAccountService;

@Controller
public class CustomerAccountController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerAccountController.class);

	@Autowired
	private CustomerAccountService service;
	
	@RequestMapping(value = "customerAccount")
	public String getCustomerAccount(@RequestParam String id, Model model)  {
		logger.info("accountUpdate");
		AccountVO vo = service.getCustomerAccount(id);
		model.addAttribute("vo", vo);

		return "/customer/customerAccount";
	}
	
	@RequestMapping(value = "AccountUpdate", method = RequestMethod.POST)
	public String accountUpdate(@ModelAttribute("vo") AccountVO vo, Model model, HttpServletRequest servlet) {
		logger.info("accountUpdate");
		
		int result = service.accountUpdate(vo);
		String id = servlet.getParameter("id");
		String state;
		
		if(result > 0) {
			state = "수정이 되었습니다 !";
		}else {
			state = "수정이 실패 하였습니다. - 관리자 문의 하여 주세요 !";
		}
		
		model.addAttribute("id",id);
		model.addAttribute("state",state);
		return "/customer/customerAccount";
		
	}
}
