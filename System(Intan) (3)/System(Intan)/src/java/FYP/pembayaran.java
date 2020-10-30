/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FYP;

/**
 *
 * @author INTAN SAM
 */
public class pembayaran {
    private String idPembelian;
    private String nama;
    private String tarikhPembayaran;
    private String masaPembayaran;
    private String jumlahPembayaran;
    private String buktiPembayaran;

    public String getIdPembelian() {
        return idPembelian;
    }

    public String getNama() {
        return nama;
    }

    public String getTarikhPembayaran() {
        return tarikhPembayaran;
    }

    public String getMasaPembayaran() {
        return masaPembayaran;
    }

    public String getJumlahPembayaran() {
        return jumlahPembayaran;
    }

    public String getBuktiPembayaran() {
        return buktiPembayaran;
    }

    public void setIdPembelian(String idPembelian) {
        this.idPembelian = idPembelian;
    }

    public void setId(String id) {
        this.nama = nama;
    }

    public void setTarikhPembayaran(String tarikhPembayaran) {
        this.tarikhPembayaran = tarikhPembayaran;
    }

    public void setMasaPembayaran(String masaPembayaran) {
        this.masaPembayaran = masaPembayaran;
    }

    public void setJumlahPembayaran(String jumlahPembayaran) {
        this.jumlahPembayaran = jumlahPembayaran;
    }

    public void setBuktiPembayaran(String buktiPembayaran) {
        this.buktiPembayaran = buktiPembayaran;
    }
}
