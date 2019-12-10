package assignment;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	PrintWriter writer = response.getWriter();
	//	response.setContentType("text/plain");
	//	writer.print("<h1>Hello World!</h1>");
		
		response.setHeader("Content-Disposition", "attachment;filename=file.txt");
		ServletContext context=getServletContext();
		InputStream stream=context.getResourceAsStream("hello.txt");
		OutputStream outputStream=response.getOutputStream();
		int x=0;
		while((x=stream.read())!=-1){
			outputStream.write(x);
		}
	}
}