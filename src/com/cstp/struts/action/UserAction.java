/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.cstp.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.cstp.dao.UserDao;
import com.cstp.struts.form.UserForm;
import com.cstp.table.Users;

/** 
 * 
 * XDoclet definition:
 * @struts.action path="/user" name="userForm" parameter="status" scope="request" validate="true"
 */
public class UserAction extends DispatchAction {
	
	UserDao dao = new UserDao();
	//��¼
	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		UserForm userForm = (UserForm) form;
		String name = userForm.getName();
		String password = userForm.getPassword();
		Users user = dao.getUserByName(name);
		if(user == null){
			return mapping.findForward("index");
		}else if(! user.getPassword().equals(password)){
			return mapping.findForward("index");
		}else{
			request.getSession().setAttribute("user", user);
			return mapping.findForward("user");
		}
	}
	//�û�ע��
	public ActionForward regist(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		UserForm userForm = (UserForm)form;
		String name = userForm.getName();
		String password = userForm.getPassword();
		Users user = dao.getUserByName(name);
		if(name.trim() == ""){
			return mapping.findForward("regist");
		}else if(user != null){
			return mapping.findForward("regist");
		}else{
			Users reguser = new Users();
			reguser.setName(name);
			reguser.setPassword(password);
			dao.save(reguser);
			return mapping.findForward("index");
		}
	}
	//ע��
	public ActionForward logout(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("user");
		if(request.getSession().getAttribute("hireinfo") != null){
			request.getSession().removeAttribute("hireinfo");
		}
		return mapping.findForward("index");
	}
}