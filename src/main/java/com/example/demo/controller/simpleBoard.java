package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class simpleBoard {

	//simpleBoard 페이지 호출
	@RequestMapping("simpleBoard")
	public String simpleBoard() {
		
		System.out.println("simpleBoard 호출");
		
		return "simpleBoard"; 
	}
}
