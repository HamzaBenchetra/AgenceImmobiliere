package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

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
	public static ArrayList<Employe> RecupererListAgent(){
		
		ConnecterBD();
		   ArrayList<Employe> c = new ArrayList<Employe>();
		   try {
				
		 Statement statement = (Statement) connexion.createStatement();
			String Query="SELECT idAgent,nom,mail FROM agent where etat=0; ";
			ResultSet rs=statement.executeQuery(Query);
			
		//	ResultSet r = null;
			while(rs.next()){
				Employe ca=new Employe ();
				ca.setIdemp(rs.getInt("idAgent"));
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
	public static ArrayList<Employe> RecupererListOperateur(){
	
	ConnecterBD();
	   ArrayList<Employe> k = new ArrayList<Employe>();
	   try {
			
	 Statement statement = (Statement) connexion.createStatement();
		String Query="SELECT idOperateur,nom,mail FROM operateur where etat=0; ";
		ResultSet rs=statement.executeQuery(Query);
		
	//	ResultSet r = null;
		while(rs.next()){
			Employe ca=new Employe ();
			ca.setIdemp(rs.getInt("idOperateur"));
			ca.setNom(rs.getString("nom"));
			ca.setMail(rs.getString("mail"));
			
			

			
			k.add(ca);
		}
		return k ;
   } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}
	   return k ;

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
public static ArrayList<Employe> AfficherDetailsOP(int idop){
	
	ConnecterBD();
	   ArrayList<Employe> c = new ArrayList<Employe>();
	   try {
			
	 Statement statement = (Statement) connexion.createStatement();
		String Query="SELECT * FROM operateur where etat=0 and idOperateur="+idop+";";
		ResultSet rs=statement.executeQuery(Query);
		
	//	ResultSet r = null;
		while(rs.next()){
			Employe ca=new Employe ();
			ca.setIdemp(rs.getInt("idOperateur"));
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
public static ArrayList<Employe> AfficherDetailsAG(int idag){
	
	ConnecterBD();
	   ArrayList<Employe> c = new ArrayList<Employe>();
	   try {
			
	 Statement statement = (Statement) connexion.createStatement();
		String Query="SELECT * FROM agent where etat=0 and idAgent="+idag+";";
		ResultSet rs=statement.executeQuery(Query);
		
	//	ResultSet r = null;
		while(rs.next()){
			Employe ca=new Employe ();
			ca.setIdemp(rs.getInt("idAgent"));
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
		
		public static boolean ValiderOp(int idop){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("update operateur set etat =1 where idOperateur="+idop);

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
		public static boolean ValiderAgent(int idAG){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("update agent set etat =1 where idAgent="+idAG);

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
		public static boolean SupprimerOperateur(int id){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("DELETE FROM operateur WHERE idOperateur="+id+";");

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
		public static boolean SupprimerAgent(int id){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("DELETE FROM agent WHERE idAgent="+id+";");

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
		
		public static ArrayList<RDV> RecupererListeRDVAgent(int ida){
			
			ConnecterBD();
			   ArrayList<RDV> R = new ArrayList<RDV>();
			   try {
					
			 Statement statement = connexion.createStatement();
				String Query="SELECT * from rdv where idA="+ida+";";
				ResultSet rs=statement.executeQuery(Query);
				
			//	ResultSet r = null;
				while(rs.next()){
					RDV r=new RDV ();
					r.setIdRDV(rs.getInt("idRDV"));
					r.setIdApp(rs.getInt("idApp"));
					r.setIdAgent(rs.getInt("idA"));
					r.setD(rs.getString("date"));
					r.setEtat(rs.getBoolean("etat"));
					
					R.add(r);
				}
				return R ;
		   } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			   return R ;		
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
