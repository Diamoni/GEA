package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2024-09-26T18:31:19")
@StaticMetamodel(RegistroUsuario.class)
public class RegistroUsuario_ { 

    public static volatile SingularAttribute<RegistroUsuario, Date> fecha_nac;
    public static volatile SingularAttribute<RegistroUsuario, String> apellido;
    public static volatile SingularAttribute<RegistroUsuario, String> correo;
    public static volatile SingularAttribute<RegistroUsuario, String> contrasenia;
    public static volatile SingularAttribute<RegistroUsuario, String> ccontrasenia;
    public static volatile SingularAttribute<RegistroUsuario, Integer> id_Usuario;
    public static volatile SingularAttribute<RegistroUsuario, String> nombre;

}