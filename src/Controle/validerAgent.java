package Controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Fonctions;

@WebServlet("/validerAgent")
public class validerAgent extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public validerAgent() {
    	
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher ds ;

		String type=request.getParameter("valid");
		switch(type) {
		case "oui" :{
			HttpSession session1 = request.getSession();
			int d=(int)session1.getAttribute("IDAG");
			Fonctions.ValiderAgent(d);
			this.getServletContext().getRequestDispatcher("/ValidationOk.jsp").forward(request, response);
		}break;
		case "non" :{ 
	int i;
			
			ds =request.getRequestDispatcher("/AfficherListClient.jsp");	
			ds.forward(request, response);
		}break;
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
