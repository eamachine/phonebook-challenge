
class Contact {
	  constructor(firstName, lastName, phone) {
	    this.firstName = firstName;
	    this.lastName = lastName;
	    this.phone = phone;
	  }
	}

	function addContat(contact) {
			
		var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
		xmlhttp.open("POST", "http://localhost:8081/PhoneBook/api/contacts");
		xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
		xmlhttp.send(JSON.stringify(contact));	
		console.log(JSON.stringify(contact));
	}

	function submitContact() {
		const name = document.getElementById("firstname").value;
		const last = document.getElementById("lastname").value;
		const phone = document.getElementById("phone").value;
		
		const contact = new Contact(name, last, phone);
		
		addContat(contact);
		
		fetchData();
	}

	function fetchData() {
		
		const URLAPI = 'http://localhost:8081/PhoneBook/api/contacts';
		
		const search = document.getElementById("inputsearch").value;
		const searchpath = `?search=` + search;
		
		fetch(URLAPI + searchpath)
	    .then(res => res.json())
	    .then((out) => {
	        let table = '';
	        
	        out.forEach(i => {
	        	 const item = `<tr>
	        	        <td>${i.firstName}</td>
	        	        <td>${i.lastName}</td>
	        	        <td>${i.phone}</td>
	        	        	</tr>`;
	        	 table = table + item;
	        });
	        
	        document.getElementById("datalist").innerHTML = table;
	        
	    }).catch(err => console.error(err));
	}
	
	function addEventListeners() {
		document.getElementById("buttonAdd").addEventListener("click", submitContact);
		document.getElementById("buttonSearch").addEventListener("click", fetchData);
	}	
	
	function init() {
		addEventListeners();
		fetchData();
	}

init();
