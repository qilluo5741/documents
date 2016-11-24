package com.java.dao;

import java.util.List;

import com.java.entity.MenuType;
import com.java.entity.UserInfo;

public interface IUserInfoDao {
	
	public UserInfo selectOneByUserId(String userId);
	//��½
	public UserInfo login(UserInfo user);
	//��ѯ�˵�
	public List<MenuType> getMenu(String roleId);
}
