package assignment;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DisplayEmployeeServlet")
public class DisplayEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();
		employee.setId(969143);
		employee.setName(request.getParameter("name"));
		employee.setGender(request.getParameter("gender"));
		try {
			employee.setDateOfBirth(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dateOfBirth")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		employee.setFulltime(request.getParameter("fulltime") == "Yes");
		employee.setDepartment(request.getParameter("branch"));
		employee.setSalary(Long.parseLong(request.getParameter("salary")));
		request.setAttribute("employee", employee);
//		response.sendRedirect("display-details.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("display-details.jsp");
		dispatcher.forward(request, response);
	}
}