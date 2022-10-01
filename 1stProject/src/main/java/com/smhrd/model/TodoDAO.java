package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;
;

public class TodoDAO {

private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	
	public int insert(TodoDTO dto) {
		System.out.println("todoDao.insert 실행");
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.insert("com.smhrd.model.TodoDAO.todoInsert", dto);
		sqlSession.close();
		return result;
	}

	public ArrayList<TodoDTO> callTodo(String id) {
		ArrayList<TodoDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList) sqlSession.selectList("com.smhrd.model.TodoDAO.TodoSelect", id);
		sqlSession.close();
		return list;
		
	}

}
