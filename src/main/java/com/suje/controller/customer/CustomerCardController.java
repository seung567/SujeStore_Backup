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
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.customer.CardVO;
import com.suje.service.customer.CustomerCardService;

@Controller
public class CustomerCardController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerCardController.class);
	
	@Autowired
	private CustomerCardService service;
	
	// 회원 카드정보 가져오기
	@RequestMapping(value = "customerCard")
	public String selectCard(@RequestParam String id, Model model) {	
		logger.info("getCard Controller 실행");
		CardVO vo = service.getCard(id);
		model.addAttribute("vo", vo);
		return "/customer/customerCard";	
	}
	
	
	  // 회원 카드정보 수정하기.  
	  @RequestMapping(value = "updateCard", method=RequestMethod.POST)
	  public  String updateCard(@ModelAttribute CardVO updateCard) {
	  logger.info("updateCard Controller 실행"); 
	  logger.info(updateCard.getM_id()); 
	  logger.info(updateCard.getCard_company()); 
	  service.updateCard(updateCard);
	  return "redirect:/customerCard.do?id="+updateCard.getM_id();
	  
	  }
	  
/*	  // 회원 카드 정보 등록하기
	  
	  @RequestMapping(value = "insertCard", method=RequestMethod.POST) public
	  String insertCard(@ModelAttribute("vo") CardVO vo, Model model) {
	  
	  System.out.println(vo.getM_id()); System.out.println(vo.getCard_code());
	  System.out.println(vo.getCard_company());
	  System.out.println(vo.getCard_adate()); System.out.println(vo.getCard_cvc());
	  System.out.println(vo.getCard_pass());
	  
	  service.insertCard(vo); model.addAttribute("vo", vo);
	  
	  logger.info("insertCard Controller 실행");
	  
	  return "redirect:/getCard.do?id="+vo.getM_id(); 
	  }*/
	 
	
}
