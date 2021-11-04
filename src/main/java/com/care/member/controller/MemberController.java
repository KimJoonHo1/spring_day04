package com.care.member.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.member.dto.MemberDTO;
import com.care.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	@Qualifier("service")
	private MemberService service;
	
	public MemberController() {
		System.out.println("컨트롤러 생성1111");
	}
	
	@RequestMapping("/member/index")
	public String index() {
		return "/member/index";
	}
	
	@RequestMapping(value = "/member/loginController", method=RequestMethod.POST)
	public String login(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		MemberDTO dto = new MemberDTO();
		dto.setId(req.getParameter("id"));
		dto.setPwd(req.getParameter("pwd"));
		
		String result = service.login(dto);
		
		model.addAttribute("result", result);
		
		return "/member/loginResult";
	}
	
	@RequestMapping("/member/join")
	public String join() {
		return "/member/join";
	}
	
	@RequestMapping(value = "/member/joinController", method = RequestMethod.POST)
	public String joinController(HttpServletRequest req, Model model) {
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		MemberDTO dto = new MemberDTO();
		dto.setId(req.getParameter("id"));
		dto.setPwd(req.getParameter("pwd"));
		dto.setName(req.getParameter("name"));
		
		System.out.println("service : " + service);
		
		int result = service.join(dto);
		model.addAttribute("result", result);
		
		return "/member/joinResult";
		
	}
	
	@RequestMapping("/member/member")
	public String member(Model model) {
		
		ArrayList<MemberDTO> list = service.getList();
		model.addAttribute("list", list);
		
		return "/member/member";
	}
	
	@RequestMapping("/member/info")
	public String info(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		if(id == null) {
			return "/member/info";
		}
		
		MemberDTO dto = service.info(id);
		
		model.addAttribute("user", dto);
		
		return "/member/info";
	}
}
