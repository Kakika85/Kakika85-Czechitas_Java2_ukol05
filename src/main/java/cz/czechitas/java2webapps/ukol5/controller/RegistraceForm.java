package cz.czechitas.java2webapps.ukol5.controller;
import jakarta.validation.constraints.*;
import java.time.LocalDate;

public class RegistraceForm {
    @NotBlank(message = "Jméno je povinné")
    private String jmeno;

    @NotBlank(message = "Příjmení je povinné")
    private String prijmeni;

    @NotNull(message = "Datum narození je povinné")
    private LocalDate datumNarozeni;

    //@NotBlank(message = "Pohlaví je povinné")
    private String pohlavi;

    @NotBlank(message = "Turnus je povinný")
    private String turnus;

    @Email(message = "Neplatná e-mailová adresa")
    private String emailRodice;

    @Pattern(regexp = "\\d{9,15}", message = "Neplatné telefonní číslo")
    private String telefonRodice;

    // Gettery a settery
    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(){
        this.turnus = turnus;
    }

    public String getEmailRodice() {
        return emailRodice;
    }

    public void setEmailRodice(String emailRodice) {
        this.emailRodice = emailRodice;
    }

    public String getTelefonRodice() {
        return telefonRodice;
    }

    public void setTelefonRodice(String telefonRodice) {
        this.telefonRodice = telefonRodice;
    }

}