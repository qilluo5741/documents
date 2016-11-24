package com.java.contrller;
 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.entity.UserInfo;
import com.java.service.IUserService;
@Controller
@RequestMapping("user")
public class UserController  {
	@Autowired
	private IUserService service;
	@Autowired
	private HttpSession session;
	@RequestMapping("login")
	public @ResponseBody String login(ModelMap model,UserInfo user){
		//��½
		UserInfo userinfo=service.login(user);
		if(userinfo!=null){
			//��½�ɹ���
			session.setAttribute("user",userinfo);
			return "0";
		}
		return "1";
	}
	//��ѯ���û���Ȩ��
	@RequestMapping("index")
	public String index(ModelMap model){
		UserInfo userInfo=(UserInfo) session.getAttribute("user");
		if(userInfo==null){
			return "login";
		}
		session.setAttribute("menutype",service.getMenu(userInfo.getRole().getRoleId()));
		return "index";
	}
}
