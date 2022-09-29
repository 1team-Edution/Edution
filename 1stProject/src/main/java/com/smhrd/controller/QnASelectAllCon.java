package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.smhrd.model.QnADAO;
import com.smhrd.model.QnADTO;

public class QnASelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// QnA목록을 조회 해주는 Controller

		QnADAO qna = new QnADAO();

		ArrayList<QnADTO> list = qna.QnAselectAll();

		request.setAttribute("list", list);
		return "QnA조회 페이지";
	}

	

}
