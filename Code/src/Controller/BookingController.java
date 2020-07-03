package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookingDAO;
import Model.Booking;



/**
 * Servlet implementation class BookingController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
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
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");	
		String firstname= request.getParameter("firstname");
	        String lastname = request.getParameter("lastname");
	        String email = request.getParameter("email");
	        int phone = Integer.parseInt(request.getParameter("phone"));
	        String address= request.getParameter("address");
	        
	        
	        String url = "";
	        Booking book=new Booking();
	        book.setBookID(6);
			book.setFirstName(firstname);
			book.setLastName(lastname);
			book.setEmail(email);
			book.setPhone(phone);
			book.setAddress(address);
			 BookingDAO.insertBooking(book);
			
			 url="/confirm.jsp";
	        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
	        
	        
	        
	}
	
}
