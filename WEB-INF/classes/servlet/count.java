package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.dbhandler;

/**
 * Servlet implementation class count
 */
public class count extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public count() {
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
		Connection con=dbhandler.GetConnect();
		PrintWriter out=response.getWriter();
		//Connection con= dbhandler.GetConnect();
		//ResultSet rs =null;
	
		
		Statement statement = null;
		ResultSet rs = null;
	
		try {

		statement = con.createStatement();
		String sql = "SELECT * FROM location";

		rs = statement.executeQuery(sql);
		while (rs.next()) 
		{
			String name= rs.getString("address");
			System.out.println("name"+name);
			out.println("name"+name);
	    }
    }
	
    
    catch(Exception e)
    {
    	System.out.println(e.getMessage());
    }
	    
}
}
