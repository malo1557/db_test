package hgd.jpa.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter @Setter
@Table(name="Book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="book_id")
    private Long bookId;

    private String title;

    private Integer price;

    @ManyToOne
    @JoinColumn(name="publisher_fid")
    private Publisher publisher;
}