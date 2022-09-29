package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.NoteDAO;

public class NoteDeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String note_seq = request.getParameter("note_seq");
		
		NoteDAO n_dao = new NoteDAO();
		int row = n_dao.delete(note_seq);
		
		// 여기는 아직 정확하지 않습니다--------
		if (row > 0) {
			
			return "redirect:/NoteSelectAll.do";

		} else {

			return "redirect:/NoteDelete.do";

		}

	}

}
