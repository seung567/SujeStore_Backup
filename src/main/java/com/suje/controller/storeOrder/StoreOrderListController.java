package com.suje.controller.storeOrder;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.storeOrder.StoreOrderListVO;
import com.suje.service.storeOrder.StoreOrderListService;


@Controller
public class StoreOrderListController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreOrderListController.class);
	
	@Autowired
	StoreOrderListService storeService;
	
	// Suje 톡톡 주문 내역
	@RequestMapping(value = "storeSujeTalk")
	public String getStoreOrderList(@RequestParam("id") String storeID, Model model) {
		
		logger.info("getStoreOrderList");
		
		List<StoreOrderListVO> storeOrderList = storeService.getStoreOrderList(storeID);
		model.addAttribute("storeOrderList",storeOrderList);
		
		return "/storeOrder/storeSujeTalk";
	}
}
