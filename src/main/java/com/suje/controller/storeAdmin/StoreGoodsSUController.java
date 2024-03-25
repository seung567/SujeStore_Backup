package com.suje.controller.storeAdmin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.storeAdmin.StoreGoodsSUVO;
import com.suje.service.storeAdmin.StoreGoodsSUService;

@Controller
public class StoreGoodsSUController {
	private static final Logger logger = LoggerFactory.getLogger(StoreGoodsSUController.class);
	
	@Autowired
	StoreGoodsSUService goodsService;

	
	@RequestMapping(value="storeGoodsMainPage")
	public String storeGoodsMainPage(@RequestParam("id") String id, Model model){
		
		// id 값을 가지고 service
		List<StoreGoodsSUVO> goods = goodsService.storeGoodsMainPage(id);
		
		logger.info(String.valueOf(goods.get(1).getG_pname()));
		
		model.addAttribute("goodVO", goods);
		model.addAttribute("id",id);
		
		return "/storeAdmin/storeGoodsSearchUpdate";
	}
	
	
//	@RequestMapping(value = "storeGoodsSearchUpdate")
//	public String showStoreGoods(@RequestParam String id, Model model) {
//		List<StoreGoodsSUVO> goods = goodsService.getStoreGoodsById(id);
//        model.addAttribute("vo", goods);
//		
//		logger.info("showStoreGoods"); 
//		return "/storeAdmin/storeGoodsSearchUpdate";
//	}
}
