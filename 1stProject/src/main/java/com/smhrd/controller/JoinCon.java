package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
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
			multi = new MultipartRequest(
					request, 
					savePath,
					maxSize,
					encoding,
					new DefaultFileRenamePolicy() 

					);
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		
		
		
		
		
		String user_id = multi.getParameter("user_id");
		String user_pw = multi.getParameter("user_pw");
		String user_name = multi.getParameter("user_name");
		String user_email = multi.getParameter("user_email");
		String user_nick = multi.getParameter("user_nick");
		String user_photo = multi.getFilesystemName("user_photo");
		String user_type= multi.getParameter("user_type");
		String user_sns= multi.getParameter("user_sns");
		String user_templet= multi.getParameter("user_templet");
		
		
		System.out.println(user_id);
		System.out.println(user_pw);
		
		// 사진 저장안하면 오류가 나기 때문에 썼습니다.
		if (user_photo == null) {
			
			user_photo = "사진없음";
		}
		
		
		
		
		
		
		
		UserDTO userDTO = new UserDTO();
		userDTO.setUser_id(user_id);
		userDTO.setUser_pw(user_pw);
		userDTO.setUser_name(user_name);
		userDTO.setUser_email(user_email);
		userDTO.setUser_nick(user_nick);
		userDTO.setUser_photo(user_photo);
		userDTO.setUser_type(user_type);
		userDTO.setUser_sns(user_sns);
		userDTO.setUser_templet(user_templet);
		
		
		
		
		UserDAO dao = new UserDAO();
		int row = dao.insert(userDTO);
		
		if(row>0) { 
		 
		return "redirect:/Main.jsp";		
		}
		
		else {
			return "redirect:/Join.jsp";
			
		}
	}

}
