package com.hbproject.example.domain;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


public class User implements UserDetails {
	
	
	private static final long serialVersionUID = 1L;
	
	private String username;	
	private String password;		
	private String uName;		
	private String uAge;
	private String uPhone;
	private String uAuth;
	
	private Collection<? extends GrantedAuthority> authorities;
	
	private boolean isAccountNonExpired;
	private boolean isAccountNonLocked;
	private boolean isCredentialsNonExpired;
	private boolean isEnabled;



	
	

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", uName=" + uName + ", uAge=" + uAge
				+ ", uPhone=" + uPhone + ", uAuth=" + uAuth + ", authorities=" + authorities + ", isAccountNonExpired="
				+ isAccountNonExpired + ", isAccountNonLocked=" + isAccountNonLocked + ", isCredentialsNonExpired="
				+ isCredentialsNonExpired + ", isEnabled=" + isEnabled + "]";
	}
	public void setusername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuAge() {
		return uAge;
	}
	public void setuAge(String uAge) {
		this.uAge = uAge;
	}
	
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuAuth() {
		return uAuth;
	}
	public void setuAuth(String uAuth) {
		this.uAuth = uAuth;
	}
	public Collection<? extends GrantedAuthority> getAuthorities(Collection<? extends GrantedAuthority> authorities) {
		return authorities;
	}
	public boolean isAccountNonExpired(boolean isAccountNonExpired) {
		return isAccountNonExpired;
	}
	public boolean isAccountNonLocked(boolean isAccountNononLocked) {
		return isAccountNonLocked;
	}
	public boolean isCredentialsNonExpired(boolean isCredentialsNonExpired) {
		return isCredentialsNonExpired;
	}
	public boolean isEnabled(boolean isEnabled) {
		return isEnabled;
	}
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
	public void setAccountNonExpired(boolean isAccountNonExpired) {
		this.isAccountNonExpired = isAccountNonExpired;
	}
	public void setAccountNonLocked(boolean isAccountNonLocked) {
		this.isAccountNonLocked = isAccountNonLocked;
	}
	public void setCredentialsNonExpired(boolean isCredentialsNonExpired) {
		this.isCredentialsNonExpired = isCredentialsNonExpired;
	}
	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return isAccountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return isAccountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return isCredentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return isEnabled;
	}


}
