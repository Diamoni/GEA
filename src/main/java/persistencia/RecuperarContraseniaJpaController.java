
package persistencia;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import logica.RecuperarContrasenia;
import persistencia.exceptions.NonexistentEntityException;

public class RecuperarContraseniaJpaController implements Serializable {

    public RecuperarContraseniaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
     public RecuperarContraseniaJpaController() {
        emf = Persistence.createEntityManagerFactory("GeaApp_PU");
    }

    public void create(RecuperarContrasenia recuperarContrasenia) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(recuperarContrasenia);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(RecuperarContrasenia recuperarContrasenia) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            recuperarContrasenia = em.merge(recuperarContrasenia);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = recuperarContrasenia.getId_recuperar();
                if (findRecuperarContrasenia(id) == null) {
                    throw new NonexistentEntityException("The recuperarContrasenia with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            RecuperarContrasenia recuperarContrasenia;
            try {
                recuperarContrasenia = em.getReference(RecuperarContrasenia.class, id);
                recuperarContrasenia.getId_recuperar();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The recuperarContrasenia with id " + id + " no longer exists.", enfe);
            }
            em.remove(recuperarContrasenia);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<RecuperarContrasenia> findRecuperarContraseniaEntities() {
        return findRecuperarContraseniaEntities(true, -1, -1);
    }

    public List<RecuperarContrasenia> findRecuperarContraseniaEntities(int maxResults, int firstResult) {
        return findRecuperarContraseniaEntities(false, maxResults, firstResult);
    }

    private List<RecuperarContrasenia> findRecuperarContraseniaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(RecuperarContrasenia.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public RecuperarContrasenia findRecuperarContrasenia(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(RecuperarContrasenia.class, id);
        } finally {
            em.close();
        }
    }

    public int getRecuperarContraseniaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<RecuperarContrasenia> rt = cq.from(RecuperarContrasenia.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
