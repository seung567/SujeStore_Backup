package com.suje.controller.storeAdmin;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class StoreNotiController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(StoreNotiController.class);
	
	
	@RequestMapping(value = "storeNotiInfo")
	public String storeNoitUrl22() {
		
		System.out.println("메인 실행");
		
		return "/storeAdmin/storeNotiInfo";
	}
	
	
	@RequestMapping(value = "storeNotiInsert",method = RequestMethod.POST)
	//@PostMapping(value = "storeNotiInsertPost")
	public String storeNotiInsert(HttpSession session) {
		
		System.out.println("Post 방식으로 출력");
		
		return "redirect:/storeNotiInfo.do";
	}
}
