package tw.brad.eeit58;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad10")
public class Brad10 extends HttpServlet {
    public Brad10() {
    	System.out.println("Brad10()");
    }

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
    	System.out.println("Brad10:service1");
		super.service(req, res);
    	System.out.println("Brad10:service2");
	}

	@Override
	public void init() throws ServletException {
		super.init();
    	System.out.println("Brad10:init()");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
    	System.out.println("Brad10:init(config)");
	}



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("Brad10:doGet()");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("Brad10:doPost()");
	}

}
