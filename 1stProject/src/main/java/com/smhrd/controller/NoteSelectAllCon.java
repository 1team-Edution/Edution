package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteSelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		response.setCharacterEncoding("UTF-8");
		NoteDAO dao = new NoteDAO();
		ArrayList<NoteDTO> list = dao.selectAll();
		
		request.setAttribute("list", list);
		
		// 여기는 아직 정확하지 않습니다--------
		return "NoteList";
		
	}

}
