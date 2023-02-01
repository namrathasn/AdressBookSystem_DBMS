#Create a database using 'CREATE'command like:address_book_system.
 CREATE DATABASE address_book_system;
 
 #View a all databases.
	SHOW databases;
    #Use particular database using 'USE' command. 
	USE address_book_system;                                 #Database changed
	#View database.
	SELECT DATABASE();
    
    #Create a table using 'CREATE' command.
	CREATE TABLE address_book
	(
    	id               INT unsigned NOT NULL AUTO_INCREMENT,	#Unique ID for the record.
    	first_name       VARCHAR(50) NOT NULL,			#First Names of Address Book.
    	last_name        VARCHAR(50),				#Last Names of Address Book.
    	address          VARCHAR(150) NOT NULL,			#Address of Address Book.
    	city             VARCHAR(30) NOT NULL,			#City of Address Book.
    	state            VARCHAR(30) NOT NULL,			#State of Address Book.
    	zip              INT(6) NOT NULL,				#Zip of Address Book.
    	phone_number     varchar(13) NOT NULL,				#Phone number of Addess Book.
    	email            VARCHAR(50) NOT NULL,			#Email of Address Book.
    	PRIMARY KEY(id)						#Make id primary key.
	);
    #View the table using 'DESCRIBE'command.
	DESCRIBE address_book;
    
    #Insert a data into table using 'INSERT' command.
	INSERT INTO address_book(first_name, last_name, address, city , state , zip , phone_number, email) VALUES
	    ('Rekha','Patil','GKW Layout', 'Bangalore', 'Kar',560058, 8095592954, 'patilrekha.1206@gmail.com'),
		('Rahmi','Patil','RajajiNagar','Bangalore','Kar', 560057,9716277712,'rashmi123@gmail.com'),
    	('Riya','Patil','Peenya','Bngalore', 'Kar', 560059,983734421,'riya15@gmail.com'),
    	('Ramya','Patil','Peenya','Bangalore','kar',560059,8764727523,'ramya12@gmail.com');
        #View a table in a table.
	    SELECT * FROM address_book;
        DROP TABLE address_book;
        
	  #Add a column in a table like:basic_pay;
	 ALTER TABLE employee_payroll ADD basic_pay Double NOT NULL AFTER state;
     
	#Add a column in a table like:deduction
	 ALTER TABLE employee_payroll ADD deduction Double NOT NULL AFTER basic_pay;
     
     #Update one of the data from the table.
     SET SQL_SAFE_UPDATES=0;
     # It is use to update the data from the table using where clause.
     UPDATE address_book set city = 'Mangalore' WHERE first_name = 'Riya';	
     # Retrive the data from the table.
     SELECT * FROM address_book;
     
    # // Delete the entry of the person 
    
        # Deleted the data where name is Ramya 
        DELETE from address_book WHERE first_name = 'Ramya';
        # Retrive the data from the table .
        SELECT * FROM address_book;
        
        #UC6 //Retrive person belonging to specific city or state
        
        # Retrive the data according to state and city
	   SELECT * FROM address_book WHERE city="Bangalore" AND state="Kar";
       
       #UC7 //Count the city and state
       
       #To count the state
       SELECT state, COUNT(first_name) FROM address_book GROUP BY state;
       #To count the city
       SELECT city, COUNT(first_name) FROM address_book GROUP BY city;			
        
        #UC8 // Retrive data in ascending order

		#To retive data in ascending order
        SELECT * FROM address_book WHERE city="Bangalore"  ORDER BY first_name ASC;
        
        #UC9 // ALTER Address Book table with name and Type
        
	   # Alter is use to add one feild name as addressbook_type.
       alter table address_book add addressbook_type varchar(150);	
       select * from address_book;
       # Updating the table by adding the value into the addressbook_type feild using name.
       UPDATE address_book SET addressbook_type="family" WHERE first_name="Rahmi";
	   UPDATE address_book SET addressbook_type="family" WHERE first_name="Rekha";
        UPDATE address_book SET addressbook_type="friend" WHERE first_name="Riya";	
        select * from address_book;
        
        #UC10 // COUNT by type
        # Here i use count to count the each type using group by clause.
        SELECT first_name,addressbook_type,COUNT(addressbook_type) FROM address_book GROUP BY first_name;		
       
     
