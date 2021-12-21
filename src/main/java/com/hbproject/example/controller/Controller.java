package com.hbproject.example.controller;
import java.util.List;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.multipart.MultipartFile; 
import javax.swing.filechooser.FileSystemView; 
import java.io.File;
import java.io.IOException;

import com.hbproject.example.domain.Menu;
import com.hbproject.example.domain.Pd;
import com.hbproject.example.domain.User;
import com.hbproject.example.service.PdService;
import com.hbproject.example.service.UserService;
import com.hbproject.example.service.MenuService;




@org.springframework.stereotype.Controller

public class Controller<MulitipartHttpServletRequest> {
	
	
	
	@Autowired UserService userservice;
	@Autowired MenuService menuservice;
	@Autowired PdService pdservice;
	
	
	
	@RequestMapping("/")
	public String home(Model model) {
			
		return"/main";
	}
	
	@RequestMapping(value="/loginForm")
	public String login() {
		return "/loginForm";
		
	}
	
	@RequestMapping(value="/login")
	public String beforeLogin(Model model) {
		return "/login";
	}
	
	@RequestMapping(value="/loginSuc")
	public String loginSuc(Model model) {
		return "/loginSuc";
	}
	
	@RequestMapping(value="/logout")
	public String logOut() {
		return"/logout";
	}
	
	@RequestMapping(value="/logoutSuc")
	public String logoutSuc() {
		return"/logoutSuc";
	}

	
	@Secured("ROLE_USER")
	@RequestMapping(value="/userNav")
	public String ajax(Model model) {
		List<Menu> list = menuservice.getMenu();
		model.addAttribute("cg", list);
		return "/navUser";		
	}
	
		
	@Secured("ROLE_USER")
	@RequestMapping(value="/main")
	public String main(Model model) {
		List<Menu> list = menuservice.getMenu();
		model.addAttribute("cg", list);
		return "/main";
	}
	
	@RequestMapping(value="/signupForm")
	public String join() {
		return "/signupForm";
	}

	
	@RequestMapping(value="/signUp", method= RequestMethod.POST)
	public String signUp(User user) {
		
		String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
		user.setPassword(encodedPassword);
		user.setAccountNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));  
		userservice.createUser(user);
		userservice.createAuthorities(user);
		return "/signupSuc";
		
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/adminMain")
	public String adminPage() {
		return"/adminMain";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/menuMgr")
	public String menuMgr(Model model, Menu menu) {
		List<Menu> list = menuservice.getCategory();
		model.addAttribute("cg", list);
		return"/menuMgr";
	}
	
		
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/cg-update", method= RequestMethod.POST)
	public String menuUp(Model model, Menu menu) {
		
		menuservice.cgUp(menu);
		List<Menu> list = menuservice.getCategory();
		model.addAttribute("cg", list);
		return"/menuMgr";
		
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/mbMgr")
	public String menuboardManage(Model model, Menu menu, Pd pd, String key) {
		List<Pd> list = pdservice.selectPd();
		model.addAttribute("pd", list);
		return"/mbMgr";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/menuDel/{idx}")
	public String menuDel(@PathVariable int idx) {
		
		menuservice.menuDel(idx);
		return "redirect:/menuMgr";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/menu/{idx}")
	public String menuCg(Menu menu, Model model, String key, @PathVariable int idx) {
		
		key = Integer.toString(idx);
		menu = menuservice.getCgname(idx);
		model.addAttribute("cgName", menu);
		List<Menu> list = menuservice.getsubCg(key);
		model.addAttribute("subCG", list);
		return "/menuBoard";
		
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/pdRegister")
	public String menuCg(Model model, Menu menu) {
		
		List<Menu> list = menuservice.getMenu();
		model.addAttribute("cg", list);
		return "/pdRegisterForm";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/subSelect", method= RequestMethod.POST)
	public String menuCg(Model model, Menu menu, String key) {
		key = String.valueOf(menu.getM_idx());
		List<Menu> subCglist = menuservice.getsubCg(key);
		model.addAttribute("subCg",subCglist);
		return "/pdForm";
	}
	
		
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/pdformUpload", method= RequestMethod.POST)
	public String pdformUpload(Pd pd) throws IllegalStateException, IOException {
		
		MultipartFile multiFile1 = pd.getFile1();
		MultipartFile multiFile2 = pd.getFile2();
		
		String filename1 = multiFile1.getOriginalFilename();
		String filename2 = multiFile2.getOriginalFilename();
		
		String fileSavePath = "C:\testUpload";
		File f1 = new File(fileSavePath + filename1);
		File f2 = new File(fileSavePath + filename2);
		
		multiFile1.transferTo(f1);
		multiFile2.transferTo(f2);
		
		pdservice.createPd(pd);
		return "/mbMgr";
		
	}
							  
		
	}
	
		
		
		
	

