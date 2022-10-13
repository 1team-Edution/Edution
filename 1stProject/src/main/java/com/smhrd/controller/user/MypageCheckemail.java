package com.smhrd.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;


@WebServlet("/MypageCheckemail")
public class MypageCheckemail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//이메일
		response.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		  
        System.out.println("여기는 이메일서블릿 : " + email);
        
        UserDTO dto = new UserDTO();
		dto.setUser_email(email);;
		
		UserDAO dao = new UserDAO();
		
		UserDTO result = dao.emailSame(dto);
		
		
		
		PrintWriter out = response.getWriter();
		if(result != null) {	
			 System.out.println("하나라도 있다."+result.getUser_email());
			 out.print(result.getUser_email());
				
				
			} else {
				System.out.println("하나도 없어"+result);
				out.print("success");
				
			}
        
		
		
		
		
	}

}
