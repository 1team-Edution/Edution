package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO  {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();

	public int insert(BoardDTO dto) {

		int result = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		
		result = sqlSession.insert("com.smhrd.model.BoardDAO.BoardInsert", dto);

		sqlSession.close();

		return result;
	}
	public ArrayList<BoardDTO> selectAll() {
		ArrayList<BoardDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.BoardDAO.BoardselectAll");
		
		sqlSession.close();
		
		return list;
	}
	
}
