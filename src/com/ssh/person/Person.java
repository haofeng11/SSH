package com.ssh.person;



/**
 * Person entity. @author MyEclipse Persistence Tools
 */
public class Person extends AbstractPerson implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public Person() {
    }

    
    /** full constructor */
    public Person(String name, String photo) {
        super(name, photo);        
    }
   
}
