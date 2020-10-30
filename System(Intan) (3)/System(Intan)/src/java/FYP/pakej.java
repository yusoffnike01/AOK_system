
package FYP;

import javax.servlet.http.Part;

/**
 *
 * @author INTAN SAM
 */
public class pakej {
  
    private String idPakej;
    private double hargaPakej;
    private String butiranPakej;
   private String lokasi;

    public String getLokasi() {
        return lokasi;
    }

    public void setLokasi(String lokasi) {
        this.lokasi = lokasi;
    }
   
   

    public String getIdPakej() {
        return idPakej;
    }

   

    public String getButiranPakej() {
        return butiranPakej;
    }

    public void setIdPakej(String idPakej) {
        this.idPakej = idPakej;
    }

    public double getHargaPakej() {
        return hargaPakej;
    }

    public void setHargaPakej(double hargaPakej) {
        this.hargaPakej = hargaPakej;
    }

    
    public void setButiranPakej(String butiranPakej) {
        this.butiranPakej = butiranPakej;
    }

}
