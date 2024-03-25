package com.suje.controller.storeAdmin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.storeAdmin.StoreNoticeVO;
import com.suje.service.storeAdmin.StoreNoticeService;

@Controller
public class StoreNoticeController {

	private static final Logger logger = LoggerFactory.getLogger(StoreNoticeController.class);

	@Autowired
	StoreNoticeService noticeService;

	@RequestMapping(value = "storeNotice")
	public String storeNoitUrl33() {

		logger.info("storeNotice 메인 실행");
		System.out.println(" storeNotice 메인 실행");

		return "/storeAdmin/storeNotice";
	}

	/*
	 * @RequestMapping(value = "insertStoreNotiInfo", method = RequestMethod.POST)
	 * //@PostMapping(value = "storeNotiInsertPost") public String
	 * insertStoreNotiInfo(HttpSession session) {
	 * System.out.println("Post 방식으로 출력"); return "redirect:/storeNotiInfo.do"; }
	 */

	@RequestMapping(value = "storeNoticeListAll")
	public String storeNoticeListAll(@RequestParam("id") String id, StoreNoticeVO vo, Model model) {

		System.out.println("storeNoticeListAll 실행");
		
		vo.setS_id(id);
		
		System.out.println(id);

		List<StoreNoticeVO> list = noticeService.storeNoticeListAll(vo);
		model.addAttribute("StoreNoticeList", list);

		return "/storeAdmin/storeNotice";

	}

	@RequestMapping(value = "getNotiInfo")
	public String getNotiInfo(@RequestParam("notiNum") int notiNum, @RequestParam("id") String id, StoreNoticeVO vo, Model model) {

		System.out.println("getNotiInfo 실행");
		
		 
		vo.setNoti_code(notiNum);
		vo.setS_id(id);
		System.out.println(id);
		
		StoreNoticeVO getListVO = noticeService.getNotiInfo(vo);
		model.addAttribute("getListVO", getListVO);
	
		List<StoreNoticeVO> list = noticeService.storeNoticeListAll(vo);
	    model.addAttribute("StoreNoticeList", list);
		
		return "/storeAdmin/storeNotice";

	}

}
