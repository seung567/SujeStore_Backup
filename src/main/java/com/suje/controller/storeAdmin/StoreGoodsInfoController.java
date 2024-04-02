package com.suje.controller.storeAdmin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.category.CategoryVO;
import com.suje.domain.storeAdmin.StoreGoodsSUVO;
import com.suje.service.category.CategoryMainService;
import com.suje.service.storeAdmin.StoreGoodsInfoService;
import com.suje.service.storeAdmin.StoreProfileService;
@Controller
public class StoreGoodsInfoController {
	private static final Logger logger = LoggerFactory.getLogger(StoreGoodsSUController.class);

	@Autowired
	StoreGoodsInfoService goodsService;
	
	@Autowired
	CategoryMainService categotyMainService;
	
	@Autowired
	StoreProfileService storeProfileService;
	
	@RequestMapping(value="storeGoodsInfo")
	public String storeGoods(@RequestParam("id") String id, Model model){
		
		// 스토어 대분류 코드 가져오기
		int cateCode = storeProfileService.getStoreCateCode(id);
		// 카테고리 대분류 리스트 가져오기
		List<CategoryVO> cateMain = categotyMainService.getCateMain(); // 대분류
		// 카테고리 중분류 리스트 가져오기
		List<CategoryVO> cateMid = categotyMainService.getCateMid(cateCode);
		
		model.addAttribute("cateCode",cateCode);
		model.addAttribute("cateMain",cateMain);
		model.addAttribute("cateMid",cateMid);
		
		return "/storeAdmin/storeGoodsInfo";
	}

	@RequestMapping(value="insertStoreGoodsInfo", method = RequestMethod.POST)
	public String insertStoreGoodsInfo(@ModelAttribute("vo")StoreGoodsSUVO vo, Model model) {
		
		logger.info("컨트롤러 실행 = insertStoreGoodsInfo");
		goodsService.insertStoreGoodsInfo(vo);
		model.addAttribute("VO",vo);
		
		return "redirect:/storeGoodsInfo.do?id="+ vo.getS_id();
	}

}
