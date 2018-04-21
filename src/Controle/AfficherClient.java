package Controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AfficherClient")
public class AfficherClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AfficherClient() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s=request.getSession(true);
		if(s.isNew()) {
			s.invalidate();
			this.getServletContext().getRequestDispatcher("/Mustlogin.jsp").forward(request, response);
		}else {
			if(((String) s.getAttribute("type")).equalsIgnoreCase("Admin")) {
				RequestDispatcher d ;
				int id=Integer.parseInt(request.getParameter("IDC"));
				HttpSession session = request.getSession();
				session.setAttribute( "ID",id);
				
				d =request.getRequestDispatcher("/AfficherClient.jsp");	
				d.forward(request, response);
			}else {
				this.getServletContext().getRequestDispatcher("/AccessDenied.jsp").forward(request, response);

			}
		}
		
		
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		
	}

}
