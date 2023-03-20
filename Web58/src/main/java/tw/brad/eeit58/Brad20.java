package tw.brad.eeit58;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad20")
public class Brad20 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String src = "C:\\Users\\user\\git\\repository2\\Web58\\src\\main\\webapp\\upload\\korea.png";
		
		BufferedImage bimg = ImageIO.read(new File(src));
		
		Graphics2D g2d = bimg.createGraphics();
		g2d.setColor(Color.RED);
		
		Font font = new Font(null, Font.BOLD + Font.ITALIC, 48);

		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(-30));
		Font font2 = font.deriveFont(tran);
		
		g2d.setFont(font2);
		
		g2d.drawString("資展國際", 100, 180);
		
		
		response.setContentType("image/jpeg");
		OutputStream outStream =  response.getOutputStream();
		ImageIO.write(bimg, "jpeg", outStream);
		
		FileOutputStream fout = new FileOutputStream("C:\\Users\\user\\git\\repository2\\Web58\\src\\main\\webapp\\upload\\test.jpg");
		ImageIO.write(bimg, "jpeg", fout);
		fout.flush();
		fout.close();
		
		response.flushBuffer();
	}

}
