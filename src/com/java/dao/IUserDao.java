package com.java.dao;

import java.util.List;

import com.java.entity.MenuType;
import com.java.entity.UserInfo;

public interface IUserDao {
	public UserInfo selectOneByUserId(String userId);
	//µÇÂ½
	public UserInfo login(UserInfo user);
	//²éÑ¯²Ëµ¥
	public List<MenuType> getMenu(String roleId);
	
	public boolean adduser(UserInfo user);
}
