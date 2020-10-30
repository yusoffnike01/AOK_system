package FYP;
/**
 *
 * @author user
 */
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
public class DAO {
    
    
     public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spaokumt", "root", "admin");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
      
      
      
        public static pengguna getLoginBySession(String password, String email, String statusPengguna) {
        pengguna e = new pengguna();
        try {
            Connection con = DAO.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM pengguna WHERE  password=? and email=? and statusPengguna=?");
            ps.setString(1, password);
            ps.setString(2, email);
            ps.setString(3, statusPengguna);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                
                e.setPassword(rs.getString(3));
                
                e.setEmail(rs.getString(9));
           e.setStatusPengguna(rs.getString(10));
                System.out.println("ok");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
                   System.out.println("ko");
        }
        return e;
        }
        
        
          
        public static List<pakej> getdisplay()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
         public  static List<pakej> getdisplay1()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej where idPakej='Package B'");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
     public  static List<pakej> getdisplay2()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej where idPakej='Package C'");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
     
     public  static List<pakej> getdisplay3()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej where idPakej='Package D'");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
     
     public  static List<pakej> getdisplay4()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej where idPakej='Package E'");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
     
     public  static List<pakej> getdisplay5()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej where idPakej='Package F'");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
      public  static List<pakej> getdisplay6()
       {
           
             List<pakej> list = new ArrayList<pakej>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pakej where idPakej='Package A'");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pakej obj=new pakej();
               obj.setIdPakej(rs.getString(1));
               obj.setHargaPakej(rs.getDouble(2));
               obj.setButiranPakej(rs.getString(3));
               obj.setLokasi(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
      public static pakej getsession(String id) {

        pakej obj = new pakej();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM  pakej WHERE idPakej=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
           
            while (rs.next()) {

                            
                obj.setIdPakej(rs.getString(1));
                obj.setHargaPakej(rs.getDouble(2));
                obj.setButiranPakej(rs.getString(3));
               
           

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return obj;
    }
         public static int update(pakej obj)
      {
          int status=0;
          
          try{
              Connection con=getConnection();
              
              PreparedStatement ps = con.prepareStatement(
                    "UPDATE pakej SET idPakej=?, hargaPakej=?, butiranPakej=?, lokasi=? WHERE idPakej=?");
               ps.setString(1, obj.getIdPakej());
              ps.setDouble(2, obj.getHargaPakej());
              ps.setString(3, obj.getButiranPakej());
              ps.setString(4,obj.getLokasi());
              ps.setString(5, obj.getIdPakej());
              
                 status = ps.executeUpdate();

            con.close();
          }catch (Exception e)
          {
              e.printStackTrace();
          }
          
          return status;
      }
       
       public static int getdelete(String  id) {

       int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM  pakej WHERE idPakej = '"+id+"'");
            status = ps.executeUpdate();
            con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        return status;
    }
       
       public static int save1(pakej e)
       {
           int status=0;
           try{
           Connection con=getConnection();
           PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO  pakej (idPakej, hargaPakej, butiranPakej) values (?, ?, ?)");
           
          
            ps.setString(1, e.getIdPakej());
            ps.setDouble(2, e.getHargaPakej());
            ps.setString(3, e.getButiranPakej());
           
            
           
            
            status = ps.executeUpdate();
            
            con.close();
            
           
           }catch(Exception m)
           {
               m.printStackTrace();
           }
           return status;
       }
       

         public static List<sukarelawan> getAllsukarelawan(String idmanager) {

        List<sukarelawan> list = new ArrayList<sukarelawan>();

        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM permilihansukarelawan WHERE idmanager= ?");
            ps.setString(1, idmanager);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                sukarelawan e = new sukarelawan();

             
                e.setIdmanager(rs.getString(1));
                e.setIdsukarelawan(rs.getString(2));
               e.setNama(rs.getString(3));
               e.setIc(rs.getString(4));
               e.setPhone(rs.getString(5));
               e.setEmail(rs.getString(6));
               e.setPassword(rs.getString(7));
               
               e.setUmur(rs.getString(8));
               e.setCategori(rs.getString(9));
               e.setAlamat(rs.getString(10));
               e.setState(rs.getString(11));
               e.setCity(rs.getString(12));
               
               
               
                list.add(e);
            }
            con.close();
        } catch (Exception m) {
            m.printStackTrace();
        }
        return list;
    }
        
       public static pengguna getmanagerBySession(String idmanager) {
        pengguna e = new pengguna();
       

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pengguna WHERE email=?");
            ps.setString(1, idmanager);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                e.setId(rs.getString(1));
                e.setNama(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setIc(rs.getString(4));
                e.setAlamat(rs.getString(5));
                e.setBandar(rs.getString(6));
                e.setNegeri(rs.getString(7));
                e.setNoTel(rs.getString(8));
                e.setEmail(rs.getString(9));
                e.setStatusPengguna(rs.getString(10));
                
                
                
                
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }
public static List<pengguna> getAllmanager() {
        List<pengguna> list = new ArrayList<pengguna>();
      
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM pengguna");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pengguna e = new pengguna();

                  e.setId(rs.getString(1));
                e.setNama(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setIc(rs.getString(4));
                e.setAlamat(rs.getString(5));
                e.setBandar(rs.getString(6));
                e.setNegeri(rs.getString(7));
                e.setNoTel(rs.getString(8));
                e.setEmail(rs.getString(9));
                e.setStatusPengguna(rs.getString(10));
                
                 
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

 public static int getupdatevolunteer(sukarelawan e) {
        int status = 0;
        try {
            Connection con = getConnection();
                    
            PreparedStatement ps = con.prepareStatement("UPDATE permilihansukarelawan SET alamat=?, state=?, city=? WHERE idsukarelawan=?");
            ps.setString(1, e.getAlamat());
            ps.setString(2, e.getCity());
        ps.setString(3, e.getState());
        ps.setString(4, e.getIdsukarelawan());
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
 
 
 public static int getupdatevolunteer1(sukarelawan e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE permilihansukarelawan SET phone=?, email=?, password=?, alamat=?, state=?, city=? WHERE idsukarelawan=?");
          ps.setString(1, e.getPhone());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getPassword());
            ps.setString(4, e.getAlamat());
            ps.setString(5, e.getCity());
            ps.setString(6, e.getState());
        
        ps.setString(7, e.getIdsukarelawan());
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
      public static int deletevolunteer(String idsukarelawan) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM permilihansukarelawan WHERE idsukarelawan = '" + idsukarelawan + "'");
            status = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
      
       public static int updateprofilemanager(pengguna obj)
      {
          int status=0;
          
          try{
              Connection con=getConnection();
              
              PreparedStatement ps = con.prepareStatement(
                    "UPDATE pengguna SET password=?, alamat=?, bandar=?, negeri=?, noTel=?, email=? WHERE idmanager=?");
            
             ps.setString(1, obj.getPassword());
         
              ps.setString(2, obj.getAlamat());
              ps.setString(3, obj.getBandar());
              ps.setString(4, obj.getNegeri());
              ps.setString(5, obj.getNoTel());
              ps.setString(6, obj.getEmail());
              ps.setString(7, obj.getId());
                 status = ps.executeUpdate();

            con.close();
          }catch (Exception e)
          {
              e.printStackTrace();
          }
          
          return status;
      }
       
       
       public static int savevolunteer(sukarelawan obj) {
        int status = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO permilihansukarelawan (idmanager, idsukarelawan, nama, ic, phone, email, password, umur, categori, alamat, state, city) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, obj.getIdmanager());
            ps.setString(2, obj.getIdsukarelawan());
            ps.setString(3, obj.getNama());
            ps.setString(4, obj.getIc());
            ps.setString(5, obj.getPhone());
            ps.setString(6, obj.getEmail());
            ps.setString(7, obj.getPassword());
            ps.setString(8, obj.getUmur());
            ps.setString(9, obj.getCategori());
            ps.setString(10, obj.getAlamat());
            ps.setString(11, obj.getCity());
            ps.setString(12, obj.getState());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;

    }
        public static int uploadfile(pengguna e)
       {
           int status=0;
           try{
           Connection con=getConnection();
           PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO pengguna (id, nama, alamat,  noTel, email, statusPengguna) values (?, ?, ?, ?, ?, ?)");
           
          
            ps.setString(1, e.getId());
            ps.setString(2, e.getNama());
            ps.setString(3, e.getAlamat());
            ps.setString(4, e.getNoTel());
            ps.setString(5, e.getEmail());
            ps.setString(6, e.getStatusPengguna());
            
           
            
            status = ps.executeUpdate();
            
            con.close();
            
           
           }catch(Exception m)
           {
               m.printStackTrace();
           }
           return status;
       }
        
        
        public static int save(pengguna e) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO penderma (nama, email, phone, alamat, bandar, negeri, jumlah, image) values (?, ?, ?, ?, ?, ?, ?, ?)");

            InputStream obj = e.getPart().getInputStream();
            ps.setString(1, e.getNama());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getNoTel());
            ps.setString(4, e.getAlamat());
            ps.setString(5, e.getBandar());
            ps.setString(6, e.getNegeri());
            ps.setDouble(7, e.getJumlah());
        
         
            ps.setBlob(8, obj);

            status = ps.executeUpdate();

            con.close();

        } catch (Exception m) {
            m.printStackTrace();
            
        } 
        return status;
    }
        
        public static List<pengguna> getAlldonation() {
        List<pengguna> list = new ArrayList<pengguna>();
       String base64Image = "", x = "";
        InputStream inputStream;
        Blob img;
        int bytesRead = -1;
        byte[] imageBytes;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM penderma");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pengguna e = new pengguna();

                  e.setIdpenderma(rs.getString(1));
                e.setNama(rs.getString(2));
                e.setEmail(rs.getString(3));
                e.setNoTel(rs.getString(4));
                e.setAlamat(rs.getString(5));
                e.setBandar(rs.getString(6));
                e.setNegeri(rs.getString(7));
                e.setJumlah(rs.getDouble(8));
          
              
                 img = rs.getBlob(9);
                  inputStream = img.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                imageBytes = outputStream.toByteArray();
                base64Image = Base64.getEncoder().encodeToString(imageBytes);
                inputStream.close();
                outputStream.close();
                x = "data:image/jpg;base64," + base64Image;

                e.setBase64Image(x);
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
        
        
        public static int getdeletedonate(String  id) {

       int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM  penderma WHERE idpenderma = '"+id+"'");
            status = ps.executeUpdate();
            con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        return status;
    }
        
         public static int updatepasswordmoderator(pengguna obj)
      {
          int status=0;
          
          try{
              Connection con=getConnection();
              
              PreparedStatement ps = con.prepareStatement(
                    "UPDATE pengguna SET password=? WHERE email=?");
               ps.setString(1, obj.getPassword());
             
              ps.setString(2, obj.getEmail());
              
                 status = ps.executeUpdate();

            con.close();
          }catch (Exception e)
          {
              e.printStackTrace();
          }
          
          return status;
      }
         public static int updatepasswordvolunteer(sukarelawan obj)
      {
          int status=0;
          
          try{
              Connection con=getConnection();
              
              PreparedStatement ps = con.prepareStatement(
                    "UPDATE permilihansukarelawan SET password=? WHERE email=?");
               ps.setString(1, obj.getPassword());
             
              ps.setString(2, obj.getEmail());
              
                 status = ps.executeUpdate();

            con.close();
          }catch (Exception e)
          {
              e.printStackTrace();
          }
          
          return status;
      }
         
         
          public static List<pengguna> getgraph()
       {
           
             List<pengguna> list = new ArrayList<pengguna>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "select month(date), sum(jumlah) as TotalAmount from penderma group by month(date)");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               pengguna obj=new pengguna();
               obj.setTime(rs.getString(1));
               obj.setJumlah(rs.getDouble(2));
               
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
          
          public static sukarelawan getLoginByvolunteer(String email, String password, String statusPengguna) {
        sukarelawan e = new sukarelawan();
        try {
            Connection con = DAO.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM permilihansukarelawan WHERE  email=? and password=? and statusPengguna=?");
           
              ps.setString(1, email);
            ps.setString(2, password);
          
            ps.setString(3, statusPengguna);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setEmail(rs.getString(6));
                e.setPassword(rs.getString(7));
           
        
           e.setStatus(rs.getString(13));
               
            }

        } catch (Exception ex) {
            ex.printStackTrace();
                   
        }
        return e;
        }
          
          
          public static List<sukarelawan> getAllvolunteer() {
        List<sukarelawan> list = new ArrayList<sukarelawan>();
      
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM permilihansukarelawan");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sukarelawan e = new sukarelawan();

                  e.setIdmanager(rs.getString(1));
                  e.setIdsukarelawan(rs.getString(2));
                e.setNama(rs.getString(3));
                e.setIc(rs.getString(4));
                e.setPhone(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setPassword(rs.getString(7));
                e.setUmur(rs.getString(8));
                e.setCategori(rs.getString(9));
                e.setAlamat(rs.getString(10));
                e.setCity(rs.getString(11));
                e.setState(rs.getString(12));
               
                e.setStatus(rs.getString(13));
                
                 
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
          
           public static sukarelawan getvolunteerBySession(String email) {
        sukarelawan e = new sukarelawan();
       

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM permilihansukarelawan WHERE email=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                e.setIdmanager(rs.getString(1));
                  e.setIdsukarelawan(rs.getString(2));
                e.setNama(rs.getString(3));
                e.setIc(rs.getString(4));
                e.setPhone(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setPassword(rs.getString(7));
                e.setUmur(rs.getString(8));
                e.setCategori(rs.getString(9));
                e.setAlamat(rs.getString(10));
                e.setCity(rs.getString(11));
                e.setState(rs.getString(12));              
                e.setStatus(rs.getString(13));
                
                
                
                
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }
           
            public static int save1(file e)
       {
           int status=0;
           try{
               
              
            Connection con = getConnection();
                    
           PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO permohonansukarelawan (email, file) values (?, ?)");
           
          InputStream is = e.getFile().getInputStream();
          
          
            ps.setString(1, e.getEmail());
            ps.setBlob(2, is);
       
                    
           
            
            status = ps.executeUpdate();
            
            con.close();
            
           
           }catch(Exception m)
           {
               m.printStackTrace();
           }
           return status;
       }
            
            
             public static List<file> getAllfile() {
        List<file> list = new ArrayList<file>();
      
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM permohonansukarelawan");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                file e = new file();

                  e.setId(rs.getString(1));
                  e.setEmail(rs.getString(2));
       
                e.setTime(rs.getString(4));
                
                 
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
          
                 public static int getdeletefile(String  id) {

       int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM  permohonansukarelawan WHERE id = '"+id+"'");
            status = ps.executeUpdate();
            con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        return status;
    }
                 public static List<jadual> getschedule()
       {
           
             List<jadual> list = new ArrayList<jadual>();
           
           try{
               Connection con=getConnection();
               PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM jadual");
               ResultSet rs = ps.executeQuery();
               while(rs.next())
               {
             
               jadual obj=new jadual();
               obj.setIdJadual(rs.getString(1));
               obj.setHari(rs.getString(2));
               obj.setMasa(rs.getString(3));
               obj.setIdv(rs.getString(4));
              
               list.add(obj);
               }
               con.close();
           } catch (Exception e)
           {
               e.printStackTrace();
           }
           return list;
       }
                 
                  public static int updateschedule(jadual obj)
      {
          int status=0;
          
          try{
              Connection con=getConnection();
              
              PreparedStatement ps = con.prepareStatement(
                    "UPDATE jadual SET idsukarelawan=? WHERE hari=? and masa=?");
               ps.setString(1, obj.getIdv());
             
              ps.setString(2, obj.getHari());
              ps.setString(3,obj.getMasa());
    
              
                 status = ps.executeUpdate();

            con.close();
          }catch (Exception e)
          {
              e.printStackTrace();
          }
          
          return status;
      }
       

}
