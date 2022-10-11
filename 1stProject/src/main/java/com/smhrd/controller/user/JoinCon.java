package com.smhrd.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.controller.Controller;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;

public class JoinCon implements Controller {

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
		String user_id = multi.getParameter("user_id");
		String user_pw = multi.getParameter("user_pw");
		String user_name = multi.getParameter("user_name");
		String user_email = multi.getParameter("user_email");
		String user_nick = multi.getParameter("user_nick");
		
	

		  
			System.out.println(user_photo);
			System.out.println(user_id);
			System.out.println(user_pw);
			System.out.println(user_name);
			System.out.println(user_email);
			System.out.println(user_nick);
			
		
	if (user_id == null || user_pw == null || user_name== null || user_email==null || user_nick==null) {
			
		    return "Join.do";
					
		     }
		
		
		
		
		// null값 사진 저장
		if (user_photo == null) {

		    user_photo = "home-page.webp";
					
		     }
		
		System.out.println(user_id);
		System.out.println(user_photo);
		System.out.println(user_email);
		System.out.println(user_pw);
		
		/*
		 * String file = multi.getFilesystemName("file"); String user_type =
		 * multi.getParameter("user_type"); String user_sns =
		 * multi.getParameter("user_sns"); String user_templet =
		 * multi.getParameter("user_templet");
		 */

		
		

		

		
		
		
		
		UserDTO userDTO = new UserDTO();
		userDTO.setUser_id(user_id);
		userDTO.setUser_pw(user_pw);
		userDTO.setUser_name(user_name);
		userDTO.setUser_email(user_email);
		userDTO.setUser_nick(user_nick);
		userDTO.setUser_photo(user_photo);
		
		
		  UserDAO dao = new UserDAO(); 
		  
		 int row = dao.insert(userDTO);
		 
		System.out.println("여기는 로우 입니다."+row);
		try {
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");

			PrintWriter out = response.getWriter();
	
		  if (row > 0) {
			  
			  out.println("<script>alert('회원가입을 성공적으로 마쳤습니다');location.href='LoginPage.do';</script>");
				out.flush();
				out.close();
		  
		  return "LoginPage";
		  
		  }
		  
		  else { 
			  
			  
				out.println("<script>alert('회원가입에 실패 하셨습니다');location.href='Join.do';</script>");
				out.flush();
				out.close();

				

			 return "Join";
		  
		  }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "Join";
		}

		
	}

}
