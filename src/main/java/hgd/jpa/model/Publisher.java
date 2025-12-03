package hgd.jpa.model;

import java.util.ArrayList;
import java.util.List;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter @Setter
public class Publisher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "publisher_id")
    private Long publisherId;

    @Column(name = "publisher_name")
    private String publisherName;

    // fetch = EAGER는 지워서 기본값(LAZY) 사용 (성능상 더 좋음)
    @OneToMany(mappedBy = "publisher", cascade = CascadeType.ALL)
    private List<Book> books = new ArrayList<>();

    // 연관관계 편의 메서드 (유지)
    public void addBook(Book book) {
        this.books.add(book);
        book.setPublisher(this);
    }
}