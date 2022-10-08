package com.smhrd.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.reflection.SystemMetaObject;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;


@WebServlet("/emailCheckServlet")
public class emailCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		  
        System.out.println(email);
        
        UserDTO dto = new UserDTO();
		dto.setUser_email(email);
		
		UserDAO dao = new UserDAO();
		
		UserDTO userdto = dao.emailSearch(dto);
		
		
		
		PrintWriter out = response.getWriter();
		if(userdto != null) {	
			System.out.println(userdto.getUser_id());
			 out.print(userdto.getUser_id());
			
				
				
			} else {
				out.print("fail");
			}
        
		
		
		
		
		
	}

}
