package hgd.jpa.repository;

import java.util.List;
import hgd.jpa.model.Book;
import jakarta.persistence.*;

public class BookSessionRepository {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa_web2PU");

    // Read (단건 조회)
    public Book selectBookByPrimaryKey(Long bookId) {
        try (EntityManager em = emf.createEntityManager()) {
            return em.find(Book.class, bookId);
        }
    }


    // Create (등록)
    public Integer insertBook(Book book) {
        try (EntityManager em = emf.createEntityManager()) {
            EntityTransaction tx = em.getTransaction();
            try {
                tx.begin();
                em.persist(book);
                tx.commit();
                return 1;
            } catch (Exception e) {
                if (tx.isActive()) tx.rollback();
                throw e;
            }
        }
    }
}