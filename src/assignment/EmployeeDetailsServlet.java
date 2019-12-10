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

@WebServlet("/EmployeeDetailsServlet")
public class EmployeeDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();
		employee.setId(969143);
		employee.setName("John");
		employee.setGender("Male");
		try {
			employee.setDateOfBirth(new SimpleDateFormat("dd/MM/yyyy").parse("08/07/1987"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		employee.setFulltime(true);
		String departments[]={"Civil", "Computer Science", "Electronics and Communication", "Electronics and Electrical", "Information Technology", "Mechanical"};
		employee.setDepartment(departments[4]);
		employee.setSalary(120000);
		
		request.setAttribute("employee", employee);
		request.setAttribute("departments", departments);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-employee.jsp");
		dispatcher.forward(request, response);
	}
}