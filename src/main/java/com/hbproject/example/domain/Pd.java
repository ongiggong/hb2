package com.hbproject.example.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Pd {
	
	private int p_idx;
	private String p_name;
	private String p_cg;
	private int p_price;
	private int p_number;
	private String p_originFileName;
	private String p_filePath;
	private Long p_fileSize;
	
	public int getP_idx() {
		return p_idx;
	}
	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}
	
	public String getP_originFileName() {
		return p_originFileName;
	}
	public void setP_originFileName(String p_originFileName) {
		this.p_originFileName = p_originFileName;
	}
	public String getP_filePath() {
		return p_filePath;
	}
	public void setP_filePath(String p_filePath) {
		this.p_filePath = p_filePath;
	}
	public Long getP_fileSize() {
		return p_fileSize;
	}
	public void setP_fileSize(Long p_fileSize) {
		this.p_fileSize = p_fileSize;
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