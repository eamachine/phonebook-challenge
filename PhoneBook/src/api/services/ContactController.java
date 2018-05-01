package api.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import api.models.Contact;
import api.repository.ContactRepository;

/**
 * Controller for Contact, it exposes search and add methods logic as a RESTfull CRUD Pattern
 * @author Carlos G
 *
 */
@RestController
@RequestMapping("/api/contacts")
@CrossOrigin(origins = "*")
public class ContactController {
    
	
	@Autowired
	ContactRepository repository;
	
    /**
     * This method exposes the contacts, it lets filter on them
     * @param search text to query in the Contact info
     * @return list of contacts 
     */
	@RequestMapping(method = RequestMethod.GET)
	public List<Contact> GetContacts(
    		@RequestParam(required = false, name = "search") String search) {
        
		List<Contact> contacts = (List<Contact>) repository.findAll();
        
        if(search != null && !search.isEmpty()) {
        	String searchText = search.toLowerCase();
        	
        	contacts = contacts.stream().filter( c ->
        	c.getFirstName().toLowerCase().contains(searchText) 
        	|| c.getLastName().toLowerCase().contains(searchText) 
        	|| c.getPhone().toLowerCase().contains(searchText)).collect(Collectors.toList());;
        }
        
        return contacts;
    }
    
	/**
	 * Insertion method
	 * @param contact contact to add
	 */
    @RequestMapping(method = RequestMethod.POST)
    public void addContact(@RequestBody Contact contact) {
        
        repository.save(contact);
    }
}