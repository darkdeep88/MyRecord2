package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.service.MemberService;
import com.example.demo.vo.MemberVO;

@Controller
public class loginConroller {

	@Autowired
	MemberService memberService;
	
	//index->login 화면 호출
	@RequestMapping("loginForm")
	public String login(Model model) {
		
		System.out.println("login 컨트롤러 불렀니?");
		model.addAttribute("name", "한국일");
		return "Login";
	}
	
	//로그인처리 -> main 페이지 이동
	@RequestMapping("login")
	public String login(MemberVO memberVO, RedirectAttributes rttr, HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO login = memberService.login(memberVO);
		System.out.println("로그인값 " + login);
		
		if(login == null) {
			//System.out.println(login);
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "Login";
		}else {
			//System.out.println("있으면 이게2실행?");
			session.setAttribute("member", login);
			//rttr.addFlashAttribute("memberVO", memberVO);
			return "Main";
		}	
		
	}
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		return "Login";
		
	}
	
	//회원가입폼 이동
	@RequestMapping("MemberJoinForm")
	public String memberJoin() {
		
		return "MemberJoinForm";
	}
	
	//회원가입
	@RequestMapping("memberJoin")
	public String memberJoin(MemberVO memberVO) {
	
		System.out.println(memberVO);
		
		memberService.MemberJoin(memberVO);
		System.out.println("회원가입완료");
		return "Login";
	}
	
}
