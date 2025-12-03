package hgd.jpa.service;

import java.util.List;
import hgd.jpa.model.Book;
import hgd.jpa.repository.BookSessionRepository;

public class BookService {

    private final BookSessionRepository repo = new BookSessionRepository();

    public Book selectBookByPrimaryKey(Long bookId) {
        return repo.selectBookByPrimaryKey(bookId);
    }

    public List<Book> selectBookAll() {
        return repo.selectBookAll();
    }

    public Integer insertBook(Book book) {
        return repo.insertBook(book);
    }
}