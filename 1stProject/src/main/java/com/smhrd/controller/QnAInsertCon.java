package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.QnADAO;
import com.smhrd.model.QnADTO;

public class QnAInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String user_name = request.getParameter("user_name");
		String user_id = request.getParameter("user_id");
		String help_content = request.getParameter("help_content");
	
		System.out.println(help_content);
		System.out.println(user_name);
		System.out.println(user_id);
		
		QnADAO dao = new QnADAO();
		
		QnADTO dto = new QnADTO(user_id, user_name, help_content);
				
		int result = dao.insert(dto);
		
		if (result > 0) {
			return "redirect:/QnAInsertComplete.do";
		}else {
			System.out.println("입력실패");
			return "redirect:/QnAInsert.do";
		}
		
		
	}

}
