package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class InsertCon implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String note_content = request.getParameter("note_content");
		String note_date = request.getParameter("note_date");
		String note_seq = request.getParameter("note_seq");
		String note_tag = request.getParameter("note_tag");
		String note_title = request.getParameter("note_title");
		String user_id = request.getParameter("user_id");
		
		// 2. DAO로 보내줄 데이터 하나로 묶기 - 생성자 없이 setter 메소드 활용해서 만들어주기!
		NoteDTO note = new NoteDTO();
		note.setNote_content(note_content);
		note.setNote_date(note_date);
		note.setNote_id(note_seq);
		note.setNote_tag(note_tag);
		note.setNote_title(note_title);
		note.setUser_id(user_id);

		NoteDAO n_dao = new NoteDAO();
		int row = n_dao.insert(note);

		
		// 여기는 아직 수정 전입니다--------------------------
		if (row > 0) {

			return "redirect:/SelectAll.do"; 

		} else {
			return "redirect:/Insert.do";
		}
	}
}
