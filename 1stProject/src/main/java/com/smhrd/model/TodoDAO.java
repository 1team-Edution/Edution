package com.smhrd.model;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;
;

public class TodoDAO {

private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	
	public int insert(TodoDTO dto) {
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

	public int dragUpdate(String todonum, String reg_date) {
		int result = 0;
		TodoDTO dto = new TodoDTO();
		dto.setTodo_seq(todonum);
		dto.setReg_date(reg_date);
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
		result = sqlSession.update("com.smhrd.model.TodoDAO.dragUpdate", dto);}
		catch(Exception e){
		}
		sqlSession.close();
		return result;
		
	}

	public int editF(TodoDTO dto) {
		// futurelog 업데이트
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
		result = sqlSession.update("com.smhrd.model.TodoDAO.todoEditUpdateF", dto);}
		catch(Exception e){
			System.out.println("sql 문제 발생");
		}
		sqlSession.close();
		return result;
		}

	public int editT(TodoDTO dto) {
		// today, monthly 업데이트
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
		result = sqlSession.update("com.smhrd.model.TodoDAO.todoEditUpdateT", dto);}
		catch(Exception e){
			System.out.println("sql 문제 발생");
		}
		sqlSession.close();
		return result;
		}


}
