package com.smhrd.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class SelectAllCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		NoteDAO n_dao = new NoteDAO();
		ArrayList<NoteDTO> list = n_dao.selectAll();
		
		request.setAttribute("list", list);
		
		// 여기는 아직 수정 전입니다----------------
		return "main";
		
	}

}
