package mvc.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.util.Controller;
import mvc.util.View;

public class IndexController implements Controller{
	
	@Override
	public View execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Debug >>> IndexController execute");
		
		// 컨트롤러의 기능 구현
		
		View view = new View();
		view.setResponseJsp("main.jsp");
		view.setFlag(true);
		return view;
		
	}
}
