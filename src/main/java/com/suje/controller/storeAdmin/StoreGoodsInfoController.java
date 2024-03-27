package com.suje.controller.storeAdmin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.suje.domain.storeAdmin.StoreGoodsSUVO;
import com.suje.service.storeAdmin.StoreGoodsInfoService;
@Controller
public class StoreGoodsInfoController {
	private static final Logger logger = LoggerFactory.getLogger(StoreGoodsSUController.class);

	@Autowired
	StoreGoodsInfoService goodsService;
	
	@RequestMapping(value="storeGoodsInfo")
	public String storeGoods(){
		
		return "/storeAdmin/storeGoodsInfo";
	}

	@RequestMapping(value="insertStoreGoodsInfo", method = RequestMethod.POST)
	public String insertStoreGoodsInfo(@ModelAttribute("vo")StoreGoodsSUVO vo, Model model) {
		goodsService.insertStoreGoodsInfo(vo);
		model.addAttribute("VO",vo);
		logger.info(vo.getS_id());
		return "redirect:/storeGoodsInfo.do?id="+ vo.getS_id();
	}

}
