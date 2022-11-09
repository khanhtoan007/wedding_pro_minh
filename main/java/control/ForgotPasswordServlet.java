package control;

import dao.guest.LoginDAO;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.UUID;

@WebServlet(name = "ForgotPasswordServlet", value = "/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {

    public boolean sendMailForgot(String email, String hash) throws InterruptedException {
        Properties connectionProperties = new Properties();
        connectionProperties.put("mail.smtp.host", "smtp.gmail.com");
        // Is authentication enabled
        connectionProperties.put("mail.smtp.auth", "true");
        // Is TLS enabled
        connectionProperties.put("mail.smtp.starttls.enable", "true");
        // SSL Port
//        connectionProperties.put("mail.smtp.socketFactory.port", "465");
        // SSL Socket Factory class
//        connectionProperties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        // SMTP port, the same as SSL port :)
        connectionProperties.put("mail.smtp.port", "587");

        System.out.print("Creating the session...");

        // Create the session
        Session session = Session.getDefaultInstance(connectionProperties,
                new javax.mail.Authenticator() {    // Define the authenticator
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("tranquangminh116@gmail.com", "iahskjpdwuvcyzym");
                    }
                });
        System.out.println("done!");

        // Create and send the message
        try {
            // Create the message
            Message message = new MimeMessage(session);
            // Set sender
            message.setFrom(new InternetAddress("tranquangminh116@gmail.com"));
            // Set the recipients
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            // Set message subject
            message.setSubject("Email xác thực.");
            // Set message text
            message.setContent("Mã thay đổi mật khẩu: " + hash +" copy mã và truy cập vào đường link localhost:8080/active để kích hoạt tài khoản của bạn.", "text/html; charset=utf-8");
            System.out.print("Sending message...");
            // Send the message
            Transport.send(message);

            System.out.println("done!");

        } catch (Exception e) {
            return false;
        }
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String hash = UUID.randomUUID().toString();
        LoginDAO dao = new LoginDAO();
        if (dao.checkEmail(email)){
            boolean checksendMail = false;
            try {
                checksendMail = sendMailForgot(email,hash);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            if (checksendMail){
                request.setAttribute("message", "<div class=\"alert alert-success\" role=\"alert\"> Kiểm tra email để thay đổi mật khẩu.</div>");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    }
}
