package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controler.adminService;
import model.university;

/**
 * Servlet implementation class addUni
 */
@WebServlet("/addUni")
public class addUni extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addUni() {
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
		
		String name=request.getParameter("uname");
		String country=request.getParameter("country");
		String city=request.getParameter("city");
		String major=request.getParameter("major");
		String time=request.getParameter("time");
		university uni=new university();
		
		uni.setU_name(name);
		uni.setCountry(country);
		uni.setCity(city);
		uni.setMajor(major);
		uni.setTime(time);
		
		if(new adminService().addUniversity(uni)){
			response.sendRedirect("modify.jsp");
			}
	}

}
