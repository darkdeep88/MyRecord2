package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.SimpleTodoVO;

@Mapper
@Repository
public interface SimpleTodoDAO {

	void insertToDo(SimpleTodoVO simpletodoVO) throws DataAccessException;

	List<SimpleTodoVO> simpleToDoList(SimpleTodoVO simpletodoVO) throws DataAccessException;

	void simpletodo_Update(SimpleTodoVO simpletodoVO) throws DataAccessException;

	
	
}
