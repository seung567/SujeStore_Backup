package com.suje.controller.storeOrder;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.storeOrder.StoreOrderCheckVO;
import com.suje.service.storeOrder.StoreOrderCheckService;


@Controller
public class StoreOrderCheckController {
	private static final Logger logger = LoggerFactory.getLogger(StoreOrderCheckController.class);
	
	@Autowired
	StoreOrderCheckService ordercheckService;
	
	
	@RequestMapping(value="storeOrderCheck")
    public String getStoreOrderCheck(@RequestParam("id") String id, Model model){
        logger.info("getStoreOrderCheck");
        // id 값을 가지고 service
        List<StoreOrderCheckVO> orderCheck = ordercheckService.getStoreOrderCheck(id);
        List<StoreOrderCheckVO> cancel = ordercheckService.getCancelOrderCheck(id);
        List<StoreOrderCheckVO> returnOrder = ordercheckService.getReturnOrderCheck(id);
        
        model.addAttribute("orderCheckList", orderCheck);
        model.addAttribute("cancelList", cancel);
        model.addAttribute("returnList", returnOrder);
        
        return "storeOrder/storeOrderCheck"; // 뷰 반환
    }
	
	@RequestMapping(value="storefinalOrder", method = RequestMethod.GET)
	@ResponseBody
	public StoreOrderCheckVO getStoreFinalOrder(@RequestParam Map<String,String> foCode) {
		
		logger.info("getStoreFinalOrder");
		StoreOrderCheckVO storefinalVO = ordercheckService.getStoreFinalOrder(Integer.parseInt(foCode.get("foCode")));
		
		return storefinalVO;
	}

}
