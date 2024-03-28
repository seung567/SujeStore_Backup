package com.suje.controller.fleaMarket;

import java.util.ArrayList;
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

import com.suje.domain.fleaMarket.FleaGoodsVO;
import com.suje.domain.storeAdmin.StoreNoticeVO;
import com.suje.service.felaMarket.FleaGoodsSUService;

@Controller
public class fleaGoodsSUController {
	private static final Logger logger = LoggerFactory.getLogger(fleaGoodsSUController.class);
	
	@Autowired
	FleaGoodsSUService goodsService;
	
	@RequestMapping(value = "fleaGoodsListAll")
	public String fleaGoodsListAll(@RequestParam("id") String id, FleaGoodsVO vo, Model model) {
		System.out.println("fleaGoodsListAll 컨트롤 실행");

		vo.setS_id(id);
		List<FleaGoodsVO> goodsList = goodsService.fleaGoodsListAll(vo);
		model.addAttribute("fleaGoodsListAll", goodsList);

		return "/fleaMarket/fleaGoodsSearchUpdate";
	}
	
	@RequestMapping(value= "getFleaInfo")
	public String getFleaInfo(@RequestParam("fleaNum") int fleaNum, @RequestParam("id") String id, FleaGoodsVO vo, Model model) {
		
		System.out.println("getFleaInfo 실행");
		
		vo.setS_id(id);
		vo.setF_code(fleaNum);
		
		FleaGoodsVO getListVO = goodsService.getFleaInfo(vo);
		model.addAttribute("getListVO", getListVO);
		
		List<FleaGoodsVO> list = goodsService.fleaGoodsListAll(vo);
		model.addAttribute("fleaGoodsListAll", list);
		model.addAttribute("categoryFirst", getListVO.getCatem_name());
		model.addAttribute("categorySecond", getListVO.getCatemm_name());
		model.addAttribute("categoryThird", getListVO.getCates_name());
		
		return "/fleaMarket/fleaGoodsSearchUpdate";
		/* return "forward: fleaGoodsListAll.do?id=" + id; */
	}
	
	
		
	
		/*
		 * @RequestMapping(value="modifyGoodsSU", method=RequestMethod.POST) public
		 * String modifyGoodsSU(@ModelAttribute FleaGoodsVO modifyGoodsSU, Model model)
		 * { goodsService.modifyGoodsSU(modifyGoodsSU);
		 * 
		 * return "redirect:/fleaGoodsMainPage.do?id=" + modifyGoodsSU.getS_id(); }
		 */
    
    
  
    
	
}
