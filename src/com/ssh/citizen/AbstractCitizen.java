package com.ssh.citizen;

/**
 * AbstractCitizen entity provides the base persistence definition of the
 * Citizen entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCitizen implements java.io.Serializable {

	// Fields

	private Long id;
	private Long danyuanNum;
	private String location;
	private String name;
	private String photoUrl;

	// Constructors

	/** default constructor */
	public AbstractCitizen() {
	}

	/** full constructor */
	public AbstractCitizen(Long danyuanNum, String location, String name, String photoUrl) {
		this.danyuanNum = danyuanNum;
		this.location = location;
		this.name = name;
		this.photoUrl = photoUrl;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getDanyuanNum() {
		return this.danyuanNum;
	}

	public void setDanyuanNum(Long danyuanNum) {
		this.danyuanNum = danyuanNum;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhotoUrl() {
		return this.photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

}