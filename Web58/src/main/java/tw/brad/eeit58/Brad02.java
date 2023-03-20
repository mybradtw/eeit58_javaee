package tw.brad.eeit58;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad02")
public class Brad02 extends HttpServlet {
	private int i;
	
	public Brad02() {
		System.out.println("Brad02()");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		pw = pw.append("ok");
		pw = pw.append("ok2");
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("Brad02:doGet():" + i++);
	}

}
