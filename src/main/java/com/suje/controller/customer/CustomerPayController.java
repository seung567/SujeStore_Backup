package com.suje.controller.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.customer.PayVO;
import com.suje.service.customer.CustomerPayService;

@Controller
public class CustomerPayController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerPayController.class);

	@Autowired
	private CustomerPayService service;	
	private final int pageCountNum = 5; // 각 페이지별 출력되는 목록의 수

	// 주문제작 결제내역 페이지 연결(초기 페이징)
	@RequestMapping(value= "getPayList")
	public String payList(
			@RequestParam("id") String id,
			@RequestParam("page") int page,
			Model model,
			PayVO vo) {
		logger.info("getPayList");
	
	  // Q&A 전체 페이지 수 계산
	int totalCountPage = service.getCountPageTotal(id);
	
	if((totalCountPage/pageCountNum)<0) {
		totalCountPage = 1;
	}else {
		totalCountPage = totalCountPage/pageCountNum;
	}
		
	// 부분 페이지 수 계산
	int firstNum = (page-1) * pageCountNum + 1;
	int endNum = page * pageCountNum;
	
	vo.setM_id(id);
	vo.setFirstNum(firstNum);
	vo.setEndNum(endNum);
	List<PayVO> payList = service.getPayList(vo);
	model.addAttribute("totalCountPage", totalCountPage);
	model.addAttribute("orderPayListTotal", payList);
	model.addAttribute("id", id);
	
	return "/customer/customerOrderList";

	}


}
