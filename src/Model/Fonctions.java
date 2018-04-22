package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.PreparedStatement;

import com.mysql.jdbc.Statement;

public class Fonctions {
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
	public static ArrayList<Client> RecupererListClient(){
		
		ConnecterBD();
		   ArrayList<Client> c = new ArrayList<Client>();
		   try {
				
		 Statement statement = (Statement) connexion.createStatement();
			String Query="SELECT idClient,nom,mail FROM client where etat=0; ";
			ResultSet rs=statement.executeQuery(Query);
			
		//	ResultSet r = null;
			while(rs.next()){
				Client ca=new Client ();
				ca.setIdc(rs.getInt("idClient"));
				ca.setNom(rs.getString("nom"));
				ca.setMail(rs.getString("mail"));
				
				

				
				c.add(ca);
			}
			return c ;
	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		   return c ;

}
public static ArrayList<Client> AfficherDetailsClient(int id){
		
		ConnecterBD();
		   ArrayList<Client> c = new ArrayList<Client>();
		   try {
				
		 Statement statement = (Statement) connexion.createStatement();
			String Query="SELECT * FROM client where etat=0 and idClient="+id+";";
			ResultSet rs=statement.executeQuery(Query);
			
		//	ResultSet r = null;
			while(rs.next()){
				Client ca=new Client ();
				ca.setIdc(rs.getInt("idClient"));
				ca.setNom(rs.getString("nom"));
				ca.setPrenom(rs.getString("prenom"));
				ca.setNumtel(rs.getString("numtel"));
				ca.setAdresse(rs.getString("adresse"));
				ca.setDatenais(rs.getString("datenais"));
				ca.setMail(rs.getString("mail"));
				ca.setSexe(rs.getString("sexe"));
				
				

				
				c.add(ca);
			}
			return c ;
	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		   return c ;

}
		public static boolean Valider(int id){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("update client set etat =1 where idClient="+id);

			statut= pst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(statut != -5){
				return true;
			}else{
				return false;
			}
			}
		
		public static boolean SupprimerClient(int id){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("DELETE FROM client WHERE idClient="+id+";");

			statut= pst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(statut != -5){
				return true;
			}else{
				return false;
			}
			}
		public static void main(String[] args) {
			//ArrayList<Client> L=RecupererListClient();
			//System.out.println(L.get(1).getIdc());
			//Fonctions.Valider(2);
			Date d = Calendar.getInstance().getTime();
			System.out.println(d);
			DateFormat dt= new SimpleDateFormat("yyyy-MM-dd");
			Date date=new Date();
			System.out.println(dt.format(date));
		}
}
