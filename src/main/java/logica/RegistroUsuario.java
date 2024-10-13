
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public class RegistroUsuario implements Serializable {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id_Usuario;
    private String nombre;
    private String apellido;
    @Temporal(TemporalType.DATE)
    private Date fecha_nac;
    private String correo;
    private String contrasenia;
    private String ccontrasenia;

    public RegistroUsuario() {
    }

    public RegistroUsuario(int id_Usuario, String nombre, String apellido, Date fecha_nac, String correo, String contrasenia, String ccontrasenia) {
        this.id_Usuario = id_Usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecha_nac = fecha_nac;
        this.correo = correo;
        this.contrasenia = contrasenia;
        this.ccontrasenia = ccontrasenia;
    }

    public int getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(int id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getCcontrasenia() {
        return ccontrasenia;
    }

    public void setCcontrasenia(String ccontrasenia) {
        this.ccontrasenia = ccontrasenia;
    }

    



}
