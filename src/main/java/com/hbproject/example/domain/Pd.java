package com.hbproject.example.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Pd {
	private String p_name;
	private String p_cg;
	private int p_price;
	private int p_number;
	
	
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_cg() {
		return p_cg;
	}
	public void setP_cg(String p_cg) {
		this.p_cg = p_cg;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	
	
	
	
	
}