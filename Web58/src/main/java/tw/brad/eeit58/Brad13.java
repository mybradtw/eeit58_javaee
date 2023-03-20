
package tw.brad.eeit58;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.api.Bike;

@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	private Bike b1 = new Bike();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String x = request.getParameter("x");
		RequestDispatcher dispatcher = null;
		if (x!=null) {
			dispatcher = 
				request.getRequestDispatcher(x.equals("brad")?"Brad14":"Brad15");
		}
		
		b1.upSpeed(); b1.upSpeed(); b1.upSpeed(); b1.upSpeed();
		System.out.println(b1.getSpeed());
		
		request.setAttribute("b1", b1);
		
		
		//------------
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("Hello, Brad13<br />");
		out.print("<hr />");
		out.print("I am Brad13");
		if (dispatcher!= null) dispatcher.forward(request, response);
		out.print("<hr />");
		out.print("Copyeight....");
 
	
	}

}
