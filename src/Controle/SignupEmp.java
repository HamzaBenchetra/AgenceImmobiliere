package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Client;
import Model.Employe;
import Model.OperationsClient;
import Model.SignUp;

@WebServlet("/SignupEmp")
public class SignupEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SignupEmp() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/InscriptionEmploye.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employe e=new Employe();
		e.setNom(request.getParameter("Nom"));
		e.setPrenom(request.getParameter("Prenom"));
		e.setAdresse(request.getParameter("Adresse"));
		e.setDatenais(request.getParameter("datenais"));
		e.setNumtel(request.getParameter("NumTel"));
		e.setMail(request.getParameter("mail"));
		e.setMdpss(request.getParameter("Mdpss"));
		e.setSexe(request.getParameter("sexe"));
		e.setType(request.getParameter("typpe"));
		
		//SignUp.InscriptionEmp(e);
		
		
		System.out.println(e.getNom());
		System.out.println(e.getPrenom());
		System.out.println(e.getAdresse());
		System.out.println(e.getNumtel());
		System.out.println(e.getMail());
		System.out.println(e.getMdpss());
		System.out.println(e.getDatenais());
		System.out.println(e.getSexe());
		System.out.println(e.getType());

	}

}