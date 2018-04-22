package Controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AfficherAgent
 */
@WebServlet("/AfficherAgent")
public class AfficherAgent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AfficherAgent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s=request.getSession(true);
		if(s.isNew()) {
			s.invalidate();
			this.getServletContext().getRequestDispatcher("/Mustlogin.jsp").forward(request, response);
		}else {
			if(((String) s.getAttribute("type")).equalsIgnoreCase("Admin")) {
				RequestDispatcher d ;
				int idop=Integer.parseInt(request.getParameter("IDAG"));
				HttpSession session = request.getSession();
				session.setAttribute( "IDAG",idop);
				
				d =request.getRequestDispatcher("/AfficherAgent.jsp");	
				d.forward(request, response);
			}else {
				this.getServletContext().getRequestDispatcher("/AccessDenied.jsp").forward(request, response);

			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
