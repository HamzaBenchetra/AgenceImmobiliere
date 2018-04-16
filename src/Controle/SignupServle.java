package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Client;
import Model.OperationsClient;
import Model.SignUp;

@WebServlet("/SignupServlet")
public class SignupServle extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SignupServle() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/InsForm.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Client c=new Client();
		c.setNom(request.getParameter("Nom"));
		c.setPrenom(request.getParameter("Prenom"));
		c.setAdresse(request.getParameter("Adresse"));
		c.setDatenais(request.getParameter("datenais"));
		c.setNumtel(request.getParameter("NumTel"));
		c.setUser(request.getParameter("pseudo"));
		c.setMdpss(request.getParameter("Mdpss"));
		c.setSexe(request.getParameter("sexe"));
		String type=request.getParameter("type");
		
		SignUp.Inscription(c);
		request.setAttribute("nom", c.getNom());
		request.setAttribute("prenom", c.getPrenom());
		request.setAttribute("adresse", c.getAdresse());
		request.setAttribute("numtel", c.getNumtel());
		request.setAttribute("user", c.getUser());
		request.setAttribute("pass", c.getMdpss());
		request.setAttribute("datenais", c.getDatenais());
		request.setAttribute("sexe", c.getSexe());
		//this.getServletContext().getRequestDispatcher("/InscriptionReussie.jsp").forward(request, response);
		
		System.out.println(c.getNom());
		System.out.println(c.getPrenom());
		System.out.println(c.getAdresse());
		System.out.println(c.getNumtel());
		System.out.println(c.getUser());
		System.out.println(c.getMdpss());
		System.out.println(c.getDatenais());
		System.out.println(c.getSexe());
		System.out.println(type);

	}

}
