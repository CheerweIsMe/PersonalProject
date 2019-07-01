package com.cw.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cw.pojo.SalerInfo;
import com.cw.pojo.UserInfo;
import com.cw.service.InfoWithUAndS;

@Controller
@RequestMapping("")
public class UAndSInfoController {
	@Autowired
	public InfoWithUAndS ss;

	@RequestMapping(value = "registerUser", method = RequestMethod.POST)
	public String registerUser(String name, String email, String password,Model model) {
		int findUser = ss.findUser(email);

		if (findUser == 0) {
			ss.regist(name, email, password);
			// System.out.println("可以注册");
			model.addAttribute("result",1);
			return "login";
		} else {
			// System.out.println("注册失败");
			model.addAttribute("result",0);
			return "register";
		}
	}

	@RequestMapping(value = "loginUser", method = RequestMethod.POST)
	public String loginUser(UserInfo user, HttpSession session,Model model) {
		// 调用service方法
		user = ss.login(user.getEmail(), user.getPassword());

		if (user != null) {
			session.setAttribute("u", user);
			model.addAttribute("result",1);
			return "index";
			
		}
		model.addAttribute("result",0);
		return "login";

	}
	//修改买家信息
	@RequestMapping(value = "updateUser", method = RequestMethod.POST)
	public String UpdateUser(@RequestParam String name, @RequestParam String password,Model model) {
			ss.updateUser(name,password);
		 model.addAttribute("result",1);
		return "forward:outLogin.do";
	}
	
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		session.invalidate();
		return "index";
		
	}
	
	@RequestMapping(value = "registerSaler", method = RequestMethod.POST)
	public String registerSaler(String name, String email, String password,Model model) {
		int findSaler = ss.findSaler(email);

		if (findSaler == 0) {
			ss.registSaler(name, email, password);
			// System.out.println("可以注册");
			model.addAttribute("result",1);
			return "salerlogin";
		} else {
			// System.out.println("注册失败");
			model.addAttribute("result",0);
			return "salerregister";
		}
	}

	@RequestMapping(value = "loginSaler", method = RequestMethod.POST)
	public String loginSaler(SalerInfo saler, HttpSession session,Model model) {
		// 调用service方法
		saler = ss.loginSaler(saler.getEmail(), saler.getPassword());

		if (saler != null) {
			session.setAttribute("s", saler);
			model.addAttribute("result",1);
			return "index";
			
		}
		model.addAttribute("result",0);
		return "salerlogin";

	}
	
	//修改卖家信息
		@RequestMapping(value = "updateSaler", method = RequestMethod.POST)
		public String UpdateSaler(@RequestParam String name, @RequestParam String password,Model model) {
			 ss.updateSaler(name,password);
			
			return "forward:outLogin.do";
		}
		
	
}