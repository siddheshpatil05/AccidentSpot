package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.dbhandler;

/**
 * Servlet implementation class update
 */
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update() {
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
		PrintWriter out=response.getWriter();
		Connection con= dbhandler.GetConnect();
		response.setContentType("text/html");
		int id=Integer.parseInt(request.getParameter("id"));
		int pkill=Integer.parseInt(request.getParameter("person_killed"));
		int pinjured=Integer.parseInt(request.getParameter("person_injured"));
		//int id=0;
		//String phone=request.getParameter("phone");
		  try{
			  Connection conn=dbhandler.GetConnect();
				PreparedStatement pstmt= conn.prepareStatement("update location set person_killed='"+pkill+"',person_injured='"+pinjured+"'  where id='"+id+"'  ");
					
				
				int n=pstmt.executeUpdate();
					 if(n>0)
						 
					 {
						 request.getSession().setAttribute("msg", "Accident Info Updated..!!");
						 response.sendRedirect("updateaccident.jsp");
					 }
					 else{

						 request.setAttribute("msg", "YOU ARE NOT AUTHENTICATED USER PLESAE REGISTER AND GET TOKEN");
						 request.getRequestDispatcher("Advlogin.jsp").forward(request, response);
						 
						 
					 }
					} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} 	
			   
		    
		   
	}
	}


