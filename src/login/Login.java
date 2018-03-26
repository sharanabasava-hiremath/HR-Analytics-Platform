package login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseAccess;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
//		doGet(request, response);
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		//System.out.println(password);
		HttpSession sesid = request.getSession();
		HttpSession sest = request.getSession();
		String query = "SELECT user_password,user_id,user_type from user_master where user_email='"+username+"'";
		DatabaseAccess db = new DatabaseAccess();
		Auth aut =db.auth(query,password);
		System.out.println(aut.getId()+" "+aut.getPassword());
		
		
		if(aut.getPassword().equals(password)){
			sesid.setAttribute("user", aut.getId());
			sest.setAttribute("type", aut.getType());
			
			if(aut.getType().equals("Employee"))
			{
				
				response.sendRedirect("employee.jsp");
			
			}
			else 
			{
				response.sendRedirect("hr.jsp");
			}
			
		}
		else{
			sesid.setAttribute("invalid", "Wrong Password");
			response.sendRedirect("Login.jsp");
		}
		
		
	}

}
