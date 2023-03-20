package tw.brad.eeit58;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad08")
@MultipartConfig(
		location = "C:\\Users\\user\\git\\repository2\\Web58\\src\\main\\webapp\\upload"
		)
public class Brad08 extends HttpServlet {
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		Part part = request.getPart("upload");
		String name = part.getName();
		String sname = part.getSubmittedFileName();
		long size = part.getSize();
		String type = part.getContentType();
		System.out.printf("%s : %s : %s : %d\n", name, sname, type, size);
	
		part.write(sname);
		
	}

}
