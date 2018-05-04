package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;

public class OperationsRESP {
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
	public static String StatAgent(int ID){
		DecimalFormat df = new DecimalFormat("#.##");

		ConnecterBD();
		int MAX=StatMAX();
		double M=0;
				try {
				
		 Statement statement = connexion.createStatement();
			String Query="SELECT COUNT(*) FROM rdv where idA="+ID+";";
			ResultSet rs=statement.executeQuery(Query);
			
				
			while(rs.next()){
				 M=rs.getInt("COUNT(*)");
			}
				double x=(M/MAX)*100;
				return (df.format(x));

	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return null;

		 		
	}
	public static String StatAppart(String type){
		DecimalFormat df = new DecimalFormat("#.##");

		ConnecterBD();
		int MAX=StatMAX();
		double M=0;
				try {
				
		 Statement statement = connexion.createStatement();
			String Query="select COUNT(*) from appartement as a,rdv as r where  r.idApp=a.idAppart and type='"+type+"';";
			ResultSet rs=statement.executeQuery(Query);
			
				
			while(rs.next()){
				 M=rs.getInt("COUNT(*)");
			}
				double x=(M/MAX)*100;
				return (df.format(x));

	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return null;

		 		
	}
	public static String StatLocalite(int IdLocal){
		DecimalFormat df = new DecimalFormat("#.##");

		ConnecterBD();
		int MAX=StatMAX();
		double M=0;
				try {
				
		 Statement statement = connexion.createStatement();
			String Query="select COUNT(*) from appartement as a, batiment as b ,rdv as r where a.idBat=b.idBatiment and r.idApp=a.idAppart and idLocal="+IdLocal+";";
			ResultSet rs=statement.executeQuery(Query);
			
				
			while(rs.next()){
				 M=rs.getInt("COUNT(*)");
			}
				double x=(M/MAX)*100;
				return (df.format(x));

	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return null;

		 		
	}
	public static String StatAppartvendus(String type){
		DecimalFormat df = new DecimalFormat("#.##");

		ConnecterBD();
		int MAX=StatMAXAppart();
		double M=0;
				try {
				
		 Statement statement = connexion.createStatement();
			String Query="select COUNT(*) from appartement where etat=1 and type='"+type+"';";
			ResultSet rs=statement.executeQuery(Query);
			
				
			while(rs.next()){
				 M=rs.getInt("COUNT(*)");
			}
				double x=(M/MAX)*100;
				return (df.format(x));

	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return null;

		 		
	}
public static int StatMAXAppart(){
		
		ConnecterBD();
		int MAX = 0;
		
				try {
				
		 Statement statement = connexion.createStatement();
			String Query="select COUNT(*) from appartement  ;";
			ResultSet rs=statement.executeQuery(Query);
			
			while(rs.next()){
				 MAX=rs.getInt("COUNT(*)");
			}
				
				return(MAX);

	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return MAX;

		 		
	}
	public static int StatMAX(){
		
		ConnecterBD();
		int MAX = 0;
		
				try {
				
		 Statement statement = connexion.createStatement();
			String Query="select COUNT(*) from appartement as a, batiment as b ,rdv as r where a.idBat=b.idBatiment and r.idApp=a.idAppart ;";
			ResultSet rs=statement.executeQuery(Query);
			
			while(rs.next()){
				 MAX=rs.getInt("COUNT(*)");
			}
				
				return(MAX);

	   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return MAX;

		 		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// System.out.println(StatLocalite(2));
		 System.out.println(StatAppartvendus("F4"));
	}

}
