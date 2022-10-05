package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.controller.Controller;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String file = null;
		
		String savePath = request.getServletContext().getRealPath("resources/test").trim();
		
		int maxSize = 1024 * 1024 * 5;
		
		String encoding = "UTF-8";
		
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		if(multi.getFilesystemName("file") != null) {
			
			 file = multi.getFilesystemName("file");
		} else {
			System.out.println("파일이 null 이에에요ㅠ");
		}
		
		
		
		
		
		String brd_title = multi.getParameter("brd_title");
		String brd_content = multi.getParameter("brd_content");
		int brd_likes = Integer.parseInt(multi.getParameter("brd_likes"));
		String user_id = multi.getParameter("user_id");
		
		
		System.out.println(file);
		System.out.println("제목" + brd_title);
		System.out.println("내용"+brd_content);
		System.out.println("id"+user_id);
		System.out.println("좋아요"+brd_likes);
		
		BoardDTO dto = new BoardDTO();
		dto.setBrd_title(brd_title);
		dto.setBrd_content(brd_content);
		dto.setBrd_likes(brd_likes+1);
		dto.setUser_id(user_id);
		dto.setBrd_file(file);
		BoardDAO dao = new BoardDAO();
		
		int result = dao.insert(dto);
		System.out.println("result 갯수" + result);
		if(result > 0) {
			System.out.println("게시글 입력완료");
			return "redirect:/BoardSelectAll.do";
			
		}else {
			System.out.println("게시글 입력실패");
			return "TestBoardInsert";
		}
	}

}

