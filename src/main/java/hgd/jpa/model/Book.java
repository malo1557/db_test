package hgd.jpa.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter @Setter  // 클래스 레벨에 달면 모든 필드에 적용됨
public class Book { // Serializable 제거 (필수 아님)

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id") // DB 컬럼이 book_id라면 남기는 게 안전 (설정 모를 땐 유지)
    private Long bookId;

    //컴럼명이 스네이크 표기법이라면
    //@Column(name = "book_title")
    private String title; // @Column 생략

    private Integer price; // @Column 생략

    @ManyToOne // (fetch = EAGER) 생략 (기본값임)
    @JoinColumn(name = "publisher_fid") // 이건 유지 (fid 이름 매핑용)
    private Publisher publisher;
}