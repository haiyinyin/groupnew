package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.choice;
import controler.studentService;

/**
 * Servlet implementation class upadateCho
 */
@WebServlet("/upadateCho")
public class upadateCho extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upadateCho() {
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
		HttpSession  name = request.getSession(); 
		  String stu_name=(String)name.getAttribute("name");
		  
		    String choice1=request.getParameter("choice1");
			String choice2=request.getParameter("choice2");
			String choice3=request.getParameter("choice3");
			
		boolean result=new studentService().updateCho(choice1,choice2,choice3,stu_name);
		
		if(result){
			response.sendRedirect("choice.jsp");
		}
		
	}

}
