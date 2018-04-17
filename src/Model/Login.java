package Model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Login {
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
	 
	 public static boolean AuthentificationClient(String tel,String mail,String mdpss) {
		
		 ConnecterBD();
		 try {
			 Statement s=connexion.createStatement();
			 ResultSet rs=s.executeQuery("Select * from client;");
			 while(rs.next()){
				if((mail.equals(rs.getString("mail"))&&mdpss.equals(rs.getString("mdpss")))||(tel.equals(rs.getString("numtel"))&&mdpss.equals(rs.getString("mdpss"))))
						return true;
				}
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
		 
		 return false;
	 }
	 
	 
	 
	 public static boolean AuthentificationEmploye(String type,String mail,String mdpss) {
			
		 ConnecterBD();
		 try {
			 Statement s=connexion.createStatement();
			 ResultSet rs=s.executeQuery("Select * from "+type+";");
			 while(rs.next()){
				if((mail.equals(rs.getString("mail"))&&mdpss.equals(rs.getString("mdpss"))))
						return true;
				}
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
		 
		 return false;
	 }
}
