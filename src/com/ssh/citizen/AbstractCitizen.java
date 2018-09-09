package com.ssh.citizen;

/**
 * AbstractCitizen entity provides the base persistence definition of the
 * Citizen entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCitizen implements java.io.Serializable {

	// Fields

	private Long id;
	private String username;
	private String idNum;
	private String idCardUrl;
	private String housedeedUrl;

	// Constructors

	/** default constructor */
	public AbstractCitizen() {
	}

	/** full constructor */
	public AbstractCitizen(String username, String idNum, String idCardUrl, String housedeedUrl) {
		this.username = username;
		this.idNum = idNum;
		this.idCardUrl = idCardUrl;
		this.housedeedUrl = housedeedUrl;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getIdNum() {
		return this.idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	public String getIdCardUrl() {
		return this.idCardUrl;
	}

	public void setIdCardUrl(String idCardUrl) {
		this.idCardUrl = idCardUrl;
	}

	public String getHousedeedUrl() {
		return this.housedeedUrl;
	}

	public void setHousedeedUrl(String housedeedUrl) {
		this.housedeedUrl = housedeedUrl;
	}

}