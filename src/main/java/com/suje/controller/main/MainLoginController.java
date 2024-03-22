package com.suje.controller.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suje.domain.main.MainLoginVO;
import com.suje.service.main.MainLoginService;

@Controller
public class MainLoginController {
	
	@Autowired
	private MainLoginService mainloginService;
	
	//��� �α���
	@RequestMapping("mainMemberLogin.do")
	public String mainMemberLogin(MainLoginVO vo, HttpSession session, Model model) {
		System.out.println("��� �α��� ��Ʈ�ѷ� �۵� >> "+vo.getM_id()+" / "+vo.getM_pass());
		MainLoginVO login = mainloginService.getMemberLogin(vo);
		if(login==null) {
			model.addAttribute("errorMessage", "���̵� Ȥ�� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			return "main/mainLogin";
		}else {   
			session.setAttribute("mainId", login.getM_id());   
			return "redirect: index.jsp";
		}
	}
	//����� �α���
	@RequestMapping("mainStoreLogin.do")
	public String mainStoreLogin(MainLoginVO vo, HttpSession session, Model model) {
		System.out.println("����� �α��� ��Ʈ�ѷ� �۵� >> "+vo.getS_id()+" / "+vo.getS_id());
		MainLoginVO login = mainloginService.getStoreLogin(vo);
		if(login==null) {
			model.addAttribute("errorMessage", "���̵� Ȥ�� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			return "main/mainLogin";
		}else {   
			session.setAttribute("mainId", login.getS_id());   
			return "storeAdmin/storeProfile";
		}
	}
	//������ �α���
	@RequestMapping("mainAdminLogin.do")
	public String mainAdminLogin(MainLoginVO vo, HttpSession session, Model model) {
		System.out.println("���� �α��� ��Ʈ�ѷ� �۵� >> "+vo.getMa_id()+" / "+vo.getMa_pass());
		MainLoginVO login = mainloginService.getAdminLogin(vo);
		if(login==null) {
			model.addAttribute("errorMessage", "���̵� Ȥ�� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			return "main/mainLogin";
		}else {   
			session.setAttribute("mainId", login.getMa_id());   
			return "adminviews/admininfo";
		}
	}
	
	//��� ȸ������
	@RequestMapping("newMember.do")
	public String newMember(MainLoginVO vo, Model model) {
		System.out.println("��� ȸ������ ��Ʈ�ѷ� �۵� >> "+vo.getM_id());
		mainloginService.getMemberSignup(vo);
		model.addAttribute("newMemberComple", "ȸ�������� ���������� �Ϸ��Ͽ����ϴ�.");
		return "main/mainLogin";
	}
	
	//�α׾ƿ�
    @RequestMapping("mainLogout.do")
    public String logout(HttpSession session) {
       session.removeAttribute("mainId");
       return "redirect: index.jsp";
    }
	
}
