package com.suje.controller.storeAdmin;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.category.CategoryVO;
import com.suje.domain.storeAdmin.StoreProfileVO;
import com.suje.service.category.CategoryMainService;
import com.suje.service.storeAdmin.StoreProfileService;

@Controller 
public class StoreProfileController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreProfileController.class);
	
    @Autowired
   StoreProfileService storeService;
    @Autowired
   CategoryMainService categoryService;
    
    @RequestMapping(value="storeProfile")
    public String showStoreProfile(@RequestParam String id, Model model) {
    	logger.info("Controller 실행 showStoreProfile");
        StoreProfileVO store = storeService.getStoreById(id);
        List<CategoryVO> cateMainList = categoryService.getCateMain();
        
        model.addAttribute("vo", store);
        model.addAttribute("cateMain", cateMainList);
        
        return "/storeAdmin/storeProfile"; 
    }
    
    @RequestMapping(value="updateStoreProfile", method=RequestMethod.POST)
    public String updateStoreProfile(@ModelAttribute StoreProfileVO updatedStoreProfile) {
    	logger.info("Controller 실행 updateStoreProfile");
		storeService.updateStoreProfile(updatedStoreProfile); 
        return "redirect:/storeProfile.do?id=" + updatedStoreProfile.getS_id();
    }
    
    @RequestMapping(value="cateSubCode", method=RequestMethod.POST)
    @ResponseBody
    public List<CategoryVO> getCateSubList(@RequestParam Map<String, String> CodeMap){
   	
    	logger.info("Controller 실행 updateStoreProfile = {}",CodeMap);
    	List<CategoryVO> cateSub = categoryService.getCateSub(Integer.parseInt(CodeMap.get("cateMidCode")));
    	return cateSub;

    }
    
    
    
}
    
