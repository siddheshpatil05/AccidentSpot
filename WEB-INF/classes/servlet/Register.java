package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.dbhandler;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
				PrintWriter out=response.getWriter();
				Connection con= dbhandler.GetConnect();
				response.setContentType("text/html");
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String password=request.getParameter("pass");
				String address=request.getParameter("address");
				String phone=request.getParameter("phone");
				
				int id=0;
				//String phone=request.getParameter("phone");
				  try{
						    	 String sql="insert into register(name,phone,email,pass,address) values('"+name+"','"+phone+"','"+email+"','"+password+"','"+address+"')";
					   			  
						    	 PreparedStatement pstmt=null;
						    	 
						    	 pstmt=con.prepareStatement(sql);
					   			    int i=pstmt.executeUpdate();
					   			    
									out.println(i);
									if(i>0)
									{
										out.println("<script type=\"text/javascript\">");
										out.println("alert(' Successfully Register !!!!!!!');");
										out.println("location='AdvLogin.jsp';");
										out.println("</script>");			
									}
									else
									{
										out.println("<script type=\"text/javascript\">");
										out.println("alert('fail to Register !!!!!!!');");
										out.println("location='register.jsp';");
										out.println("</script>");
									}
						    	
						    
					   
				    
				    }

				    catch(Exception e)
				    {
				    	System.out.println(e.getMessage());
				    }	
	}

	}
