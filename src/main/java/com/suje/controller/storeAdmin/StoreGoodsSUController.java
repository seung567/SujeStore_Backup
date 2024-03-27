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

import com.suje.domain.storeAdmin.StoreGoodsSUVO;
import com.suje.domain.storeAdmin.StoreProfileVO;
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
