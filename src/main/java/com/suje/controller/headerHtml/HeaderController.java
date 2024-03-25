package com.suje.controller.headerHtml;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {

	private static final Logger logger = LoggerFactory.getLogger(HeaderController.class);
	
	//멤버 메인페이지 이동
	@RequestMapping("memberMain.do")
	public String viewMemberMain() {
		return "redirect: index.jsp";
	}
	
	//스토어 메인페이지 이동
	@RequestMapping("storeMain.do")
	public String viewStoreMain() {
		return "storeAdmin/storeProfile";
	}
	
	//어드민 메인페이지 이동
	@RequestMapping("adminMain.do")
	public String viewAdminMain() {
		return "adminviews/adminmanage";
	}
	
	//헤더 페이지 이동
	@RequestMapping("{step}.do")
	public String viewPage(@PathVariable String step) {
		if(step.contains("main")) {
			return "main/"+step;
		} else {
			return "adminviews/"+step;
		}
	}
}
