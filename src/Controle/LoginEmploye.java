package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Login;

@WebServlet("/LoginEmploye")
public class LoginEmploye extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginEmploye() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/AuthentificationEmploye.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String mail=request.getParameter("mail");
		String mdpss=request.getParameter("pass");
		String type=request.getParameter("type");
		boolean b=false;
		switch(type) {
		case "Operateur" :b=Login.AuthentificationEmploye(type,mail, mdpss);
		if(b) {
			HttpSession s=request.getSession(true);
			s.setAttribute("type", type);
			this.getServletContext().getRequestDispatcher("/Operateur.jsp").forward(request, response);
		}
		else {
			this.getServletContext().getRequestDispatcher("/EchequeEmp.jsp").forward(request, response);
		}
				break;
		case "Agent" : b=Login.AuthentificationEmploye(type,mail, mdpss);
		if(b) {
			HttpSession s=request.getSession(true);
			s.setAttribute("type", type);
			this.getServletContext().getRequestDispatcher("/Agent.jsp").forward(request, response);
		}
		else {
			this.getServletContext().getRequestDispatcher("/EchequeEmp.jsp").forward(request, response);
		}
				break;
	}
	}
}
