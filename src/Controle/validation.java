package Controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Fonctions;
import Model.Login;

@WebServlet("/validation")
public class validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public validation() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession s=request.getSession(true);
			if(s.isNew()) {
				s.invalidate();
				this.getServletContext().getRequestDispatcher("/Mustlogin.jsp").forward(request, response);
			}else {
				if(((String) s.getAttribute("type")).equalsIgnoreCase("Admin")) {
					this.getServletContext().getRequestDispatcher("/AfficherListClient.jsp").forward(request, response);
				}else {
					this.getServletContext().getRequestDispatcher("/AccessDenied.jsp").forward(request, response);

				}
			}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher ds ;

		String type=request.getParameter("valid");
		switch(type) {
		case "oui" :{
			HttpSession session1 = request.getSession();
			int d=(int)session1.getAttribute("ID");
			Fonctions.Valider(d);
			this.getServletContext().getRequestDispatcher("/ValidationOk.jsp").forward(request, response);
		}break;
		case "non" :{ 
	int i;
			
			ds =request.getRequestDispatcher("/AfficherListClient.jsp");	
			ds.forward(request, response);
		}break;
		}
}
}
