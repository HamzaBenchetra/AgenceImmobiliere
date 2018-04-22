package Controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Fonctions;

/**
 * Servlet implementation class VALIDERop
 */
@WebServlet("/VALIDERop")
public class VALIDERop extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VALIDERop() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		RequestDispatcher ds ;

		String type=request.getParameter("valid");
		switch(type) {
		case "oui" :{
			HttpSession session1 = request.getSession();
			int d=(int)session1.getAttribute("IDOP");
			Fonctions.ValiderOp(d);
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
