/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.ssh.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 09-11-2018
 * 
 * XDoclet definition:
 * @struts.form name="addForm"
 */
public class AddForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** id property */
	private String id;

	/** danyuanNum property */
	private String danyuanNum;

	/** photoURL property */
	private String photoURL;

	/** location property */
	private String location;

	/** name property */
	private String name;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the id.
	 * @return String
	 */
	public String getId() {
		return id;
	}

	/** 
	 * Set the id.
	 * @param id The id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/** 
	 * Returns the danyuanNum.
	 * @return String
	 */
	public String getDanyuanNum() {
		return danyuanNum;
	}

	/** 
	 * Set the danyuanNum.
	 * @param danyuanNum The danyuanNum to set
	 */
	public void setDanyuanNum(String danyuanNum) {
		this.danyuanNum = danyuanNum;
	}

	/** 
	 * Returns the photoURL.
	 * @return String
	 */
	public String getPhotoURL() {
		return photoURL;
	}

	/** 
	 * Set the photoURL.
	 * @param photoURL The photoURL to set
	 */
	public void setPhotoURL(String photoURL) {
		this.photoURL = photoURL;
	}

	/** 
	 * Returns the location.
	 * @return String
	 */
	public String getLocation() {
		return location;
	}

	/** 
	 * Set the location.
	 * @param location The location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}

	/** 
	 * Returns the name.
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/** 
	 * Set the name.
	 * @param name The name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
}