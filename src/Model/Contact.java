package Model;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
	
public static void main(String[] args) {
	
}
}
