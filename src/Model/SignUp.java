package Model;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SignUp {
	private static Connection connexion;
	 
	public static void ConnecterBD() {
	        try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver ok!");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}  
			try {
				connexion = DriverManager.getConnection("jdbc:mysql://Localhost:3306/agenceimmobiliere", "root", "0000");
		        System.out.println("Connection ok!");

			} catch (SQLException e) {
				e.printStackTrace();
			}                   
	        
	  }
	public static boolean Inscription(Client c) {
		ConnecterBD();
		try {
			PreparedStatement pst=connexion.prepareStatement("insert into operateur(nom,prenom,numtel,adresse,datenais,mail,mdpss,sexe) values(?,?,?,?,?,?,?,?);");
			pst.setString(1, c.getNom());
			pst.setString(2, c.getPrenom());
			pst.setString(3, c.getNumtel());
			pst.setString(4, c.getAdresse());
			pst.setString(5, c.getDatenais());
			pst.setString(6, c.getMail());
			pst.setString(7, c.getMdpss());
			pst.setString(8, c.getSexe());
			pst.executeUpdate();
			/*if(i==1) return true;
			else return false;*/
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
