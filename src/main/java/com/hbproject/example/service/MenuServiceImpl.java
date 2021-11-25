package com.hbproject.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbproject.example.domain.Menu;
import com.hbproject.example.mapper.MenuMapper;

@Service("MenuServiceImpl")
public class MenuServiceImpl implements MenuService {
	
	@Autowired MenuMapper menumapper;
	@Override
	public List<Menu> getCategory() {
		return menumapper.getCategory();
	}
	
	@Override
	public List<Menu> getMenu() {
		return menumapper.getMenu();
	}
		

	@Override
	public void cgUp(Menu menu) {
		menumapper.menuUp(menu);
	}
	
	@Override
	public void menuDel(int idx) {
		menumapper.menuDel(idx);
	}
	
	@Override
	public Menu getCgname(int idx) {
		return menumapper.menuName(idx);
	}
	
	@Override
	public List<Menu> getsubCg(String key) {
		return menumapper.menuSub(key);
	}
}

