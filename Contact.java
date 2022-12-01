

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
 import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	    DatabaseManager db=new DatabaseManager();
		java.sql.Connection con=db.getConnection();
		String name=request.getParameter("name");
		String pnumber=request.getParameter("number");
		String email=request.getParameter("email");
		String comment=request.getParameter("comment");
	
		
		try{
		PreparedStatement preparedStatement=con.prepareStatement("insert into contact(name,pnumber,email,cmnt)values('"+name+"','"+pnumber+"','"+email+"','"+comment+"')");
		preparedStatement.executeUpdate();
		out.println("registration sucess");
		response.sendRedirect("index.jsp");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
