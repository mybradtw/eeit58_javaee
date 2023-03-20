package tw.brad.eeit58;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.BradUtils;

@WebServlet("/Brad18")
public class Brad18 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String x = (String)request.getAttribute("x");
		String y = (String)request.getAttribute("y");
		
		String op1 = (String)request.getAttribute("op1");
		String op2 = (String)request.getAttribute("op2");
		String op3 = (String)request.getAttribute("op3");
		String op4 = (String)request.getAttribute("op4");
		
		String result = (String)request.getAttribute("result");
		String view = (String)request.getAttribute("view");
		
		//---------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String content = BradUtils.loadView(view);
			out.printf(content, x, op1, op2, op3, op4, y, result);
		}catch (Exception e) {
			out.print("ERROR1");
		}
		
		response.flushBuffer();
	}

}
