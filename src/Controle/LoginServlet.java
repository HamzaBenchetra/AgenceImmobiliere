package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Login;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/AuthentificationClient.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail=request.getParameter("mail");
		String mdpss=request.getParameter("pass");
		
		boolean b=false;
		b=Login.AuthentificationClient(mail, mdpss);
		if(b) {
			HttpSession s=request.getSession(true);
			s.setAttribute("type", "Client");
			this.getServletContext().getRequestDispatcher("/EspaceClient.jsp").forward(request, response);
		}
		else {
			this.getServletContext().getRequestDispatcher("/Echeque.jsp").forward(request, response);
		}
		
		}

}
