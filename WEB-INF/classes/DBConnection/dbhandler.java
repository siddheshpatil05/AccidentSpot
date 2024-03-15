package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbhandler 
{
	private static Connection con=null;
	
	static{
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accident","root","");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		public static Connection GetConnect()
		{
			return con;
		}
		
		
		public ResultSet selectQuery(String query)
		{
			try
			{
			       PreparedStatement psSelect = con.prepareStatement(query);
			       System.out.println("select query : "+query);
			       return psSelect.executeQuery();
			       
			}
			
			
			catch(SQLException e)
			{
				System.out.println("Here is exception");
			    e.printStackTrace();
			    
			}
			
			return null;
		
		}
		
		public int updateQuery(String query)
		{
			try
			{
			       PreparedStatement psUpdate = con.prepareStatement(query);
			       return psUpdate.executeUpdate();
			       
			}
			
			
			catch(SQLException e)
			{
			    e.printStackTrace();
			}
			
			return 0;
		}
		
		public void closeConnection()
		{
			try 
			{
			  if(con!=null)
			  {
				
					con.close();
			  } 
			  
			}
			catch (SQLException e) 
			  {
					
					e.printStackTrace();
			  }
		}
		
	}
	 