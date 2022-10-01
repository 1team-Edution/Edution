package com.smhrd.model;

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
}
