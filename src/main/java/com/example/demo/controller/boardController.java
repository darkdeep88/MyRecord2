package com.example.demo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.BoardService;
import com.example.demo.vo.BoardVO;

@Controller
public class boardController {

	@Autowired
	BoardService boardService;
	
	//일상등록 게시판 호출
	@RequestMapping("dailyBoard")
	public String dailyBoard(Model model) {
		
		List<BoardVO> list = boardService.boardList();
		model.addAttribute("list",list);		
		System.out.println("일상등록 게시판 호출  " + list);
		return "dailyBoard";
	}

	
	  //일상등록 insert 게시판 호출
	 @RequestMapping("dailyboard_InsertForm") 
	 public String dailyboard_InsertForm(BoardVO boardVO) { 
		System.out.println("dailyboard_insert 호출"); 
		return "dailyboard_Insert"; 
	 }
	 
	  //일상등록 update 게시판 호출
	 @RequestMapping("dailyboard_UpdateForm") 
	 public String dailyboard_UpdateForm(int no, Model model) {
		 System.out.println("dailyboard_updateForm 넘어온값 : " + no);
		
		BoardVO data = boardService.dailyboard_UpdateForm(no);
		System.out.println("dailyboard_updateForm 받아온값 : " + data);		
		
		model.addAttribute("data", data);
		return "dailyboard_Update"; 
	 }
	 
	 //일상등록 insert
	 @RequestMapping("dailyboard_Insert")
	 public String dailyboard_Insert(BoardVO boardVO) {
		 System.out.println("dailyboard_Insert 입력값" + boardVO);
		 System.out.println("스타트데이트 값 확인   " + boardVO.getStart_date());
		 boardService.dailyboard_Insert(boardVO);
		 
		 return "redirect:dailyBoard";

	 }
	 
	 //일상등록 delete
	 @RequestMapping("dailyboard_Delete")
	 public String dailyboard_Delete(BoardVO boardVO) {
		 System.out.println("dailyboard_Delete 입력값" + boardVO);
		 boardService.dailyboard_Delete(boardVO);
		 
		 return "redirect:dailyBoard";
		 
	 }
	 
	 //일상등록 Update
	 @RequestMapping("dailyboard_Update")
	 public String dailyboard_Update(BoardVO boardVO) {
		 System.out.println("dailyboard_Update 입력값" + boardVO);
		 
		 boardService.dailyboard_Update(boardVO);
		 
		 return "redirect:dailyBoard";
		 
	 }
	 

}
