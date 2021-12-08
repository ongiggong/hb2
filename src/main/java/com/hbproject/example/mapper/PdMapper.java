package com.hbproject.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hbproject.example.domain.Menu;
import com.hbproject.example.domain.Pd;

@Mapper
public interface PdMapper {
	
	
	public void createPd(Pd pd);



	

}
