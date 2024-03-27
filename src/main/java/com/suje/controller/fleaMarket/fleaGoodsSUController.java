package com.suje.controller.fleaMarket;

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

import com.suje.domain.fleaMarket.FleaGoodsVO;
import com.suje.domain.storeAdmin.StoreNoticeVO;
import com.suje.service.felaMarket.FleaGoodsSUService;

@Controller
public class fleaGoodsSUController {
	private static final Logger logger = LoggerFactory.getLogger(fleaGoodsSUController.class);
	
	@Autowired
	FleaGoodsSUService goodsService;
	
	/*
	 * @RequestMapping(value="fleaGoodsMainPage") public String fleaGoodsMainPage()
	 * {
	 * 
	 * return "/fleaMarket/fleaGoodsSearchUpdate";
	 * 
	 * }
	 */
	
	
	  @RequestMapping(value="fleaGoodsMainPage") 
	  
	  public String fleaGoodsMainPage(@RequestParam("id") String id, Model model){
	  
	  // id 값을 가지고 service 
	  
	  List<FleaGoodsVO> goodsList = goodsService.fleaGoodsMainPage(id);
	  
	  model.addAttribute("goodsList", goodsList); 
	  model.addAttribute("id",id);
	  
	  return "/fleaMarket/fleaGoodsSearchUpdate"; }
	 
	
	
	
    @RequestMapping(value="modifyGoodsSU", method=RequestMethod.POST)
    public String modifyGoodsSU(@ModelAttribute FleaGoodsVO modifyGoodsSU, Model model) {
    	 goodsService.modifyGoodsSU(modifyGoodsSU); 
    	
        return "redirect:/fleaGoodsMainPage.do?id=" + modifyGoodsSU.getS_id();
    }
    
    
  
    
	
}
