package com.smhrd.controller.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Controller;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;

public class Account_deleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		
		
		String id = request.getParameter("list_id");
		
		
		System.out.println("입구"+id);
		
		UserDTO dto = new UserDTO();
		
		dto.setUser_id(id);
		
		UserDAO dao = new UserDAO();
		int row = dao.deleteId(dto);
		
		System.out.println("끝"+row);
		
		return "Index";
	
 
		
		
		
		
		
		
	}

}
