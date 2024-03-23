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

import com.suje.domain.customer.CardInfoVO;
import com.suje.service.customer.CardInfoService;

@Controller
public class CardInfoController {

	private static final Logger logger = LoggerFactory.getLogger(CardInfoController.class);
	
	@Autowired
	private CardInfoService cardInfoService;
	
	@RequestMapping(value = "cardInfomation")
	public String getCardInfo(@RequestParam(value = "id") String id, Model model) {
		
		System.out.println("=> CardInfoController  => getCardInfo 실행");
		CardInfoVO infoVO = cardInfoService.getCardInfo(id);
		model.addAttribute("infoVO", infoVO);
		
		return "customer/customerCard";	
	}
	
	// 회원 정보 수정 처리.
	@RequestMapping(value = "cardModify" , method=RequestMethod.POST)
	public String updateCardInfo(@ModelAttribute("vo") CardInfoVO vo, Model model) {
		System.out.println(vo.getM_id());
		System.out.println("updateCardInfo 컨트롤 실행");
		
		String replaceVal = vo.getCardNum();
		replaceVal = replaceVal.replace("-","");
		long cardNumResult = Long.parseLong(replaceVal);
		vo.setCard_num(cardNumResult);
		
		int infoVO = cardInfoService.updateCardInfo(vo);
		model.addAttribute("infoVO", infoVO);
		System.out.println(infoVO);
		return "redirect:/cardInfomation.do?id="+vo.getM_id();
		
	}
	
}
