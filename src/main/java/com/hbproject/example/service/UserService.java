package com.hbproject.example.service;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.hbproject.example.domain.User;


public interface UserService extends UserDetailsService{

	public void createUser(User user); 
	
	public User readUser(String useraname);
	
	public void createAuthorities(User user);
	
	Collection<GrantedAuthority> getAuthorities(String username);

	

}


