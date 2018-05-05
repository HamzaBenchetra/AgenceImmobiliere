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
	
	public static void EnvoyerMailAppartVendu(String d) {
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
			message.setSubject("test mail via java");
			message.setText("Ceci est un mail envoyé via java ...");
			Transport.send(message);
			System.out.println("ok");
		}catch(MessagingException e) {
			throw new RuntimeException(e);
		}
		
	}
	
public static void main(String[] args) {
	String a="hamza.ben2zelda@gmail.com";
	EnvoyerMailAppartVendu(a);
}
}
