package com.hbproject.example.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Pd {
	
	private int p_idx;
	private String p_name;
	private String p_cg;
	private int p_price;
	private int p_number;
	private String p_fileName;
	private String p_thumb;
	
	public String getP_thumb() {
		return p_thumb;
	}
	public void setP_thumb(String p_thumb) {
		this.p_thumb = p_thumb;
	}
	public String getP_fileName() {
		return p_fileName;
	}
	public void setP_fileName(String p_fileName) {
		this.p_fileName = p_fileName;
	}
	private String p_check;
	public String getP_check() {
		return p_check;
	}
	public void setP_check(String p_check) {
		this.p_check = p_check;
	}
	private MultipartFile file1;
	private MultipartFile file2;
	
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}
	public int getP_idx() {
		return p_idx;
	}
	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}
	
	
	
	
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