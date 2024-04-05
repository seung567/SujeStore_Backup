package com.suje.controller.storeOrder;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.storeOrder.FleaOrderCheckVO;
import com.suje.service.storeOrder.FleaOrderCheckService;

@Controller
public class FleaOrderCheckController {
	private static final Logger logger = LoggerFactory.getLogger(StoreOrderCheckController.class);
	
	@Autowired
	FleaOrderCheckService flordercheckService;
	
	
	@RequestMapping(value="fleaOrderCheck")
    public String getFleaOrderCheck(@RequestParam("id") String id, Model model){
        logger.info("getFleaOrderCheck");
        // id 값을 가지고 service
        List<FleaOrderCheckVO> fleaorderCheck = flordercheckService.getFleaOrderCheck(id);
        model.addAttribute("FleaOrderCheckList", fleaorderCheck);
        return "storeOrder/fleaOrderCheck";
	}
}
