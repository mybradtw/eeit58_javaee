package tw.brad.eeit58;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad09")
@MultipartConfig(
		location = "C:\\Users\\user\\git\\repository2\\Web58\\src\\main\\webapp\\upload"
		)
public class Brad09 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String ip = request.getRemoteAddr();
		
		Collection<Part> parts = request.getParts();
		int i = 0;
		for (Part part : parts) {
			String name = part.getName();
			String type = part.getContentType();
			String subname = part.getSubmittedFileName();
			long size = part.getSize();
			//System.out.printf("%s : %s : %d\n", name, type, size);
			if (type != null && size > 0) {
				String fname = getFilenameV2(subname, ip, type, i++);
				System.out.println(fname);
				//part.write(fname);
			}
		}
	}
	
	
	private String getFilenameV2(String fname, String ip, String type, int i) {
		ip = ip.replace(':', '_');
		String[] temp = type.split("/");
		String sname = "." + temp[1];
		if (temp[0].equals("application") || temp[0].equals("text")) {
			if (fname.contains(".")) {
				String[] wname = fname.split("\\.");
				sname = "." + wname[wname.length-1];
			}else {
				sname = "";
			}
		}
		String saveName = ip + "_" + i + sname; 
		
		return saveName;
	}
	
}
