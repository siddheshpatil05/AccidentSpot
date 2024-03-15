package servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.dbhandler;

/**
 * Servlet implementation class addofficer
 */
public class addofficer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addofficer() {
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
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		long mobile=Long.parseLong(request.getParameter("mobile"));
		
		String address=request.getParameter("address");
		String password=request.getParameter("password");
		
		
		Connection con=dbhandler.GetConnect();
		System.out.println("connected");
		
		try
		{
		    PreparedStatement stmt=con.prepareStatement("insert into tmoinfo values(?,?,?,?,?,?)");   
		   
		 
		    		stmt.setString(1,id); 
		    		stmt.setString(2,name);
		  		    stmt.setString(3,email);
		  		    stmt.setLong(4,mobile);
		  		    stmt.setString(5,address);
		  		    stmt.setString(6,password);
		  		
		  		    int i = stmt.executeUpdate();
		    		System.out.println(i+" records inserted");  
		    		request.getSession().setAttribute("msg", "officer register Successfully");
		    		response.sendRedirect("addofficer.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}

}
