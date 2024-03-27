package com.suje.controller.customer;

import java.util.List;

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

import com.suje.domain.customer.QnAVO;
import com.suje.service.customer.CustomerQnAService;

@Controller
public class CustomerQnAController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerQnAController.class);

	@Autowired
	private CustomerQnAService service;

	// Q&A DB 리스트 불러오기
	@RequestMapping(value = "customerQnA")
	public String getCustomerQnA(@RequestParam String id, Model model) {
		logger.info("getCustomerQnA");
		List<QnAVO> vo = service.getCustomerQnA(id);
		model.addAttribute("vo", vo);
		return "/customer/customerQnA";
	}

	// Q&A 작성하기 (insert = 신규 글 저장 처리 요청)
	@RequestMapping(value = "insertQnA", method = RequestMethod.POST)
	public String insertQnA(@ModelAttribute("vo") QnAVO vo, Model model) {
		System.out.println(vo.getM_id());
		System.out.println(vo.getQna_title());
		System.out.println(vo.getQna_content());

		service.insertQnA(vo);
		model.addAttribute("vo", vo);

		System.out.println("insertQnA 컨트롤러 실행");

		return "redirect:/customerQnA.do?id=" + vo.getM_id();
	}

	// Q&A 답변 불러오기
	@RequestMapping(value = "customerQnAAModal")
	@ResponseBody
	public QnAVO getCustomerQnAA(@RequestParam("resultAnserNo") int id, Model model) {
		logger.info("getCustomerQnAA");
		QnAVO vo = service.getCustomerQnAA(id);
		return vo;
	}


}
