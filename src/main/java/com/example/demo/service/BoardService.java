package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.example.demo.dao.BoardDAO;
import com.example.demo.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	public void dailyboard_Insert(BoardVO boardVO) throws DataAccessException {
		boardDAO.dailyboard_Insert(boardVO);
	}

	public List<BoardVO> boardList() throws DataAccessException{
		return boardDAO.boardList();
	}

	//
	public void dailyboard_Delete(BoardVO boardVO) {
		boardDAO.dailyboard_Delete(boardVO);
		
	}
	
	//업데이트폼 불러올때 select
	public BoardVO dailyboard_UpdateForm(int no) {
		return boardDAO.dailyboard_UpdateForm(no);
		
	}

	public void dailyboard_Update(BoardVO boardVO) {
		boardDAO.dailyboard_Update(boardVO);
		
	}
	
}
