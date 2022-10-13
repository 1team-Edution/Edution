package com.smhrd.controller.QnA;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.smhrd.controller.Controller;
import com.smhrd.model.QnADAO;
import com.smhrd.model.QnADTO;

public class QnASelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}

		QnADAO qna = new QnADAO();

		ArrayList<QnADTO> list = qna.QnAselectAll();
		
		Gson gson = new Gson();
		String json = gson.toJson(list);
		
		out.print(json);
		return null;
	}

	

}
