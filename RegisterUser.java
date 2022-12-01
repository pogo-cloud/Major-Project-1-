

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
 * Servlet implementation class RegisterUser
 */
@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try (PrintWriter out=response.getWriter()){
		String name=request.getParameter("name");
		String voter_card_number=request.getParameter("voternumber");
		String address=request.getParameter("address");
		String dob=request.getParameter("dob");
		String contact=request.getParameter("number");
		String email=request.getParameter("email");
		DatabaseManager db=new DatabaseManager();
		java.sql.Connection con=db.getConnection();
		PreparedStatement preparedStatement=con.prepareStatement("insert into voters(name,pnumber,email,voter_card_number,addrs,dob)values('"+name+"','"+contact+"','"+email+"','"+voter_card_number+"','"+address+"','"+dob+"')");
		preparedStatement.executeUpdate();
		out.println("registration sucess");
		response.sendRedirect("index.jsp");
		}catch(SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}

}
