package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserDAO {

	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public int insert(UserDTO userDTO) {
		int result = 0;
	
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.insert("com.smhrd.model.UserDAO.insert", userDTO);
		sqlSession.close();
		return result;
	}

	
	
	public UserDTO selectlogin(UserDTO dto) {
		
		UserDTO list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		
		 
		list = sqlSession.selectOne("com.smhrd.model.UserDAO.selectlogin",dto);
		
		sqlSession.close();  

		//UserDTO user=list.getUser_id();
		
		return list;

	}
	
	public UserDTO  Naverlogin(UserDTO dto) {
		UserDTO list =null;
		System.out.println("여기는 메소드 + "+ dto.getUser_email());
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectOne("com.smhrd.model.UserDAO.Naverlogin",dto);
		System.out.println("여기는 리스트 + "+ list);
		sqlSession.close();  	
		return list;
	}
	
	
	public UserDTO emailSearch(UserDTO dto) {
		UserDTO result = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("emailSearch", dto);
		
		return result;
	}


	
	

	public UserDTO emailSame(UserDTO dto) {
		
		UserDTO result = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("com.smhrd.model.UserDAO.emailSame", dto);
	
		return result;
		
		
		
		
	}



	public UserDTO nickSame(UserDTO dto) {
		
		UserDTO result = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("nickSame", dto);
		System.out.println("메소드입니다"+result);
		return result;
	}



	public int deleteId(UserDTO dto) {
		
		int result = 0;
		System.out.println(dto.getUser_id());
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.delete("deleteId", dto);
		
		sqlSession.close();
		
		return result;
	}



	public int user_update(UserDTO dto) {
		int result = 0;
		System.out.println(dto.getUser_photo()); 
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.update("user_update", dto);
		
		sqlSession.close();
		
		return result;
	}

	
	public int user_update2(UserDTO dto) {
		
		int result = 0;
		System.out.println(dto.getUser_photo()); 
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.update("user_update2", dto);
		
		sqlSession.close();
		
		return result;
	}
	


	public int img_insert(UserDTO dto) {
		int result = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.insert("img_insert", dto);
		
		sqlSession.close();
		
		
		return result;
	}



	public UserDTO idSearch(UserDTO dto) {
		UserDTO result = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("idSearch", dto);
		
		sqlSession.close();
		
		
		return result;
	}



	public UserDTO LoginidSearch(UserDTO dto) {
		UserDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("LoginidSearch", dto);
		System.out.println("메소드"+result);
		sqlSession.close();
		
		return result;
	}



	public UserDTO LoginpwSearch(UserDTO dto) {
		UserDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		result = sqlSession.selectOne("LoginpwSearch", dto);
		System.out.println("메소드"+result);
		sqlSession.close();
		
		return result;
	}



	
	
	
	
}
