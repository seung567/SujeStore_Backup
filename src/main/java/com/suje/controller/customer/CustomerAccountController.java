package com.suje.controller.customer;

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
	public String getCustomerAccount(@RequestParam String id, Model model) {
		
		AccountVO vo = service.getCustomerAccount(id);
		
		logger.info("실행");
		
		model.addAttribute("vo", vo);
		
		return "/customer/customerAccount";
	}
	
	@RequestMapping(value = "AccountUpdate", method = RequestMethod.POST)
	public String accountUpdate(@ModelAttribute("vo") AccountVO vo, Model model) {
	
		logger.info("실행");
		int result = service.accountUpdate(vo);
		if(result == 0) {
			model.addAttribute("message", "정상적으로 수정이 완료 되었습니다.");
		}else {
			model.addAttribute("message", "수정 실패 하였습니다. 관리자 문의 하여 주세요.");
		}
		System.out.println(vo.getM_id());
		return "redirect:/customerAccount.do?id="  + vo.getM_id(); 
	}
}
