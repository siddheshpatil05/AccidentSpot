package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javabean.EmailValue;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.dbhandler;

/**
 * Servlet implementation class tmologin
 */
public class tmologin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tmologin() {
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
		PrintWriter out=response.getWriter();
		Connection con= dbhandler.GetConnect();
		ResultSet rs =null;
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		EmailValue.setEmail(email);
		//Password.setPassword(password);
		 
			    try
			    {
				    PreparedStatement pstmt=((Connection) con).prepareStatement("select * from tmoinfo where email=? and password=? ");
					pstmt.setString(1, email);
					pstmt.setString(2, password);
					 rs = pstmt.executeQuery();
				    if(rs.next())
					{
				    	//HttpSession session = request.getSession();
				    	out.println("<script type=\"text/javascript\">");
						out.println("alert('Login Successfully !!!!!!!');");
						out.println("location='tmohome.jsp';");
						out.println("</script>");
						
				    }
				    else
				    {
				    	out.println("<script type=\"text/javascript\">");
						out.println("alert('Sorry, Login Failed !!!');");
						out.println("location='tmologin.jsp';");
						out.println("</script>");
						
				    	
				    	
				    }
				    
			    }
			    
			    catch(Exception e)
			    {
			    	System.out.println(e.getMessage());
			    }
		    	    
		   
	}

}
