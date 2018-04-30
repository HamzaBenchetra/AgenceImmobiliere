package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.OperationsOperateur;

/**
 * Servlet implementation class CreerCompteAcheteur
 */
@WebServlet("/CreerCompteAcheteur")
public class CreerCompteAcheteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreerCompteAcheteur() {
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
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String tel=request.getParameter("numtel");
		int id=OperationsOperateur.creerCompteClient(nom,prenom,tel);
		int idAch=OperationsOperateur.creerCompteAcheteur(nom,prenom,tel);
		HttpSession s=request.getSession(true);
		s.setAttribute("idC", id);
		//this.getServletContext().getRequestDispatcher("/FixerRDVOperateurClient.jsp").forward(request, response);
	}

}
