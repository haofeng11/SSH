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
	public Citizen(Long danyuanNum, String location, String name,
			String photoUrl) {
		super(danyuanNum, location, name, photoUrl);
	}

}
