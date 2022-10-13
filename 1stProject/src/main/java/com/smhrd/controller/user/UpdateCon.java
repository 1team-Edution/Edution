package com.smhrd.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.controller.Controller;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;

public class UpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String savePath = request.getServletContext().getRealPath("resources/image");

		int maxSize = 1024 * 1024 * 5;

		String encoding = "EUC-KR";

		MultipartRequest multi = null;

		try {
			
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
			
		} catch (IOException e) {

			e.printStackTrace();
		}
		
		String user_photo = multi.getFilesystemName("user_photo");
		String user_pw = multi.getParameter("user_pw");
		String user_email = multi.getParameter("user_email");
		String user_nick = multi.getParameter("user_nick");
		String user_id = multi.getParameter("user_id");
		
		
		System.out.println(user_email);
		System.out.println(user_nick);
		System.out.println(user_pw);
		System.out.println(user_id);

		
		UserDTO dto = new UserDTO();
		dto.setUser_photo(user_photo);
		dto.setUser_pw(user_pw);
		dto.setUser_email(user_email);
		dto.setUser_nick(user_nick);
		dto.setUser_id(user_id);
		
		
		UserDAO dao = new UserDAO();
		int row = 0;

		if (user_photo == null) {
			
			 row = dao.user_update2(dto);
			
		}else {
		
			row = dao.user_update(dto);
		}
		
		
		
		UserDTO list = dao.selectlogin(dto);
		
		 try {
	         if(row>0) {
	        	 response.setContentType("text/html");
		            response.setCharacterEncoding("utf-8");
	        	 PrintWriter out = response.getWriter();
	        	 HttpSession session = request.getSession();
	             session.setAttribute("loginUser", list);
	        	 out.println("<script>alert('내용이 변경되었습니다.');location.href='http://localhost:8037/1stProject/Main.do';</script>");
		         out.flush();
		         out.close();
	            
	 
	            return null;

	         }
	         else {

	            response.setContentType("text/html");
	            response.setCharacterEncoding("utf-8");

	            PrintWriter out = response.getWriter();

	            out.println("<script>alert('제대로 작성되지 않았습니다. 다시작성해 주세요!');location.href='http://localhost:8037/1stProject/MyPageGo';</script>");
	            out.flush();
	            out.close();

	            return "LoginPage";
	         }

	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	         return "LoginPage";
	      }


		
		
		
		
		
	}

}
