package com.hbproject.example.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.hbproject.example.domain.Pd;
import com.hbproject.example.domain.User;
import com.hbproject.example.mapper.MenuMapper;
import com.hbproject.example.mapper.PdMapper;




@Service
public class PdServiceImpl implements PdService {
	
	@Autowired
	   PdMapper pdMapper;
	
	
	
	@Override
	public void createPd(Pd pd) {
		pdMapper.createPd(pd);
	}
	
	
	@Override
	public void updatePd(Pd pd) {
		pdMapper.updatePd(pd);
	}
	
	@Override
	public List<Pd> selectPd(String idx) {
		return pdMapper.selectPd(idx);
	}
	
	@Override
	public List<Pd> getBoard(String idx) {
		return pdMapper.selectBoard(idx);
	}
	
	@Override
	public void deletePd(String idx) {
		pdMapper.deletePd(idx);
	}
	
}
