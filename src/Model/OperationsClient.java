package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

public class OperationsClient {
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
	public static ArrayList<Appartement> RecupererListeApparts(){
		
		ConnecterBD();
		   ArrayList<Appartement> A = new ArrayList<Appartement>();
		   try {
				
		 Statement statement = (Statement) connexion.createStatement();
			String Query="SELECT idAppart,type,etage,prix FROM Appartement; ";
			ResultSet rs=statement.executeQuery(Query);
			
		//	ResultSet r = null;
			while(rs.next()){
				Appartement a=new Appartement ();
				a.setIdAppart(rs.getInt("idAppart"));
				a.setType(rs.getString("type"));
				a.setEtage(rs.getInt("etage"));
				a.setPrix(rs.getDouble("prix"));
				
				

				
				A.add(a);
			}
			return A ;
	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		   return A ;		
	}
	public static Appartement AfficherAppart(int id){
		ConnecterBD();
		Appartement A=new Appartement();
		try {
		Statement statement = (Statement) connexion.createStatement();
		String Query="select * from appartement as a, batiment as b,localite as l where a.idBat=b.idBatiment and b.idLocal=l.idLocalite and a.idAppart="+id+" ;";
		ResultSet rs=statement.executeQuery(Query);
		
		while(rs.next()){
			A.setIdAppart(rs.getInt("idAppart"));
			A.setIdBatiment(rs.getInt("idBat"));
			A.setType(rs.getString("type"));
			A.setEtage(rs.getInt("etage"));
			A.setPrix(rs.getDouble("prix"));
			A.setNomLocal(rs.getString("nomLocalite"));
		}
		return A ;
		
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return A;
	}
}
