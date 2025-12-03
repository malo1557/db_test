package hgd.jpa.service;

import java.util.List;
import hgd.jpa.model.Publisher;
import hgd.jpa.repository.PublisherSessionRepository;

public class PublisherService {

    private PublisherSessionRepository repo = new PublisherSessionRepository();

    public Publisher selectPublisherByPrimaryKey(Long publisherId) {
        return repo.selectPublisherByPrimaryKey(publisherId);
    }

    public List<Publisher> selectPublisherAll() {
        return repo.selectPublisherAll();
    }

    public Integer insertPublisher(Publisher publisher) {
        return repo.insertPublisher(publisher);
    }
}