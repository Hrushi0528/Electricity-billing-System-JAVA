
package electicity.billing;

  import java.util.Properties;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class mailsender {
   public static void main(String[] args) 
    {   Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host","smtp.gmail.com" );
        properties.put("mail.smtp.port", "587");
        
       Session session = Session.getDefaultInstance(properties,new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication("electricitybilling28@gmail.com","hizappspvqgagedt") ;
            }
       });      
        try 
        {   MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("electricitybilling28@gmail.com"));//From address
            message.setRecipients(MimeMessage.RecipientType.TO,InternetAddress.parse("karnayokshith@gmail.com"));
            message.setSubject("Testing wonderful application integrated with Zoho mail!");
            message.setText("Received an email successfully! ZOHO + Java Integration works successfully.");
            Transport.send(message);
            System.out.println("----------MAIL SENT-----------");
        } 
        catch (MessagingException e) 
        {    System.out.println(""+e);
        }
    }

    
}

    
