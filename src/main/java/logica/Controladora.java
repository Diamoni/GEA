
package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    ControladoraPersistencia controlPersis= new ControladoraPersistencia();

    public void recupContrasenia(String email){

        RecuperarContrasenia rec= new RecuperarContrasenia();
        rec.setEmail(email);
        controlPersis.recupContrasenia(rec);

            }
    public void regisUsuario(String nombre,String apellido,String correo, String contrasenia,String ccontrasenia){
        RegistroUsuario reg= new RegistroUsuario();
        reg.setNombre(nombre);
        reg.setApellido(apellido);
        reg.setCorreo(correo);
        reg.setContrasenia(contrasenia);
        reg.setCcontrasenia(ccontrasenia);
        controlPersis.regisUsuario(reg);

    }

    public boolean comprobarIngreso(String typeEmailX, String typePasswordX) {
        boolean ingreso=false;

     
        @SuppressWarnings("UnusedAssignment")
     List<RegistroUsuario> listaUsuarios= new ArrayList<RegistroUsuario>();
     listaUsuarios=controlPersis.getUsuarios();

     for(RegistroUsuario usu: listaUsuarios){
     if(usu.getCorreo().equals(typeEmailX)){

         if(usu.getContrasenia().equals(typePasswordX)){
             ingreso=true;
         }

         else {
             ingreso=false;
         }

     }
     }
     return ingreso;
    }

    public List<RegistroUsuario> getUsuarios() {
       return controlPersis.getUsuarios();
    }


    public void borrarUsuario(int id) {
       controlPersis.borrarUsuario(id);
    }

    

    public RegistroUsuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);
    }

    public void editarUsuario(RegistroUsuario usu) {
        controlPersis.editarUsuario(usu);
    }






  


    }



