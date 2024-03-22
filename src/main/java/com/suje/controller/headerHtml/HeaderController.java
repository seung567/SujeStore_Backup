package com.suje.controller.headerHtml;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {

	private static final Logger logger = LoggerFactory.getLogger(HeaderController.class);
	
	//��� ���������� �̵�
	@RequestMapping("memberMain.do")
	public String viewMemberMain() {
		return "redirect: index.jsp";
	}
	
	//����� ���������� �̵�
	@RequestMapping("storeMain.do")
	public String viewStoreMain() {
		return "storeAdmin/storeProfile";
	}
	
	//���� ���������� �̵�
	@RequestMapping("adminMain.do")
	public String viewAdminMain() {
		return "adminviews/admininfo";
	}
	
	//��� ������ �̵�
	@RequestMapping("{step}.do")
	public String viewPage(@PathVariable String step) {
		return "main/"+step;
	}
	
}
