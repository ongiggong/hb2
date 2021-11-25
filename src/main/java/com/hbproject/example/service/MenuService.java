package com.hbproject.example.service;

import java.util.List;

import com.hbproject.example.domain.Menu;

public interface MenuService {
	
	public List<Menu> getCategory();
	
	
	public void cgUp(Menu menu);

	
	public void menuDel(int idx);

	public List<Menu> getMenu();

	public Menu getCgname(int idx);

	public List<Menu> getsubCg(String key);


}
