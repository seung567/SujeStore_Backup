package com.suje.controller.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	// 1. 주문제작 결제내역 페이지 연결(초기 페이징)
	@RequestMapping(value= "getPayList")
	public String payList(@RequestParam("id") String id, @RequestParam("orderPage") int orderPage,
			@RequestParam("fleaPage") int fleaPage, Model model, PayVO vo) {
		logger.info("getPayList");

		// 주문제작 리스트 반환 부분
		// 1. 주문제작 전체 페이지 수 계산
		int orderPageCount = service.getCountPageTotal(id);
		orderPageCount = totalCountPage(orderPageCount);
		// 2. 주문제작 부분 페이지 수 계산
		int orderFirstNum = (orderPage - 1) * pageCountNum + 1;
		int orderEndNum = orderPage * pageCountNum;
		
		// 플리마켓 주문 리스트 반환 부분		
		// 1. 플리마켓 전체 페이지 수 계산
		int fleaPageCount = service.getFleaCountPageTotal(id);
		fleaPageCount = totalCountPage(fleaPageCount);
		// 2. 플리마켓 부분 페이지 수 계산
		int fleaFirstNum = (fleaPage - 1) * pageCountNum + 1;
		int fleaEndNum = fleaPage * pageCountNum;
		
		// 맵 형식으로 Service , Repository, Mapper 값 전달
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("id", id);
		resultMap.put("orderFirstNum", orderFirstNum);
		resultMap.put("orderEndNum", orderEndNum);
		resultMap.put("fleaFirstNum", fleaFirstNum);
		resultMap.put("fleaEndNum", fleaEndNum);
		
		// 맵형식으로 JSP 페이지 값 전달 처리
		
		Map<String,Object> payList = service.getPayList(resultMap);
		
		model.addAttribute("mapValue",payList);
		model.addAttribute("id",id);
		
		return "/customer/customerOrderList";
	}
	
	// 전체 페이지의 수를 반환하는 메소드
	public int totalCountPage(int totalCountPage) {
		if((totalCountPage/pageCountNum)<0) {
			totalCountPage = 1;
		}else {
			totalCountPage = totalCountPage/pageCountNum;
		}
		return totalCountPage;
	}
}
