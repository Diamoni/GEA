
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.RecuperarContrasenia;
import logica.RegistroUsuario;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    RecuperarContraseniaJpaController contJPA= new  RecuperarContraseniaJpaController();
    RegistroUsuarioJpaController regJPA= new RegistroUsuarioJpaController();



    public void recupContrasenia(RecuperarContrasenia rec) {
        contJPA.create(rec);
    }

    public void regisUsuario(RegistroUsuario reg){
        regJPA.create(reg);
    }

    public List<RegistroUsuario> getUsuarios() {
        return regJPA.findRegistroUsuarioEntities();
    }

    public void borrarUsuario(int id)  {
        try {
            regJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public RegistroUsuario traerUsuario(int id) {
       return regJPA.findRegistroUsuario(id);
    }

    public void editarUsuario(RegistroUsuario usu) {
        try {
            regJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }





    


}
