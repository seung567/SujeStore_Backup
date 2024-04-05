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
import com.suje.service.storeAdmin.StoreGoodsSUService;
import com.suje.service.storeAdmin.StoreProfileService;

@Controller
public class StoreGoodsSUController {
	private static final Logger logger = LoggerFactory.getLogger(StoreGoodsSUController.class);
	
	@Autowired
	StoreGoodsSUService goodsService;
	
	@Autowired
	CategoryMainService categotyMainService;
	
	@Autowired
	StoreProfileService storeProfileService;

	
	
	@RequestMapping(value="storeGoodsMainPage")
	public String storeGoodsMainPage(@RequestParam("id") String id, Model model){
		
		// id 값을 가지고 service
		List<StoreGoodsSUVO> goods = goodsService.storeGoodsMainPage(id);
		
		// 카테고리 정보
		List<CategoryVO> cateMain = categotyMainService.getCateMain(); // 대분류
		
		//스토어 카테고리 대분류 정보 가져오기 
		int cateCode = storeProfileService.getStoreCateCode(id);
		
		// 카테고리 중분류 리스트 가져오기
		List<CategoryVO> cateMid = categotyMainService.getCateMid(cateCode);
		
		model.addAttribute("cateMain",cateMain);
		model.addAttribute("cateCode",cateCode);
		model.addAttribute("cateMid",cateMid);
		model.addAttribute("goodVO", goods);
		model.addAttribute("id",id);
		
		return "/storeAdmin/storeGoodsSearchUpdate";
	}
	
	
	
    @RequestMapping(value="updateGoodsSU", method=RequestMethod.POST)
    public String updateGoodsSU(@ModelAttribute StoreGoodsSUVO updateGoodsSU) {
    	goodsService.updateGoodsSU(updateGoodsSU); 
		logger.info(updateGoodsSU.getS_id());
        return "redirect:/storeGoodsMainPage.do?id=" + updateGoodsSU.getS_id();
    }
    

	
}
