/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.ssh.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.ssh.citizen.Citizen;
import com.ssh.citizen.CitizenDAO;
import com.ssh.common.Global;
import com.ssh.struts.form.SearchForm;

import antlr.StringUtils;

/** 
 * MyEclipse Struts
 * Creation date: 09-09-2018
 * 
 * XDoclet definition:
 * @struts.action path="/search" name="searchForm" input="/form/search.jsp" scope="request" validate="true"
 */
public class SearchAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
//		SearchForm searchForm = (SearchForm) form;// TODO Auto-generated method stub
//		String searchStr = searchForm.getSearchStr();
//		Citizen instance = new Citizen();
//		instance.setId(Long.parseLong(searchStr));
//		CitizenDAO citizenDAO = (CitizenDAO) Global.getDAO(CitizenDAO.TAG);
//		List<?> list = citizenDAO.findByIdNum(searchStr);
//		if (null == list || 0 == list.size()) {
//			request.setAttribute("error", "未搜索到结果，请核实身份证号码！");
//			return null;
//		}
//		request.setAttribute("result", list);
		return mapping.findForward("searchSuccess");
	}
}