package hgd.jpa.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter @Setter
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    private  Long id;

    private String title;

    private Integer price;

    @ManyToOne
    @JoinColumn(name = "publisher_fid")
    private  Publisher publisher;
}
//