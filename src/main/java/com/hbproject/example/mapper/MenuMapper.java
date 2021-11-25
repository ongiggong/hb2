package com.hbproject.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hbproject.example.domain.Menu;

@Mapper
public interface MenuMapper {
	
	public List<Menu> getCategory();

	public void menuUp(Menu menu);

	public void menuDel(int idx);

	public List<Menu> getMenu();

	public Menu menuName(int idx);

	public List<Menu> menuSub(String key);

	

}
