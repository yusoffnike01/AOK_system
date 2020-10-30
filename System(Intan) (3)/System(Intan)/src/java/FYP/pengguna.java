
package FYP;

import javax.servlet.http.Part;

/**
 *
 * @author INTAN SAM
 */
public class pengguna {
    private String idpenderma;
    private double jumlah;
   private Part image;
    private String base64Image;
       private String id;
       private String password;
    private String nama;
    private String alamat;
    private String ic;
    private String bandar;
    private String negeri;
    private String noTel;
    private String email;
    private String statusPengguna;
private String time;

    public Part getImage() {
        return image;
    }

    public void setImage(Part image) {
        this.image = image;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getIdpenderma() {
        return idpenderma;
    }

    public void setIdpenderma(String idpenderma) {
        this.idpenderma = idpenderma;
    }
 public Part getPart() {
        return image;
    }
  public void setPart(Part image) {
        this.image = image;
    }
    public double getJumlah() {
        return jumlah;
    }

    public void setJumlah(double jumlah) {
        this.jumlah = jumlah;
    }

   

    
    public String getBase64Image() {
        return base64Image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIc() {
        return ic;
    }

    public void setIc(String ic) {
        this.ic = ic;
    }

    public String getBandar() {
        return bandar;
    }

    public void setBandar(String bandar) {
        this.bandar = bandar;
    }

    public String getNegeri() {
        return negeri;
    }

    public void setNegeri(String negeri) {
        this.negeri = negeri;
    }

    public String getId() {
        return id;
    }

    public String getNama() {
        return nama;
    }

    public String getAlamat() {
        return alamat;
    }

    public String getNoTel() {
        return noTel;
    }

    public String getEmail() {
        return email;
    }

    public String getStatusPengguna() {
        return statusPengguna;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public void setNoTel(String noTel) {
        this.noTel = noTel;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setStatusPengguna(String statusPengguna) {
        this.statusPengguna = statusPengguna;
    }


}
