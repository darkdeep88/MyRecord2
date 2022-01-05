package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.example.demo.dao.SimpleTodoDAO;
import com.example.demo.vo.SimpleTodoVO;

@Service
public class SimpleToDoService {

	@Autowired
	SimpleTodoDAO simpletodoDAO;

	public void insertToDo(SimpleTodoVO simpletodoVO) throws DataAccessException{
		simpletodoDAO.insertToDo(simpletodoVO);
		
	}

	public List<SimpleTodoVO> simpleToDoList() throws DataAccessException{
		return simpletodoDAO.simpleToDoList();
	}
	
}
