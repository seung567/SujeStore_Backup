package com.suje.controller.customer;

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

import com.suje.controller.fleaMarket.FleaGoodsInfoController;
import com.suje.domain.category.CategoryVO;
import com.suje.service.category.CategoryMainService;

@Controller
public class CategoryController {
	
	private static final Logger logger = LoggerFactory.getLogger(FleaGoodsInfoController.class);
	
    @Autowired
    CategoryMainService categoryService;
    
	@RequestMapping(value = "getCateMidList", method = RequestMethod.POST)
	@ResponseBody
	public List<CategoryVO> getCateMidList(@RequestParam Map<String,String> resultMap, Model model ){
		
		List<CategoryVO> cateMidList = categoryService.getCateMid(Integer.parseInt(resultMap.get("cateMidCode")));
		
		return cateMidList;
	}
}
