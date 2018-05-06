package Model;
//imports pour mail
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
//imports pour sms
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

public class Contact {
	private static String username="societeimmobiliere933@gmail.com";
	private static String password="motdepass1234";
	
	public static void EnvoyerMailAppartVendu(String d,String date) {
		Properties props=new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		
		Session session=Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		
		try {
			Message message=new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(d));
			message.setSubject("Votre Rendez-Vous");
			message.setText("Nous avons le regret de vous annoncer que votre Rendez vous du "+date+" est annulé car l'appartement a été vendu");
			Transport.send(message);
			System.out.println("ok");
		}catch(MessagingException e) {
			throw new RuntimeException(e);
		}
		
	}
	public static String sendSms(String date) {
		try {
			// Construct data
			String apiKey = "apikey=" + "7qd1CZ3+OsU-FOhVZTUuO5K8lfsFDmmyHvlxsbFJQw";
			String message = "&message=" + "Votre RDV de "+date+" est annulé";
			String sender = "&sender=" + "Agence Immo";
			String numbers = "&numbers=" + "213557633214";
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.txtlocal.com/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
	
public static void main(String[] args) {
	//sendSms();
}
}
