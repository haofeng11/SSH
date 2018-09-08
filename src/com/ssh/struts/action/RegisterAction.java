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

import com.ssh.common.Global;
import com.ssh.struts.form.RegisterForm;
import com.ssh.user.User;
import com.ssh.user.UserDAO;

/** 
 * MyEclipse Struts
 * Creation date: 09-08-2018
 * 
 * XDoclet definition:
 * @struts.action path="/register" name="registerForm" input="/jsp/register.jsp" scope="request" validate="true"
 */
public class RegisterAction extends Action {
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
	 public ActionForward execute(ActionMapping mapping, ActionForm form,
	            HttpServletRequest request, HttpServletResponse response) {
	       
	        //填写的注册信息
	        RegisterForm registerForm = (RegisterForm) form;
	        String username = registerForm.getUsername();
	        String password = registerForm.getPassword();
	        String nickname = registerForm.getNickname();
	       
	        //检查用户名是否已被注册
	        UserDAO userDAO = (UserDAO)Global.getDAO("UserDAO");
	        List<?> list = userDAO.findByUsername(username);
	       
	        //用户名已被注册，返回注册页面
	        if(list.size() > 0){
	            request.setAttribute("message", "该用户名已被注册");
	            return mapping.findForward("registerFail");
	        }
	       
	        //插入新用户
	        User user = new User();
	        user.setUsername(username);
	        user.setPassword(password);
	        user.setNickname(nickname);
	        userDAO.save(user);
	        request.setAttribute("message", "注册成功,请登录:" + nickname);
	        return mapping.findForward("registerSuccess");
	    }
}