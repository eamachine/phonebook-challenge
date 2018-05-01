package api.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import api.models.Contact;

@Repository
public interface ContactRepository extends CrudRepository<Contact, Long>{

}
