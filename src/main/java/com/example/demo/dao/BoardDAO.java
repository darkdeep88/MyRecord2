package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.BoardVO;

@Mapper
@Repository
public interface BoardDAO {

	public void dailyboard_Insert(BoardVO boardVO) throws DataAccessException;

	public List<BoardVO> boardList() throws DataAccessException;

	public void dailyboard_Delete(BoardVO boardVO) throws DataAccessException;

	public BoardVO dailyboard_UpdateForm(int no) throws DataAccessException;

	public void dailyboard_Update(BoardVO boardVO) throws DataAccessException;
}
