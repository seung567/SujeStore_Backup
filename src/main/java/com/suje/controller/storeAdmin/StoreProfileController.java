package com.suje.controller.storeAdmin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.storeAdmin.StoreProfileVO;
import com.suje.service.storeAdmin.StoreProfileService;

@Controller 
public class StoreProfileController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreProfileController.class);
	
    @Autowired
   StoreProfileService storeService;

    @RequestMapping(value="storeProfile")
    public String showStoreProfile(@RequestParam String id, Model model) {
        StoreProfileVO store = storeService.getStoreById(id);
        model.addAttribute("vo", store);
        return "/storeAdmin/storeProfile"; // �ش� JSP ���� �̸� ����
    }
    
    @RequestMapping(value="updateStoreProfile", method=RequestMethod.POST)
    public String updateStoreProfile(@ModelAttribute StoreProfileVO updatedStoreProfile) {
		storeService.updateStoreProfile(updatedStoreProfile); 
    	System.out.println(updatedStoreProfile.getS_id());
        return "redirect:/storeProfile.do?id=" + updatedStoreProfile.getS_id();
    }
}
    
