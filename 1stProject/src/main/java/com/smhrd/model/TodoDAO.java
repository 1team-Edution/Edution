package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

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
	
	public ArrayList<TodoDTO> selectyn () {
		ArrayList<TodoDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.TodoDAO.selectyn");
		
		
		sqlSession.close();
		return list;
		
		
	}

	public int edit(String todonum) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.update("com.smhrd.model.TodoDAO.update", todonum);
		sqlSession.close();
		return result;
	}

	public int check(String todonum) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result =sqlSession.update("com.smhrd.model.TodoDAO.updateCheck", todonum);
		sqlSession.close();
		return result;
	}

	public int delete(String todonum) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result = sqlSession.delete("com.smhrd.model.TodoDAO.TodoDelete", todonum);
		sqlSession.close();
		return result;
	}

	public int checkundo(String todonum) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		result =sqlSession.update("com.smhrd.model.TodoDAO.updateUndo", todonum);
		sqlSession.close();
		return result;
	}

}
