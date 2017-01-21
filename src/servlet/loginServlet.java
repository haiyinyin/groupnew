package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controler.adminService;
import controler.studentService;
import model.admin;
import model.studentTable;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String identity=request.getParameter("identity");
		String stu="stu";
		String admin1="admin";
		//new student object and set property
		
		 HttpSession session = request.getSession();
		 session.setAttribute("name", name);
		 
		 
		if(identity.equals(stu)){
			studentTable student=new studentTable();
			student.setName(name);
			student.setPassword(password);
			 
			session.setAttribute("student", student);
		if(new studentService().valiStu(student)){
			response.sendRedirect("main.jsp");
			
		}
		else{
			response.sendRedirect("index.jsp");
		}}
		else{
			admin adminLog=new admin();
			adminLog.setName(name);
			adminLog.setPassword(password);
			
			if(new adminService().valiAdmin(adminLog)){
				response.sendRedirect("main_admin.jsp");
				
			}
			else{
				response.sendRedirect("index.jsp");
			}
		}
			
		
			
		}
	}


