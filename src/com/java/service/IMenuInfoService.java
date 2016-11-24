package com.java.service;

import java.util.List;

import com.java.entity.MenuInfo;
import com.java.util.Pager;

public interface IMenuInfoService {
	public MenuInfo selectOneMenuInfo(String menuId);
	public boolean updateMenuInfoBy(MenuInfo Menu);
	public List<MenuInfo> selectAllList();
	public Pager<MenuInfo> selectAll(int pageIndex, int pageSize);
}
