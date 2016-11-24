package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.java.dao.IUserDao;
import com.java.entity.MenuType;
import com.java.entity.UserInfo;
@Service
@Transactional(readOnly=false,propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao dao;
	
	/**
	 * 查询单个用户
	 */
	public UserInfo selectOneByUserId(String userId) {
		return dao.selectOneByUserId(userId);
	}
	/**
	 * 登陆
	 */
	public UserInfo login(UserInfo user) {
		return dao.login(user);
	}
	/**
	 * 查询菜单
	 */
	public List<MenuType> getMenu(String roleId) {
		return dao.getMenu(roleId);
	}
	//添加用户
	public boolean adduser(UserInfo user) {
		return dao.adduser(user);
	}
}
