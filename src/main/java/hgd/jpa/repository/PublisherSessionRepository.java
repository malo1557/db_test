package hgd.jpa.repository;

import java.util.List;
import hgd.jpa.model.Publisher;
import jakarta.persistence.*;

public class PublisherSessionRepository {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa_web2PU");

    // Read (단건 조회)
    public Publisher selectPublisherByPrimaryKey(Long publisherId) {
        try (EntityManager em = emf.createEntityManager()) {
            return em.find(Publisher.class, publisherId);
        }
    }

    // Read (전체 조회)
    public List<Publisher> selectPublisherAll() {
        try (EntityManager em = emf.createEntityManager()) {
            return em.createQuery("SELECT p FROM Publisher p", Publisher.class).getResultList();
        }
    }

    // Create (등록)
    public Integer insertPublisher(Publisher publisher) {
        try (EntityManager em = emf.createEntityManager()) {
            EntityTransaction tx = em.getTransaction();
            try {
                tx.begin();
                em.persist(publisher);
                tx.commit();
                return 1;
            } catch (Exception e) {
                if (tx.isActive()) tx.rollback();
                throw e;
            }
        }
    }
}