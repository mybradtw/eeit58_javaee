package tw.brad.eeit58;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.Brad17;

@WebServlet("/Brad16")
public class Brad16 extends HttpServlet {
	private String view = null;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 1. 接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		String v = request.getParameter("view");
		
		if (v != null) {
			view = v;
		}else if (view == null){
			view = "view1";
		}
		
		// 2. 演算法 Brad17
		if (x != null && y != null) {
			try {
				Brad17 model = new Brad17(x, y, op);
				double result = model.calc();
				request.setAttribute("x", x);
				request.setAttribute("y", y);
				
				request.setAttribute("op1", op.equals("1")?"selected":"");
				request.setAttribute("op2", op.equals("2")?"selected":"");
				request.setAttribute("op3", op.equals("3")?"selected":"");
				request.setAttribute("op4", op.equals("4")?"selected":"");
				
				request.setAttribute("result", result +"");
				request.setAttribute("view", view!=null?view:"view1");
			}catch(Exception e) {
				request.setAttribute("x", "");
				request.setAttribute("y", "");
				
				request.setAttribute("op1", "");
				request.setAttribute("op2", "");
				request.setAttribute("op3", "");
				request.setAttribute("op4", "");
				
				request.setAttribute("result", "");
				request.setAttribute("view", "view1");
				System.out.println(e.toString());
			}
		}else {
			request.setAttribute("x", "");
			request.setAttribute("y", "");
			
			request.setAttribute("op1", "");
			request.setAttribute("op2", "");
			request.setAttribute("op3", "");
			request.setAttribute("op4", "");
			
			request.setAttribute("result", "");
			request.setAttribute("view", "view1");
		}
		
		// 3. 呈現 View
		RequestDispatcher dispatcher = request.getRequestDispatcher("Brad18");
		dispatcher.forward(request, response);
	
	}

}
