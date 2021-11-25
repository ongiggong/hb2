package com.hbproject.example.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.core.GrantedAuthority;

import com.hbproject.example.domain.User;


@Mapper
public interface UserMapper {

	public void createUser(User user);

	public void createAuthority(User user);

	public User readUser(String username);

	public List<GrantedAuthority> readAuthorities(String username);
	

}
