package com.suje.controller.customer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.CardInfoVO;
import com.suje.service.customer.CardInfoService;

@Controller
public class CardInfoController {

	private static final Logger logger = LoggerFactory.getLogger(CardInfoController.class);
	
	@Autowired
	CardInfoService cardInfoService;
	
	@RequestMapping(value = "cardInfomation")
	public String getCardInfo(@RequestParam(value = "id") String id, Model model) {
		
		System.out.println("getCardInfo 컨트롤 실행");
		CardInfoVO infoVO = cardInfoService.getCardInfo(id);
		model.addAttribute("infoVO",infoVO);
		
		return "customer/customerCard";
		
	}

}
