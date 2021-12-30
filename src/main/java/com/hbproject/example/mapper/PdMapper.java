package com.hbproject.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hbproject.example.domain.Menu;
import com.hbproject.example.domain.Pd;

@Mapper
public interface PdMapper {
	
	
	public void createPd(Pd pd);

	public List<Pd> selectPd(String idx);

	public void deletePd(String idx);

	public List<Pd> selectBoard(String idx);





	

}
