package com.smhrd.controller.note;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.NoteDTO;
import com.smhrd.controller.Controller;
import com.smhrd.model.NoteDAO;

public class NoteAjax implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		NoteDAO dao = new NoteDAO();
		ArrayList<NoteDTO> list = dao.selectAll();
		
		// JSON
		// " [{ \"key\" : \"value\", ...   }, ...  ]"
		// Gson
		Gson gson = new Gson();
		String json = gson.toJson(list);
		out.print(json);
		
		
		return null;
	}

	
	
}

