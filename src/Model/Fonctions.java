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

import Controle.DemandesAchat;
import Model.Preaviss;

public class Fonctions {
	private static Connection connexion;
	public static boolean ValiderRDV(int id){
		int statut = -5;
		ConnecterBD();
		try {
		
	//	String SQL ="update client set etat =1 where idClient="+id;
		PreparedStatement pst=connexion.prepareStatement("update rdv set etat =1 where idRDV="+id);

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
	public static boolean DonnerPRV(Preaviss P ) {
		ConnecterBD();
		ValiderRDV(P.getIdRDV());
		int i=-5;
		try {
			
			PreparedStatement pst=connexion.prepareStatement("insert into preavis(idAgent,idRDV,avis,contenu) values(?,?,?,?);");
			pst.setInt(1,P.getIdAgent());
			pst.setInt(2,P.getIdRDV());
			pst.setInt(3,P.getAvis());
			pst.setString(4,P.getC());

		
			i=pst.executeUpdate();
		if(i!=-5) return true;
		else return false;
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return false;
		
	}
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
			String Query="SELECT * FROM agent where etat=0; ";
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
public static ArrayList<Client> RecupererListClient(){
		
		ConnecterBD();
		   ArrayList<Client> c = new ArrayList<Client>();
		   try {
				
		 Statement statement = (Statement) connexion.createStatement();
			String Query="SELECT * FROM client where etat=0; ";
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
	public static ArrayList<Employe> RecupererListOperateur(){
	
	ConnecterBD();
	   ArrayList<Employe> k = new ArrayList<Employe>();
	   try {
			
	 Statement statement = (Statement) connexion.createStatement();
		String Query="SELECT * FROM operateur where etat=0; ";
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
			k.add(ca);
		}
		return k ;
   } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}
	   return k ;

}
public static boolean Valider(int id, String t){
			int statut = -5;
			ConnecterBD();
			try {
			
		//	String SQL ="update client set etat =1 where idClient="+id;
			PreparedStatement pst=connexion.prepareStatement("update "+ t +" set etat =1 where id"+t+"="+id+";");

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
		public static ArrayList<RDV> RecupererListeRDVAgentNN(int ida){
			ConnecterBD();
			   ArrayList<RDV> R = new ArrayList<RDV>();
			   try {
					
			 Statement statement = connexion.createStatement();
				String Query="SELECT * from rdv where idA="+ida+" And etat=1;";
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
		public static ArrayList<RDV> RecupererListeRDVAgent(int ida){
			ConnecterBD();
			   ArrayList<RDV> R = new ArrayList<RDV>();
			   try {
					
			 Statement statement = connexion.createStatement();
				String Query="SELECT * from rdv where idA="+ida+" And etat=0 order by date;";
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
		public static ArrayList<DemandeAchat> RecupererListeDemandesA() {
				ConnecterBD();
				   ArrayList<DemandeAchat> D = new ArrayList<DemandeAchat>();
				   try {
						
				 Statement statement = connexion.createStatement();
					String Query="SELECT * from demandesAchat;";
					ResultSet rs=statement.executeQuery(Query);
					
				//	ResultSet r = null;
					while(rs.next()){
						DemandeAchat d=new DemandeAchat ();
						d.setIdClient(rs.getInt("idc"));
						d.setIdApp(rs.getInt("idApp"));
						d.setIdDemande(rs.getInt("idDemande"));
						D.add(d);
					}
					return D ;
			   } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
				   return D ;		
			}
		public static Client AfficherClient(int id) {
				Client ca=new Client();
				ConnecterBD();
				Statement s;
				try {
					s = connexion.createStatement();
					ResultSet rs=s.executeQuery("SELECT * from client where idClient="+id+";");
					while(rs.next()) {
						ca.setIdc(rs.getInt("idClient"));
						ca.setNom(rs.getString("nom"));
						ca.setPrenom(rs.getString("prenom"));
						ca.setNumtel(rs.getString("numtel"));
						ca.setAdresse(rs.getString("adresse"));
						ca.setDatenais(rs.getString("datenais"));
						ca.setMail(rs.getString("mail"));
						ca.setSexe(rs.getString("sexe"));
					}
					return ca;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			return ca;
		}
		public static boolean EtablirC(int idc, int idA) {
			ConnecterBD();
			try {
				PreparedStatement ps=connexion.prepareStatement("insert into Contrat(idCL,IdApp) values ("+idc+","+idA+");");
				ps.executeUpdate();
				PreparedStatement pst=connexion.prepareStatement("DELETE FROM demandesachat WHERE idC="+idc+";");
				pst.executeUpdate();
				PreparedStatement pstt=connexion.prepareStatement("update appartement set etat =1 where idAppart="+idA+";");
				pstt.executeUpdate();
				
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
			
		}	
}
