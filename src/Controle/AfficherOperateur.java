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
 * Servlet implementation class AfficherOperateur
 */
@WebServlet("/AfficherOperateur")
public class AfficherOperateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AfficherOperateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession s=request.getSession(true);
		if(s.isNew()) {
			s.invalidate();
			this.getServletContext().getRequestDispatcher("/Mustlogin.jsp").forward(request, response);
		}else {
			if(((String) s.getAttribute("type")).equalsIgnoreCase("Admin")) {
				RequestDispatcher d ;
				int idop=Integer.parseInt(request.getParameter("IDOP"));
				HttpSession session = request.getSession();
				session.setAttribute( "IDOP",idop);
				
				d =request.getRequestDispatcher("/AfficherOperateur.jsp");	
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
