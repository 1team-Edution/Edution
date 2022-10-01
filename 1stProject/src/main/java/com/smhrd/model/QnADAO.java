package com.smhrd.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.controller.Controller;
import com.smhrd.database.SqlSessionManager;

public class QnADAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();
	
	public ArrayList<QnADTO> QnAselectAll() {
		
		ArrayList<QnADTO> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		
	list = (ArrayList)sqlSession.selectList("com.smhrd.model.QnADAO.QnAselectAll");
	
	sqlSession.close();
	
	return list;
			
	
	}
	
	public int insert(QnADTO dto) {

		int result = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		
		result = sqlSession.insert("com.smhrd.model.QnADAO.QnAInsert", dto);

		sqlSession.close();

		return result;
	}
	
	public int update(QnADTO qnadto) {
		
		int result = 0;
		
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		result = sqlsession.update("com.smhrd.model.QnADAO.QnAUpdate", qnadto);
		
		sqlsession.close();
		return result;
	}
	
	public int delete(String board_num) {
		
		int result = 0;
		
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		result = sqlsession.delete("com.smhrd.model.QnADAO.QnADelete", board_num);
		
		sqlsession.close();
		
		return result;
	}
	
	
}
