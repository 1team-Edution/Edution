package com.smhrd.controller.todo;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.smhrd.controller.Controller;
import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;
import com.smhrd.model.UserDTO;

public class GoMain implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//userdto 받아서 tododto 객체바인딩하고 메인으로가는 controller
		HttpSession session = request.getSession();
		UserDTO userDto = (UserDTO) session.getAttribute("loginUser");
		TodoDAO dao = new TodoDAO();
		String id=userDto.getUser_id();

		ArrayList<TodoDTO> todoDtos = dao.callTodo(id);
		session.setAttribute("todolist", todoDtos);
	

		return "Main.html";
	}

}
