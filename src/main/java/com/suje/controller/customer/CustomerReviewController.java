package com.suje.controller.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.ReviewVO;
import com.suje.service.customer.CustomerReviewService;

@Controller
public class CustomerReviewController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerReviewController.class);

	@Autowired
	private CustomerReviewService service;

	// 리뷰 DB 리스트 불러오기
	@RequestMapping(value = "customerReview")
	public String getCustomerReview(@RequestParam String id, Model model) {
		logger.info("getCustomerReview");	
		 List<ReviewVO> vo = service.getCustomerReview(id);		
		model.addAttribute("vo", vo);
		return "/customer/customerReview";
	}

	// 리뷰 작성하기 (insert = 신규 글 저장 처리 요청)
	/*
	 * @RequestMapping(value ="insertReview", method = RequestMethod.POST) public
	 * String insertReview(@ModelAttribute("vo") ReviewVO, Model model) {
	 * System.out.println(vo.get); }
	 */
	

}
