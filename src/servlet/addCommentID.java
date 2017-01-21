package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.comment;
import controler.studentService;

/**
 * Servlet implementation class addCommentID
 */
@WebServlet("/addCommentID")
public class addCommentID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCommentID() {
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
		int id=Integer.parseInt(request.getParameter("id"));
		String comment=request.getParameter("comment");
		
		boolean result=new studentService().addCommentID(comment,stu_name,id);
		if(result){
			response.sendRedirect("university-uni.jsp");
		}
		
	}

}
