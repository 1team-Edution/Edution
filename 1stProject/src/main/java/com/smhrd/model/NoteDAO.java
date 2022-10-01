package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class NoteDAO {
	
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<NoteDTO> selectAll(){
		ArrayList<NoteDTO> list = null;
		// 1. sqlsession 만들기
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		// 2. mapper.xml파일안에 있는 기능을 수행
		list = (ArrayList)sqlSession.selectList("com.smhrd.model.NoteDAO.selectAll");
		
		sqlSession.close();
		
		// 3. 결과값 반환
		return list;
	}
	public int insert(NoteDTO note) {
		int result = 0;
		// 1. sqlsession 가져오기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. sql구문 실행
		result = sqlSession.insert("com.smhrd.model.NoteDAO.insert", note);
		
		sqlSession.close();
		
		return result;
	}
	
	public NoteDTO selectOne(String note_seq){
		NoteDTO result = null;
		// 1. sqlsession 열어주기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 2. mapper.xml안에 있는 쿼리문 실행
		result = (NoteDTO)sqlSession.selectOne("com.smhrd.model.NoteDAO.select", note_seq);	
		// 3. 결과값 반환
		sqlSession.close();
		return result;
	}
	
	public int update(NoteDTO note) {
		int result = 0;
		
		// 1. SqlSession 빌려오기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. SQL문 골라서 실행시키기
		result = sqlSession.update("com.smhrd.model.NoteDAO.update", note);
		
		// 3. 빌린 Connection 돌려주기
		sqlSession.close();
		
		// 4. 실행결과 리턴
		return result;
	}
	
	public int delete(String note_seq) {
		int result = 0;
		
		// 1. SqlSession 빌려오기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 2. SQL문 찾아서 실행
		result = sqlSession.delete("com.smhrd.model.DAO.delete", note_seq);
		
		// 3. SqlSession 반환
		sqlSession.close();
		
		// 4. 실행결과 리턴
		return result;
	}
	
}
