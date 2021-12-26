package com.hbproject.example.service;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;


import com.hbproject.example.domain.Pd;
import com.hbproject.example.domain.User;


public interface PdService {

	public void createPd(Pd pd);

	public List<Pd> selectPd(String idx);

	public void deletePd(String idx);

	
	
	
	

}


