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

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String url = "";
		if (request.getParameter("username") == "" || request.getParameter("password") == "") {
			url = "/register.jsp";
			HttpSession session = request.getSession();
			session.setAttribute("error", ".");
		} else {

			User tk = new User();
			tk.setUserName(request.getParameter("username"));
			tk.setFirstName(request.getParameter("firstname"));
			tk.setLastName(request.getParameter("lastname"));

			tk.setEmail(request.getParameter("email"));
			tk.setPhone(request.getParameter("phone"));
			tk.setPassWord(request.getParameter("password"));
			tk.setActive(1);

			UserDAO.insertUser(tk);

			url = "/login.jsp";
		}

		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
