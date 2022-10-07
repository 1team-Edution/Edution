package frontController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.NoteAjaxSelectone;
import com.smhrd.controller.Controller;
import com.smhrd.controller.indexView;
import com.smhrd.controller.QnA.GoQnACon;
import com.smhrd.controller.QnA.QnADeleteCon;
import com.smhrd.controller.QnA.QnAInsertCompleteCon;
import com.smhrd.controller.QnA.QnAInsertCon;
import com.smhrd.controller.QnA.QnASelectAllCon;
import com.smhrd.controller.QnA.QnASelectOneCon;
import com.smhrd.controller.QnA.QnAUpdateCon;
import com.smhrd.controller.board.BoardInsertCon;
import com.smhrd.controller.board.BoardSelectAllCon;
import com.smhrd.controller.note.NoteAjax;
import com.smhrd.controller.note.NoteAjaxInsert;
import com.smhrd.controller.note.NoteDeleteCon;
import com.smhrd.controller.note.NoteGoInsertCon;
import com.smhrd.controller.note.NoteInsertCon;
import com.smhrd.controller.note.NoteSelectAllCon;
import com.smhrd.controller.note.NoteSelectOneCon;
import com.smhrd.controller.note.NoteUpdateCon;
import com.smhrd.controller.todo.GoMain;
import com.smhrd.controller.todo.TodoAjax;
import com.smhrd.controller.todo.TodoCheckCon;
import com.smhrd.controller.todo.TodoCheckCon2;
import com.smhrd.controller.todo.TodoCon;
import com.smhrd.controller.todo.TodoDeleteCon;
import com.smhrd.controller.user.GoJoinCon;
import com.smhrd.controller.user.JoinCon;
import com.smhrd.controller.user.LoginPage;
import com.smhrd.controller.user.PopmypageCon;



@WebServlet("*.do")
public class FrontController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {

		mappings = new HashMap<>();
		
		mappings.put("/indexView.do", new indexView());
		mappings.put("/LoginPage.do", new LoginPage());
		mappings.put("/GoJoin.do", new GoJoinCon());
		mappings.put("/Join.do", new JoinCon());
		mappings.put("/GoQnA.do", new GoQnACon());
		
		//QnA mappings
		mappings.put("/QnASelectAll.do", new QnASelectAllCon());
		mappings.put("/QnASelectOne.do", new QnASelectOneCon());
		mappings.put("/QnAInsert.do", new QnAInsertCon());
		mappings.put("/QnAInsertComplete.do", new QnAInsertCompleteCon());
		mappings.put("/QnAUpdate.do", new QnAUpdateCon());
		mappings.put("/QnADelete.do", new QnADeleteCon());

		// Todo mappings

		mappings.put("/Todo.do", new TodoCon());
		mappings.put("/TodoCheck.do", new TodoCheckCon());
		mappings.put("/TodoCheck2.do", new TodoCheckCon2());
		mappings.put("/TodoDelete.do", new TodoDeleteCon());
		mappings.put("/Main.do", new GoMain());
		

		mappings.put("/TodoAjax.do", new TodoAjax());
		
		
		// Note mappings

		mappings.put("/NoteSelectAll.do", new NoteSelectAllCon());
		mappings.put("/NoteSelectOne.do", new NoteSelectOneCon());
		mappings.put("/NoteInsert.do", new NoteInsertCon());
		mappings.put("/NoteUpdate.do", new NoteUpdateCon());
		mappings.put("/NoteDelete.do", new NoteDeleteCon());

		mappings.put("/NoteGoInsert.do", new NoteGoInsertCon());
		mappings.put("/NoteAjax.do", new NoteAjax());

		mappings.put("/MypageView.do", new PopmypageCon());

		
		// Board mappings
		mappings.put("/BoardInsert.do", new BoardInsertCon());
		mappings.put("/BoardSelectAll.do", new BoardSelectAllCon());
		


		mappings.put("/NoteAjaxInsert.do", new NoteAjaxInsert());
		mappings.put("/NoteAjaxSelectone.do", new NoteAjaxSelectone());
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url=request.getRequestURI();
		
		
		String cpath=request.getContextPath();
		
		String command = url.substring( cpath.length() ); 
		
		
		String nextView=null;
		Controller con = null;
		
		// 요청을 구분해서 각각의 기능을 실행
		// HashMap 안에 있는 pojo 꺼내기
		// HashMap.get(Key);
		con = mappings.get(command);
	
		nextView = con.execute(request, response);
		
		
		
		if(nextView != null) {
		

			if(nextView.contains("html")) {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/"+nextView);		
				rd.forward(request, response);
			
			}
			else if(nextView.contains("redirect:/")) {
		
				response.sendRedirect(nextView.split(":/")[1]);
			
			}else {
			
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/"+nextView+".jsp");		
				rd.forward(request, response);
			}
		
		
		
		}
		}
	}
