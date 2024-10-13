package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;




@Entity
public class RecuperarContrasenia implements Serializable{
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id_recuperar;
    private String email;
   

    public RecuperarContrasenia() {
    }

    public RecuperarContrasenia(int id_recuperar, String email) {
        this.id_recuperar = id_recuperar;
        this.email = email;
    }

    public int getId_recuperar() {
        return id_recuperar;
    }

    public void setId_recuperar(int id_recuperar) {
        this.id_recuperar = id_recuperar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
}
