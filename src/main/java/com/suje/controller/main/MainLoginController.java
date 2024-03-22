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
	
	//멤버 로그인
	@RequestMapping("mainMemberLogin.do")
	public String mainMemberLogin(MainLoginVO vo, HttpSession session, Model model) {
		System.out.println("멤버 로그인 컨트롤러 작동 >> "+vo.getM_id()+" / "+vo.getM_pass());
		MainLoginVO login = mainloginService.getMemberLogin(vo);
		if(login==null) {
			model.addAttribute("errorMessage", "아이디 혹은 비밀번호가 틀렸습니다.");
			return "main/mainLogin";
		}else {   
			session.setAttribute("mainId", login.getM_id());   
			return "redirect: index.jsp";
		}
	}
	//스토어 로그인
	@RequestMapping("mainStoreLogin.do")
	public String mainStoreLogin(MainLoginVO vo, HttpSession session, Model model) {
		System.out.println("스토어 로그인 컨트롤러 작동 >> "+vo.getS_id()+" / "+vo.getS_id());
		MainLoginVO login = mainloginService.getStoreLogin(vo);
		if(login==null) {
			model.addAttribute("errorMessage", "아이디 혹은 비밀번호가 틀렸습니다.");
			return "main/mainLogin";
		}else {   
			session.setAttribute("mainId", login.getS_id());   
			return "storeAdmin/storeProfile";
		}
	}
	//관리자 로그인
	@RequestMapping("mainAdminLogin.do")
	public String mainAdminLogin(MainLoginVO vo, HttpSession session, Model model) {
		System.out.println("어드민 로그인 컨트롤러 작동 >> "+vo.getMa_id()+" / "+vo.getMa_pass());
		MainLoginVO login = mainloginService.getAdminLogin(vo);
		if(login==null) {
			model.addAttribute("errorMessage", "아이디 혹은 비밀번호가 틀렸습니다.");
			return "main/mainLogin";
		}else {   
			session.setAttribute("mainId", login.getMa_id());   
			return "adminviews/admininfo";
		}
	}
	
	//멤버 회원가입
	@RequestMapping("newMember.do")
	public String newMember(MainLoginVO vo, Model model) {
		System.out.println("멤버 회원가입 컨트롤러 작동 >> "+vo.getM_id());
		mainloginService.getMemberSignup(vo);
		model.addAttribute("newMemberComple", "회원가입을 성공적으로 완료하였습니다.");
		return "main/mainLogin";
	}
	
	//로그아웃
    @RequestMapping("mainLogout.do")
    public String logout(HttpSession session) {
       session.removeAttribute("mainId");
       return "redirect: index.jsp";
    }
	
}
