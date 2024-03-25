package com.suje.controller.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.OrderListVO;
import com.suje.service.customer.CustomerOrderService;

import lombok.RequiredArgsConstructor;

@Controller
//@RequiredArgsConstructor
public class CustomerOrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderController.class);
	
	@Autowired
	CustomerOrderService orderService;
	
	
	// 고객 주문 내역 조회 페이지 연결
	@RequestMapping(value = "customerOrder")
	public String OrderList(Model model) {
		logger.info("OrderList");
		
		
		return "/customer/customerOrderList";
	}
	
	// 고객 SUJE 톡톡 페이지 연결
	@RequestMapping(value = "customerSujeTalk")
	public String sujeTalkTalk(
			@RequestParam("id") String id, 
			@RequestParam("page") int page,
			Model model) {
		
		logger.info("sujeTalkTalk");
		
		// 전체 페이지 수 계산
		int totalCountPage = orderService.getCountPageTotal(id);		
		
		
		// 출력용 부분 페이지 출력
		
		model.addAttribute("id",id);
		
		return "/customer/customerSujeTalk";
	}

}
