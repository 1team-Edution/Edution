package com.smhrd.model;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;
import com.smhrd.model.TodoDTO;

public class TodoDAO {

private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	
	public int insert(TodoDTO dto) {
		int result = 0;
		System.out.println("insert 실행!");
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
		result = sqlSession.insert("com.smhrd.model.TodoDAO.TodoInsert", dto);
		sqlSession.close();}
		catch(Exception e) {System.out.println("insert실행 도중 문제 발생");
		System.out.println(dto.getReg_date());
		System.out.println(dto.getTodo_content());
		System.out.println(dto.getTodo_tag());
		}
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

	public ArrayList<TodoDTO> tagSearch(ArrayList<TodoDTO> todoDtos, String[] tags) {
		ArrayList<TodoDTO> list = new ArrayList<>();;
		int check=0;
		for(int i=0;i<todoDtos.size();i++) {
			check=0;
			String todotag = todoDtos.get(i).getTodo_tag();
			String[] taglist=todotag.split("#");
			for(int j = 0; j<tags.length;j++) {
				for(int k =0; k<taglist.length;k++) {
					if(tags[j].equals(taglist[k])) {check++;}	
				}
			}if(check==tags.length) {list.add(todoDtos.get(i));}
		}
		return list;
	}


}
