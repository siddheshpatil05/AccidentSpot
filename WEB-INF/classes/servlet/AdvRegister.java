package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.dbhandler;

/**
 * Servlet implementation class AdvRegister
 */
public class AdvRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdvRegister() {
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
		 PreparedStatement pstmt=null;
		String date=request.getParameter("date");
		
		String address=request.getParameter("address");
		int person_killed=Integer.parseInt(request.getParameter("person_killed"));
		int person_injured=Integer.parseInt(request.getParameter("person_injured"));

		String lat=request.getParameter("lat");
		String lng=request.getParameter("lng");
		String district=request.getParameter("district");
		String taluka=request.getParameter("taluka");
		String police_station=request.getParameter("police_station");
		String location=request.getParameter("location");
		int count=0;
		String level=null;
		String colorcode=null;
		  
		  try{
		    	 String sql="insert into location(date,latitude,longitude,address,reason,person_killed,person_injured,district,taluka,police_station) values('"+date+"','"+lat+"','"+lng+"','"+address+"','"+location+"','"+person_killed+"','"+person_injured+"','"+district+"','"+taluka+"','"+police_station+"')";
	   			  
		    	
		    	 
		    	 pstmt=con.prepareStatement(sql);
	   			    int i=pstmt.executeUpdate();
	   			    
					out.println(i);
					if(i>0)
					{
						
						 System.out.println(i+" records inserted");  
							request.getSession().setAttribute("msg", "Accident Spot Registered Successfully");
							response.sendRedirect("AdvRegister.jsp");
					}
					else
					{
						System.out.println(i+" records inserted");  
						request.getSession().setAttribute("msg", "Fail to Registered");
						response.sendRedirect("AdvRegister.jsp");
					}
					String sql1="select address, count(address) from location group by address";
					
			    	 
			    	 try {
						pstmt=con.prepareStatement(sql1);
						ResultSet rs=pstmt.executeQuery();
						while (rs.next())
						{
							 address=rs.getString("address");
							 count=rs.getInt("count(address)");
							 System.out.println("address-"+address);
							 System.out.println("count-"+count);
							
							 if(count<2)
							 {
							 System.out.println("level-0");
							level="0";
							colorcode="#3606e8";
							pstmt= con.prepareStatement("update location set level='"+level+"',color_code='"+colorcode+"' where address='"+address+"'");
						
							int i1=pstmt.executeUpdate();

							 } 
							 else if(count>2 && count<5)
							 {
								 System.out.println("level-1");
								 level="1";
								 colorcode=" #ffff05";
								 pstmt= con.prepareStatement("update location set level='"+level+"',color_code='"+colorcode+"' where address='"+address+"'");
									
									int i2=pstmt.executeUpdate();
							 }
							 else if(count>5 && count<10)
							 {
								 System.out.println("level-2");
								 level="2";
								 colorcode="#30e806";
								 pstmt= con.prepareStatement("update location set level='"+level+"',color_code='"+colorcode+"' where address='"+address+"'");
									
									int i3=pstmt.executeUpdate();
							 }
							 else if(count>10)
							 {
								 System.out.println("level-3");
								 level="3";
								 colorcode="#e80606"; 
								 pstmt= con.prepareStatement("update location set level='"+level+"',color_code='"+colorcode+"' where address='"+address+"'");
									
									int i4=pstmt.executeUpdate();
							 }
						
						
				    	
						}
					} catch (SQLException e1) {
						
						e1.printStackTrace();
					}    
			
		    
	   
 
 }

 catch(Exception e)
 {
 	System.out.println(e.getMessage());
 }
		
	}

}
