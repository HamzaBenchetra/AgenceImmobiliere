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

/**
 * Servlet implementation class validation
 */
@WebServlet("/validation")
public class validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public validation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher ds ;

		String type=request.getParameter("valid");
		switch(type) {
		case "oui" :{
			HttpSession session1 = request.getSession();
			int d=(int)session1.getAttribute("ID");
			Fonctions.Valider(d);
			response.setContentType("text/html");
			PrintWriter out=response.getWriter(); 
			out.print("validation terminée avc succés");
		
		}break;
		case "non" :{ 
	
			
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
