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
import com.smhrd.controller.board.BoardGetJsonCon;
import com.smhrd.controller.board.BoardInsertCon;
import com.smhrd.controller.board.BoardSelectAllCon;
import com.smhrd.controller.board.GoBoardCon;
import com.smhrd.controller.board.GoBoardInsertCon;
import com.smhrd.controller.note.NoteAjax;
import com.smhrd.controller.note.NoteAjaxInsert;
import com.smhrd.controller.note.NoteAjaxParentInsert;
import com.smhrd.controller.note.NoteAjaxUpdate;
import com.smhrd.controller.note.NoteDeleteCon;
import com.smhrd.controller.note.NoteGoInsertCon;
import com.smhrd.controller.todo.GoMain;
import com.smhrd.controller.todo.TodoAjax;
import com.smhrd.controller.todo.TodoCheckCon;
import com.smhrd.controller.todo.TodoCheckCon2;
import com.smhrd.controller.todo.TodoCon;
import com.smhrd.controller.todo.TodoDeleteCon;
import com.smhrd.controller.todo.TodoDragCon;
import com.smhrd.controller.todo.TodoEditCon;
import com.smhrd.controller.todo.TodoTagSearchCon;
import com.smhrd.controller.user.Account_deleteCon;
import com.smhrd.controller.user.GoJoinCon;
import com.smhrd.controller.user.JoinCon;
import com.smhrd.controller.user.LoginCon;
import com.smhrd.controller.user.LoginPage;
import com.smhrd.controller.user.MyPageGo;
import com.smhrd.controller.user.Naver_callback;
import com.smhrd.controller.user.NaverloginCon;
import com.smhrd.controller.user.PopmypageCon;
import com.smhrd.controller.user.UpdateCon;



@WebServlet("*.do")
public class FrontController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {

		mappings = new HashMap<>();
		
		//User mappings
		mappings.put("/indexView.do", new indexView());
		mappings.put("/LoginPage.do", new LoginPage());
		mappings.put("/GoJoin.do", new GoJoinCon());
		mappings.put("/Join.do", new JoinCon());
		mappings.put("/Login.do", new LoginCon());
		mappings.put("/LoginPage.do", new LoginPage());
		mappings.put("/Naver_callback.do", new Naver_callback());
		mappings.put("/NaverloginCon.do", new NaverloginCon());
		mappings.put("/Account_delete.do", new Account_deleteCon());
		mappings.put("/UpdateCon.do", new UpdateCon());
		mappings.put("/MyPageGo.do", new MyPageGo());
		
		//QnA mappings
		mappings.put("/QnASelectAll.do", new QnASelectAllCon());
		mappings.put("/QnASelectOne.do", new QnASelectOneCon());
		mappings.put("/QnAInsert.do", new QnAInsertCon());
		mappings.put("/QnAInsertComplete.do", new QnAInsertCompleteCon());
		mappings.put("/QnAUpdate.do", new QnAUpdateCon());
		mappings.put("/QnADelete.do", new QnADeleteCon());
		mappings.put("/GoQnA.do", new GoQnACon());
		

		// Todo mappings

		mappings.put("/Todo.do", new TodoCon());
		mappings.put("/TodoCheck.do", new TodoCheckCon());
		mappings.put("/TodoCheck2.do", new TodoCheckCon2());
		mappings.put("/TodoDelete.do", new TodoDeleteCon());
		mappings.put("/TodoEdit.do", new TodoEditCon());
		mappings.put("/TodoDrag.do", new TodoDragCon());
		mappings.put("/TodoTagSearch.do", new TodoTagSearchCon());
		mappings.put("/Main.do", new GoMain());
		

		mappings.put("/TodoAjax.do", new TodoAjax());
		
		
		// Note mappings

		mappings.put("/NoteDelete.do", new NoteDeleteCon());
		mappings.put("/Main.do", new GoMain());
		mappings.put("/NoteGoInsert.do", new NoteGoInsertCon());
		mappings.put("/NoteAjax.do", new NoteAjax());
		mappings.put("/NoteAjaxUpdate.do", new NoteAjaxUpdate());
		mappings.put("/NoteAjaxInsert.do", new NoteAjaxInsert());
		mappings.put("/NoteAjaxSelectone.do", new NoteAjaxSelectone());
		mappings.put("/NoteAjaxParentInsert.do", new NoteAjaxParentInsert());

		mappings.put("/MypageView.do", new PopmypageCon());

		
		// Board mappings
		mappings.put("/BoardInsert.do", new BoardInsertCon());
		mappings.put("/BoardSelectAll.do", new BoardSelectAllCon());
		mappings.put("/BoardGetJson.do", new BoardGetJsonCon());
		mappings.put("/GoBoard.do", new GoBoardCon());
		mappings.put("/GoBoardInsert.do", new GoBoardInsertCon());
		


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
