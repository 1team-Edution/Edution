package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardSelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO dao = new BoardDAO();
		
		ArrayList<BoardDTO> list =  dao.selectAll();
		
		System.out.println(list.get(0));		
		request.setAttribute("list", list);
		
		return "redirect:/TestBoardList.jsp";
	}

}
