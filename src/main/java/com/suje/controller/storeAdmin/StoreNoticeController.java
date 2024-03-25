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

import com.suje.domain.storeAdmin.StoreNotiInfoVO;
import com.suje.service.storeAdmin.StoreNoticeService;



@Controller
public class StoreNoticeController {


	private static final Logger logger = LoggerFactory.getLogger(StoreNoticeController.class);


	@Autowired
	StoreNoticeService noticeService;


	@RequestMapping(value = "storeNotice")
	public String storeNoitUrl33() {
		
		System.out.println(" storeNotice 메인 실행");

		return "/storeAdmin/storeNotice";
	}


	/*
	 * @RequestMapping(value = "insertStoreNotiInfo", method = RequestMethod.POST)
	 * //@PostMapping(value = "storeNotiInsertPost") 
	 * public String insertStoreNotiInfo(HttpSession session) {
	 * System.out.println("Post 방식으로 출력");
	 * return "redirect:/storeNotiInfo.do"; 
	 * }
	 */

	@RequestMapping(value = "selectStoreNotice", method = RequestMethod.POST)
	public String selectStoreNotice(@ModelAttribute("vo") StoreNotiInfoVO vo, Model model) {
		
		noticeService.selectStoreNotice(vo);
		model.addAttribute("listVO",vo);
		
		return "/storeAdmin/storeNotice"; 

	}
}
