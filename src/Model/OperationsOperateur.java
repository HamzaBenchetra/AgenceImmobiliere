package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class OperationsOperateur {
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
	public static ArrayList<Appartement> AfficherAppart(String localite,String type,int etage){
		ConnecterBD();
		
		ArrayList<Appartement> a = new ArrayList<Appartement>();
		try {
		Statement statement = connexion.createStatement();
		String Query="select * from appartement as a, batiment as b,localite as l where a.idBat=b.idBatiment and b.idLocal=l.idLocalite and l.nomLocalite='"+localite+"' and type='"+type+"' and etage="+etage+" ;";
		ResultSet rs=statement.executeQuery(Query);
		Appartement A=new Appartement();
		while(rs.next()){
			
			A.setIdAppart(rs.getInt("idAppart"));
			A.setIdBatiment(rs.getInt("idBat"));
			A.setType(rs.getString("type"));
			A.setEtage(rs.getInt("etage"));
			A.setPrix(rs.getDouble("prix"));
			A.setNomLocal(rs.getString("nomLocalite"));
			a.add(A);
		}
		return a ;
		
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return a;
	}
	public static int verifierClient(String nom, String prenom, String tel) {
		Statement statement;
		int i=0;
		try {
		statement = connexion.createStatement();
		String Query="select * from Client;";
		ResultSet rs=statement.executeQuery(Query);
		
		while(rs.next()) {
		if(((rs.getString("nom").equalsIgnoreCase(nom))&&rs.getString("prenom").equalsIgnoreCase(prenom))&&rs.getString("numtel").equalsIgnoreCase(tel))
			i=rs.getInt("idClient");
		}
		
		return i;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public static boolean FixerRdvOperateur(int idApp, int idC, String d) {
		ConnecterBD();
		try {
			Statement s=connexion.createStatement();
			ResultSet r=s.executeQuery("SELECT * FROM RDV where idApp="+idApp+" and date="+d+";");
			int i=0;
			while(r.next()) {
				i++;
			}
			if(i==0) {
				Statement st=connexion.createStatement();
				ResultSet rs=st.executeQuery("Select idAgent from Agent where etat=1 and idAgent not in(select idA FROM RDV where date="+d+")");
				int[] tab=new int[5];
				int j=0;
				while(rs.next()) {
					tab[j]=rs.getInt("idAgent");
					j++;
				}
				
				PreparedStatement ss=connexion.prepareStatement("insert into RDV (idApp,idA,idC,date)values("+idApp+","+tab[0]+","+idC+","+d+");");
				int rss=ss.executeUpdate();
				System.out.println(i);
				System.out.println("RDV ok");
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static int creerCompteClient(String nom, String prenom, String tel) {
		ConnecterBD();
		int id=0;
		try {
			PreparedStatement ps=connexion.prepareStatement("insert into client (nom,prenom,numtel) values('"+nom+"','"+prenom+"','"+tel+"');");
			ps.executeUpdate();
			Statement s = connexion.createStatement();
			ResultSet rs=s.executeQuery("select idclient from client where numtel='"+tel+"';");
			while(rs.next()) {
				id=rs.getInt("idclient");
			}
			return id;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
}

