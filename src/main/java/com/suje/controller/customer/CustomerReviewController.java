package com.suje.controller.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.ReviewVO;
import com.suje.service.customer.CustomerReviewService;

@Controller
public class CustomerReviewController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerReviewController.class);

	@Autowired
	private CustomerReviewService service;

	@RequestMapping(value = "customerReview")
	public String getCustomerReview(@RequestParam String id, Model model) {

		logger.info("getCustomerReview");
		
		 List<ReviewVO> vo = service.getCustomerReview(id);
		
		model.addAttribute("vo", vo);
		return "/customer/customerReview";
	}



}
