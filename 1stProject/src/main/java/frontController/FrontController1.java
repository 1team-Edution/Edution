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

import com.smhrd.controller.Controller;
import com.smhrd.controller.LoginPage;
import com.smhrd.controller.QnADeleteCon;
import com.smhrd.controller.QnAInsertCon;
import com.smhrd.controller.QnASelectAllCon;
import com.smhrd.controller.QnASelectOneCon;
import com.smhrd.controller.QnAUpdateCon;
import com.smhrd.controller.indexView;

@WebServlet("*.do")
public class FrontController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, Controller> mappings;
	
	public void init(ServletConfig config) throws ServletException {

		mappings = new HashMap<>();
		
		mappings.put("/indexView.do", new indexView());
		mappings.put("/LoginPage.do", new LoginPage());
		mappings.put("/QnASelectAll", new QnASelectAllCon());
		mappings.put("/QnASelectOne", new QnASelectOneCon());
		mappings.put("/QnAInsert", new QnAInsertCon());
		mappings.put("/QnAUpdate", new QnAUpdateCon());
		mappings.put("/QnADelete", new QnADeleteCon());
		
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
	
		nextView=con.execute(request, response);
		

		if(nextView.contains("redirect:/")) {

		
			response.sendRedirect(nextView.split(":/")[1]);
		}else {
			

			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/"+nextView+".jsp");		
			rd.forward(request, response);
		}
		
		
		
	}

}
