package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;

public class TodoDAO {

private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public TodoDAO() {
		// TODO Auto-generated constructor stub
	}

	public int insert(TodoDTO dto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.insert("com.smhrd.model.TodoDAO.insert", dto);
		sqlSession.close();
		return result;
	}

}
