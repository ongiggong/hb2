package com.hbproject.example.controller;
import java.util.Date;
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

import javax.imageio.ImageIO;
import javax.swing.filechooser.FileSystemView;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

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

	
	
	@RequestMapping(value="/userNav")
	public String ajax(Model model) {
		List<Menu> list = menuservice.getMenu();
		model.addAttribute("cg", list);
		return "/navUser";		
	}
	
		
	
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
	public String menuboardManage(Model model, String idx, Menu menu, Pd pd, String key) {
		List<Pd> list = pdservice.selectPd(idx);
		model.addAttribute("pd", list);
		return"/mbMgr";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/menuDel/{idx}")
	public String menuDel(@PathVariable int idx) {
		
		menuservice.menuDel(idx);
		return "redirect:/menuMgr";
	}
	

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
		
		
		String filename1 = multiFile1.getOriginalFilename();
		String fileName  = System.currentTimeMillis()+"_"+filename1;
		
		String fileSavePath = "D:\\Users\\????\\Downloads\\burgerHo\\hb2\\src\\main\\resources\\static\\";
		File f1 = new File(fileSavePath + fileName);
		pd.setP_fileName(fileName);
		multiFile1.transferTo(f1);
		
		File thumb = new File(fileSavePath, "s_"+fileName);
		BufferedImage bo = ImageIO.read(f1);
		BufferedImage bi = new BufferedImage(100, 75, BufferedImage.TYPE_3BYTE_BGR);
		Graphics2D graphic = bi.createGraphics();
		graphic.drawImage(bo, 0, 0, 100, 75, null);
		ImageIO.write(bi, "jpg", thumb);
		pd.setP_thumb("s_"+fileName);
		pdservice.createPd(pd);
		return "redirect:/mbMgr";
		
		
		
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/pdUpdate/{idx}")
	public String pdUpdate(@PathVariable String idx, Model model, Menu menu) {
		List<Menu> listA = menuservice.getMenu();
		model.addAttribute("cg", listA);
		List<Pd> list = pdservice.selectPd(idx);
		model.addAttribute("pd", list);
		return "/pdUpdateForm";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/pdformUpdate/{idx}")
	public String pdUp(@PathVariable int idx, Pd pd) {
		pd.setP_idx(idx);
		pdservice.updatePd(pd);
		return "redirect:/mbMgr";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value="/pdDelete/{idx}")
	public String pdDelete(@PathVariable String idx, Model model, Menu menu) {
		pdservice.deletePd(idx);
		return "redirect:/mbMgr";
	}
	
	@RequestMapping(value="/menuSel", method= RequestMethod.GET)
	public String menuSel(@RequestParam("m_idx") String key, Model model, Pd pd) {
		List<Menu> list = menuservice.getsubCg(key);
		model.addAttribute("board", list);
		return "/boardForm";	
	}
	
	@RequestMapping(value="/menuBoard", method= RequestMethod.GET)
	public String menuboard(@RequestParam("p_cg") String key, Model model, Pd pd) {
		List<Pd> list = pdservice.getBoard(key);
		model.addAttribute("board", list);
		return "/menuPan";	
	}
}
	
		
		
		
	

