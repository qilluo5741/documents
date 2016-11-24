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
	 * ��ѯ�����û�
	 */
	public UserInfo selectOneByUserId(String userId) {
		return dao.selectOneByUserId(userId);
	}
	/**
	 * ��½
	 */
	public UserInfo login(UserInfo user) {
		return dao.login(user);
	}
	/**
	 * ��ѯ�˵�
	 */
	public List<MenuType> getMenu(String roleId) {
		return dao.getMenu(roleId);
	}
	//����û�
	public boolean adduser(UserInfo user) {
		return dao.adduser(user);
	}
}
