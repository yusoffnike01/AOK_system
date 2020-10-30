<%-- 
    Document   : process
    Created on : Dec 9, 2019, 1:50:00 AM
    Author     : user
--%>

<%@page import="FYP.jadual"%>
<%@page import="FYP.file"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Message"%>
<%@page import="java.util.*,javax.mail.Address"%>
<%@page import="javax.mail.Authenticator" %>
<%@page import="javax.mail.Session" %>
<%@page import="javax.mail.internet.MimeMessage" %>
<%@page import="javax.mail.internet.*" %>
<%@page import="FYP.sukarelawan"%>
<%@page import="java.util.List"%>
<%@page import="FYP.pakej"%>
<%@page import="FYP.pengguna"%>
<%@page import="FYP.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login & register</title>
    </head>
    <body>
        <%

            String submit = request.getParameter("Submit");

            if (submit.equalsIgnoreCase("Login")) {
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String status = request.getParameter("status");
                sukarelawan c=DAO.getLoginByvolunteer(email, password, status);
                pengguna b = DAO.getLoginBySession(password, email, status);
                System.out.println("email" + b.getEmail());

                if (email.equals(b.getEmail()) && password.equals(b.getPassword()) && status.equals(b.getStatusPengguna())) {
                    ;
                    response.sendRedirect("registervolunteer.jsp");

                } else if(email.equals(c.getEmail()) && password.equals(c.getPassword()) && status.equals(c.getStatus()))
                {
                    response.sendRedirect("manageprofilevolunteer.jsp");
                }
                
                
                else {

                    response.sendRedirect("homepage.html");
                }

                int a = 0;
                List<pengguna> list = DAO.getAllmanager();
                for (pengguna e : list) {

                    if (email.equals(e.getEmail())) {
                        a = 0;
                        session.setAttribute("user", e.getEmail());

                    }

                    a++;
                }
int d = 0;
                List<sukarelawan> list2 = DAO.getAllvolunteer();
                for (sukarelawan e : list2) {

                    if (email.equals(e.getEmail())) {
                        d = 0;
                        session.setAttribute("user", e.getEmail());

                    }

                    d++;
                }
            } else if (submit.equalsIgnoreCase("Edit Packej")) {
                String id = request.getParameter("idpackej");
                Double price = Double.parseDouble(request.getParameter("price"));
                String detail = request.getParameter("detail");
                String location=request.getParameter("location");

                pakej obj = new pakej();
                obj.setIdPakej(id);
                obj.setHargaPakej(price);
                obj.setButiranPakej(detail);
                   obj.setLokasi(location);
                int status = DAO.update(obj);
                if (status > 0) {
                    response.sendRedirect("package.jsp");
                    System.out.println("Succesfull");
                } else {
                    response.sendRedirect("package.jsp");
                    System.out.println("fail");
                }
            } else if (submit.equalsIgnoreCase("Keyin")) {
                String id = request.getParameter("id");
                Double harga = Double.parseDouble(request.getParameter("harga"));
                String butiran = request.getParameter("butiran");
                pakej obj = new pakej();
                obj.setIdPakej(id);
                obj.setHargaPakej(harga);
                obj.setButiranPakej(butiran);

                int status = DAO.save1(obj);

                if (status > 0) {
                    response.sendRedirect("managePackage.jsp");
                    System.out.println("suceesfull");
                } else {
                    response.sendRedirect("managePackage.jsp");
                    System.out.println("fail");

                }
            } else if (submit.equalsIgnoreCase("Edit")) {
                String id = request.getParameter("idvolunter");
                String alamat = request.getParameter("alamat");
                String city = request.getParameter("bandar");
                String state = request.getParameter("negeri");

                System.out.println("id" + id);
                System.out.println("alamat" + alamat);
                sukarelawan obj = new sukarelawan();
                obj.setAlamat(alamat);
                obj.setCity(city);
                obj.setState(state);
                obj.setIdsukarelawan(id);
                int status = DAO.getupdatevolunteer(obj);

                if (status > 0) {
                    response.sendRedirect("registervolunteer.jsp");
                    System.out.println("success");
                } else {
                    response.sendRedirect("registervolunteer.jsp");
                    System.out.println("fail");
                }

            } else if (submit.equalsIgnoreCase("Update My Profile")) {
                String id = request.getParameter("id");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                String password = request.getParameter("password");
                pengguna obj = new pengguna();
                obj.setPassword(password);
                obj.setAlamat(address);
                obj.setBandar(city);
                obj.setNegeri(state);
                obj.setNoTel(phone);
                obj.setEmail(email);
                obj.setId(id);
                int status = DAO.updateprofilemanager(obj);

                if (status > 0) {
                    response.sendRedirect("profilemanager.jsp");
                    System.out.println("success");
                } else {
                    response.sendRedirect("profilemanager.jsp");
                    System.out.println("fail");

                }
            } else if (submit.equalsIgnoreCase("Register")) {
                String idvolunteer = request.getParameter("volunteer");
                String id = request.getParameter("id");
                String name = request.getParameter("name");
                String ic = request.getParameter("ic");
                String phone = request.getParameter("phone");
                String age=request.getParameter("age");
                String category = request.getParameter("category");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                 String city = request.getParameter("city");
                  String state = request.getParameter("state");
                   String password = request.getParameter("password");
                   sukarelawan obj=new sukarelawan();
                   
                   obj.setIdmanager(id);
                   obj.setIdsukarelawan(idvolunteer);
                   obj.setNama(name);
                   obj.setIc(ic);
                   obj.setPhone(phone);
                   obj.setEmail(email);
                   obj.setPassword(password);
                   obj.setUmur(age);
                   obj.setCategori(category);
                   obj.setAlamat(address);
                   obj.setState(city);
                   obj.setCity(state);
                   
                   int status=DAO.savevolunteer(obj);
                   if(status>0)
                   {
                       String result;

    // Get recipient's email-ID, message & subject-line from index.html page





    String messg ="Tahniah...Anda terpilih menjadi sukarelawan Act Of Kindness Universit Malaysia Terengganu. Pihak Kami berharap "
            + " anda dapat menjalankan tugas anda dengan penuh lebih bertanggungjawab dan amanah. Ini adalah id sukarelawan dan password anda. Untuk login, anda buleh menggunakan email"
            + " dan password tersebut."
            + "ini adalah"+ "\n"+"id sukarelawan :"+idvolunteer +"\n"+"password:"+password;

 String messg1=" ";

    // Sender's email ID and password needs to be mentioned

    final String from = "spaokumt@gmail.com";

    final String pass = "spaok123@";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "443");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(email));

        // Set Subject: header field

        message.setSubject("Application for Volunteer Universiti Malaysia Terengganu");

        // Now set the actual message

        message.setText(messg+messg1+"\n"+"\n"+"\n"+"Sekian Terima Kasih");

        // Send message

        Transport.send(message);

       response.sendRedirect("registervolunteer.jsp");
       System.out.println("succesfull");

    } catch (MessagingException mex) {

        mex.printStackTrace();

       response.sendRedirect("registervolunteer.jsp");
       System.out.println("lost connection");

    }
                   }
                   else
                   {
                       response.sendRedirect("resvolunter.jsp");
                       System.out.println("fail");
                   }
                
            }
            
            else if(submit.equalsIgnoreCase("Confirm"))
            {
               
                String name=request.getParameter("name");
                System.out.println("name"+name);
                String email=request.getParameter("email");
                String phone=request.getParameter("phone");
                String address=request.getParameter("address");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                Double total=Double.parseDouble(request.getParameter("jumlah"));
                System.out.println("total"+total);
               
                 Part part=request.getPart("myFile");
                 
                 pengguna e=new pengguna();
                 e.setNama(name);
                 e.setEmail(email);
                 e.setNoTel(phone);
                 e.setAlamat(address);
                 e.setBandar(city);
                 e.setNegeri(state);
              e.setJumlah(total);
                 e.setPart(part);
                 int status=DAO.save(e);
                 if(status>0)
                 {
                     response.sendRedirect("donate.jsp");
                     System.out.println("sucess");
                 }
                 else
                 {
                     response.sendRedirect("donate.jsp");
                     System.out.println("fail");
                     
                 }
                 
            }
            else if(submit.equalsIgnoreCase("Reset"))
            {
                String password=request.getParameter("password");
                String email=request.getParameter("email");
                
                sukarelawan obj2=new sukarelawan();
                obj2.setPassword(password);
                obj2.setEmail(email);
                pengguna obj=new pengguna();
                obj.setPassword(password);
                obj.setEmail(email);
                int status=DAO.updatepasswordmoderator(obj);
                int status3=DAO.updatepasswordvolunteer(obj2);
                if(status>0)
                {
                    String messg="New Password";
                    final String from = "spaokumt@gmail.com";

    final String pass = "spaok123@";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "443");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(email));

        // Set Subject: header field

        message.setSubject("Reset Password ");

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

       response.sendRedirect("reset.jsp");
       System.out.println("succesfull");

    }
    
    catch (MessagingException mex) {

        mex.printStackTrace();

       response.sendRedirect("reset.jsp");
       System.out.println("lost connection");

    }
                }
                  
    
                
               if(status3>0)
                {
                      String messg="New Password";
                    final String from = "spaokumt@gmail.com";

    final String pass = "spaok123@";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "443");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(email));

        // Set Subject: header field

        message.setSubject("Reset Password ");

        // Now set the actual message

        message.setText(messg+password);

        // Send message

        Transport.send(message);

       response.sendRedirect("reset.jsp");
       System.out.println("succesfull");

    }
    
    catch (MessagingException mex) {

        mex.printStackTrace();

       response.sendRedirect("reset.jsp");
       System.out.println("lost connection");

    }
                }
               
            }  else if(submit.equalsIgnoreCase("Update Profile"))
            {
                  String id = request.getParameter("id");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                String password = request.getParameter("password");
                
                
                sukarelawan obj=new sukarelawan();
                obj.setIdsukarelawan(id);
                obj.setPhone(phone);
                obj.setEmail(email);
                obj.setPassword(password);
                obj.setAlamat(address);
                obj.setCity(city);
                obj.setState(state);
                
                int status=DAO.getupdatevolunteer1(obj);
                
                if(status>0)
                {
                    response.sendRedirect("manageprofilevolunteer.jsp");
                }
                else
                {
                    response.sendRedirect("manageprofilevolunteer.jsp");
                    System.out.println("fail");
                    
                }

            }
            
            else if(submit.equalsIgnoreCase("Submit Now"))
            {
                String email=request.getParameter("email");
Part file=request.getPart("file");

file obj =new file();
obj.setEmail(email);
obj.setFile(file);

int status=DAO.save1(obj);
if(status>0)
{
    response.sendRedirect("volunteer.html");
    System.out.println("success");
}
else
{
     response.sendRedirect("volunteer.html");
     System.out.println("fail");
    
}
            }
            
            else if(submit.equalsIgnoreCase("Edit Schedule"))
            {
                String day=request.getParameter("day");
                String time=request.getParameter("time");
                String idv=request.getParameter("idv");
                
                jadual obj=new jadual();
                obj.setIdv(idv);
                obj.setHari(day);
                obj.setMasa(time);
                
                int status=DAO.updateschedule(obj);
                if(status>0)
                {
                    response.sendRedirect("edit shedule.jsp");
                    System.out.println("success");
                }
                else
                {
                    response.sendRedirect("edit shedule.jsp");
                    System.out.println("fail");
                }
            }
            
                
            
        %>
    </body>
</html>
