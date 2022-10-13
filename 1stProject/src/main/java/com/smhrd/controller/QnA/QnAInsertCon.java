package com.smhrd.controller.QnA;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.QnADAO;
import com.smhrd.model.QnADTO;
import com.smhrd.model.UserDTO;

public class QnAInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String help_title = request.getParameter("help_title");
		String user_id = request.getParameter("user_id");
		String help_content = request.getParameter("help_content");

		System.out.println(help_content);
		System.out.println(help_title);
		System.out.println(user_id);

		QnADAO dao = new QnADAO();

		QnADTO dto = new QnADTO();

		
		try {
			
			
			response.setContentType("text/html; charset=EUC-KR");
			if(user_id != dto.getUser_id()) {
				System.out.println("없는 아이디");
				PrintWriter out = response.getWriter();
				out.println("<script language=javascript> alert('부적절한 아이디가 입력됨')</script>");
				
				out.flush();
			}
			} catch (Exception e) {

				e.printStackTrace();
			}
		
		

		dto.setHelp_content(help_content);
		dto.setUser_id(user_id);
		dto.setHelp_title(help_title);

		int result = dao.insert(dto);

		if (result > 0) {
			System.out.println("데이터 보내기 성공");
			return "redirect:/GoQnA.do";
		} else {
			System.out.println("입력실패");
			return "redirect:/QnAInsert.do";
		}

	}
	
	

}
