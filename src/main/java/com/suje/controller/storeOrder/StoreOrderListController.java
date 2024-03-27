package com.suje.controller.storeOrder;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.storeOrder.StoreOrderListVO;
import com.suje.service.storeOrder.StoreOrderListService;


@Controller
public class StoreOrderListController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreOrderListController.class);
	
	@Autowired
	StoreOrderListService storeService;
	
	// Suje 톡톡 주문 내역 - 스토어
	@RequestMapping(value = "storeSujeTalk")
	public String getStoreOrderList(@RequestParam("id") String storeID, Model model) {
		
		logger.info("getStoreOrderList");
		
		List<StoreOrderListVO> storeOrderList = storeService.getStoreOrderList(storeID);
		model.addAttribute("storeOrderList",storeOrderList);
		
		return "/storeOrder/storeSujeTalk";
	}
	
	
	//SUJE 톡톡 기타 요청 내역 - 비동기
	@RequestMapping(value = "storeSujeTalkEtc", method = RequestMethod.POST)
	@ResponseBody
	public List<StoreOrderListVO> getStoreOrderEtc(@RequestParam Map<String,String> storeOrderNO) {
		
		logger.info("정상작동확인 = getStoreOrderEtc = {}",storeOrderNO.get("storeOrderNO") );
		List<StoreOrderListVO> storeOrderDetailList = storeService.getStoreOrderEtc(Integer.parseInt(storeOrderNO.get("storeOrderNO")));
		
		return storeOrderDetailList;
		
	}
	
	@RequestMapping(value = "flieTest", method = RequestMethod.POST)
	public void testFile(HttpServletRequest request) throws IOException{
		
		System.out.println(request.getInputStream());
		System.out.println(request.getContentType().getBytes());
	}
	
}
