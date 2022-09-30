package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.QnADAO;
import com.smhrd.model.QnADTO;

public class QnAInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String help_content = request.getParameter("help_content");
		
		System.out.println(user_id);
		System.out.println(user_name);
		System.out.println(help_content);

		
		QnADAO dao = new QnADAO();
		
		QnADTO dto = new QnADTO(user_id, help_content, user_name);
		
		int result = dao.insert(dto);
		
		if (result > 0) {
			return "redirect:/SelectAll.do";
		}else {
			return "redirect:/Insert.do";
		}
		
		
	}

}
