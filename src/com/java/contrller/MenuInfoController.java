package com.java.contrller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.entity.MenuInfo;
import com.java.service.IMenuInfoService;
import com.java.util.Pager;

@Controller
@RequestMapping("Menu")
public class MenuInfoController {
	private static final String Error = null;
	@Autowired
	private IMenuInfoService IMenuService;
	@Autowired
	private HttpSession session;
	/*��ѯȫ��*/
	@RequestMapping("selectAll")
	public String queryMenuInfo(Pager<MenuInfo> pager,ModelMap model){
		//������ʾ������
		pager.setPageSize(4);
		pager.setPageIndex(pager.getPageIndex());
		//ȡ������
		pager=IMenuService.selectAll(pager.getPageIndex(), pager.getPageSize());
		model.addAttribute("IMenuList", pager);
		//ȡ�ü���
		return "Jurisdiction/MenuInfoManger";
	}
	/*��ѯ����*/
	@RequestMapping("selectOneMenuInfo")
	public String selectOneMenuInfo(ModelMap model, String menuId){
		model.addAttribute("m", IMenuService.selectOneMenuInfo(menuId));
		if(this.IMenuService!=null){
			return "Jurisdiction/updateMenuInfo";
		}else{
			return Error;
		}
		
	}
	/*�޸�*/
	@RequestMapping("updateMenuInfo")
	public String updateMenuInfo(MenuInfo Menu) {
		if(IMenuService.updateMenuInfoBy(Menu)) {
			return "redirect:selectAll.action";
		} else {
			return Error;
		}
	}
}
