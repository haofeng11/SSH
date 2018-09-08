package com.ssh.person;



/**
 * AbstractPerson entity provides the base persistence definition of the Person entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPerson  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String name;
     private String photo;


    // Constructors

    /** default constructor */
    public AbstractPerson() {
    }

    
    /** full constructor */
    public AbstractPerson(String name, String photo) {
        this.name = name;
        this.photo = photo;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getPhoto() {
        return this.photo;
    }
    
    public void setPhoto(String photo) {
        this.photo = photo;
    }
   








}