package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.SimpleToDoService;
import com.example.demo.vo.MemberVO;
import com.example.demo.vo.SimpleTodoVO;

@Controller
public class simpleTodoController {

	@Autowired
	SimpleToDoService simpletodoServie;
	
	
	//simpleBoard 페이지 호출
	@RequestMapping("simpleTodo")
	public String simpleTodo(Model model, MemberVO memberVO ) {
		
		System.out.println(memberVO);
		
		List<SimpleTodoVO> list = simpletodoServie.simpleToDoList();
		model.addAttribute("list", list);
		
		System.out.println("simpleBoard 호출 : " + list);
		
		return "simpleTodo"; 
	}
	
	//sinpleToDoList 추가
	@RequestMapping("insertTodo")
	public String insertTodo(SimpleTodoVO simpletodoVO) {
		
		System.out.println("insertToDo값 : " + simpletodoVO);
		
		simpletodoServie.insertToDo(simpletodoVO);
		
		return "redirect:simpleTodo";
	}
	
	//check 업데이트
	@RequestMapping("simpletodo_Update")
	public String simpletodo_Update(SimpleTodoVO simpletodoVO) {
		System.out.println("여기오니?");
		System.out.println("뭐지 값이 안오나? : " + simpletodoVO);
		
		simpletodoServie.simpletodo_Update(simpletodoVO);
		
		System.out.println("여긴 종료인데?");
		
		return "simpleTodo";
	}
}
