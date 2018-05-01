<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>PhoneBook</title>
	<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<div class="container">
		<div class="pure-g">
			<div class="pure-u-1">
				<div class="header">
					<img class="logo" src="img/phonebook.png"/>
					<p>v 1.0</p>
				</div>
				
			</div>
		</div>
		<div class="pure-g">
		    <div class="pure-u-sm-1 pure-u-1-3">
		    	<div class="box">
		    		<h2><i class="fa fa-user-plus"></i>New contact</h2>
		    		<div class="pure-form">
					    <fieldset class="pure-group">
					        <input type="text" class="pure-input-1-2" placeholder="First Name" id="firstname">
					        <input type="text" class="pure-input-1-2" placeholder="Last Name" id="lastname">
					        <input type="tel" class="pure-input-1-2" placeholder="Phone" id="phone">
					    </fieldset>
					    <button class="pure-button pure-input-1-2 pure-button-primary" id="buttonAdd">
					    <i class="fa fa-user-plus"></i>Add</button>
					</div>
				</div>
			</div>
		    <div class="pure-u-sm-1 pure-u-1-3">
				<div class="box">
		    		<h2><i class="fa fa-search"></i>Search contact</h2>
		    		<div class="pure-form">
		    			<fieldset class="pure-group">
					    	<input type="text" class="pure-input-1-2" id="inputsearch">
					     </fieldset>
					    <button class="pure-button pure-input-1-2 pure-button-primary" id="buttonSearch">
					    <i class="fa fa-search"></i>Search</button>
					</div>
				</div>
			</div>
			<div class="pure-u-sm-1 pure-u-1-3">
				<div class="box">
		    		<h2><i class="fa fa-users"></i> Contacts</h2>
	    			<table class="pure-table">
					    <thead>
					        <tr>
					            <th>First Name</th>
					            <th>Last Name</th>
					            <th>Phone</th>
					        </tr>
					    </thead>
					
					    <tbody id="datalist">
					    </tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<script src="js/phonebook.js"></script>
	
</body>
</html>