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

import com.suje.domain.storeAdmin.StoreNoticeVO;
import com.suje.service.storeAdmin.StoreNotiInfoService;



@Controller
public class StoreNotiInfoController {


	private static final Logger logger = LoggerFactory.getLogger(StoreNotiInfoController.class);


	@Autowired
	StoreNotiInfoService notiService;


	@RequestMapping(value = "storeNotiInfo")
	public String storeNoitUrl22() {

		System.out.println("storeNotiInfo 메인 실행");

		return "/storeAdmin/storeNotiInfo";
	}


	/*
	 * @RequestMapping(value = "insertStoreNotiInfo", method = RequestMethod.POST)
	 * //@PostMapping(value = "storeNotiInsertPost") 
	 * public String insertStoreNotiInfo(HttpSession session) {
	 * System.out.println("Post 방식으로 출력");
	 * return "redirect:/storeNotiInfo.do"; 
	 * }
	 */

	@RequestMapping(value = "insertStoreNotiInfo", method = RequestMethod.POST)
	public String insertStoreNotiInfo(@ModelAttribute("vo") StoreNoticeVO vo, Model model) {

		System.out.println("insertStoreNotiInfo 컨트롤러 실행1");
		
		System.out.println(vo.getNoti_content());
		System.out.println(vo.getNotit_code());
		
		notiService.insertStoreNotiInfo(vo);
		model.addAttribute("vo",vo);
		
		System.out.println("insertStoreNotiInfo 컨트롤러 실행2");
		
		return "redirect:/storeNotiInfo.do"; 

	}
}
