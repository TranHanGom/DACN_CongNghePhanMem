package Controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import Model.User;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginController() {
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    HttpSession session =request.getSession();
	    String url="";
	    String action=request.getParameter("action");
			if(action.equals("Logout"))
			{
				session.invalidate();
				url="/HomeForward";
			}
			RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    HttpSession session =request.getSession();
	    String url="";
	    
			User tk=new User();
			tk=UserDAO.login(request.getParameter("username"),request.getParameter("password"));
		if(request.getParameter("username")==""||request.getParameter("password")=="")
		{
			url="/login.jsp";
			session.setAttribute("e",".");
		}
		else {
			if(tk!=null && tk.getActive()==1)
			{
				 session.setAttribute("user", tk);
					url="/HomeForward";
			}
			else {
				if(tk!=null && tk.getActive()==0)
				{
					session.setAttribute("user", tk);
					url="/indexql";
				}
				else
				{
					url="/login.jsp";
					session.setAttribute("e","Tài khoản hoặc mật khẩu không chính xác");
				}		
		
			}			
		}
			RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
	rd.forward(request, response);
}
}
