package com.ssh.citizen;

/**
 * Citizen entity. @author MyEclipse Persistence Tools
 */
public class Citizen extends AbstractCitizen implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Citizen() {
	}

	/** full constructor */
	public Citizen(String username, String idNum, String idCardUrl, String housedeedUrl) {
		super(username, idNum, idCardUrl, housedeedUrl);
	}

}
