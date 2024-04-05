package com.suje.controller.fleaMarket;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.suje.domain.fleaMarket.FleaGoodsVO;
import com.suje.service.felaMarket.FleaGoodsInfoService;


@Controller
public class FleaGoodsInfoController {
	private static final Logger logger = LoggerFactory.getLogger(FleaGoodsInfoController.class);

	@Autowired
	FleaGoodsInfoService fleaInfoService;
	
	@RequestMapping(value="fleaGoodsInfoMain")
	public String fleaGoodsInfoMain(){
		
		return "/fleaMarket/fleaGoodsInfo";
	}

	@RequestMapping(value="insertFleaGoodsInfo", method = RequestMethod.POST)
	public String insertFleaGoodsInfo(@ModelAttribute("vo") FleaGoodsVO vo, Model model) {
		fleaInfoService.insertFleaGoodsInfo(vo);
		model.addAttribute("insertVO",vo);
		logger.info(vo.getS_id());
		return "redirect:/fleaGoodsInfoMain.do?id="+ vo.getS_id();
	}

}
