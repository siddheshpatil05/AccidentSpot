package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminlogin
 */
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogin() {
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
		String email=request.getParameter("email");
		String pw=request.getParameter("pass");
		PrintWriter out=response.getWriter();
		if(email.equals("admin@gmail.com") && pw.equals("admin"))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login Successfully !!!!!!!');");
			out.println("location='adminhome.jsp';");
			out.println("</script>");;
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login Unsuccessfully !!!!!!!');");
			out.println("location='home.jsp';");
			out.println("</script>");
			
		}
	}

}
