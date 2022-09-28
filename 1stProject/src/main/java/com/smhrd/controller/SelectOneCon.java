package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class SelectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
			String note_seq = request.getParameter("note_seq"); // 간혹가다 다른 서버와 통칭할 때 _ 들어있으면 인식을 잘 못하는 경우 있음 주의!
		
			NoteDAO n_dao = new NoteDAO();
			NoteDTO note = n_dao.selectOne(note_seq); // 수집한 파라미터를 넘겨줘야! 그 데이터를 가지고 select구문 실행 가능!! 매개변수로 넘겨주세요!!
			
			request.setAttribute("note", note); // 객체바인딩!
			
			return "NoteContent";
		
	}

}
