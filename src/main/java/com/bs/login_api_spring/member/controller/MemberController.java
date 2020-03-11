package com.bs.login_api_spring.member.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bs.login_api_spring.member.Member;
import com.bs.login_api_spring.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

//	MemberService service = new MemberService();
//	@Autowired
	@Resource(description = "memService")
	MemberService service;
	
	@RequestMapping(value="/memJoin", method=RequestMethod.POST)
	public String memJoin(Member member) {
		
		service.memberRegister(member);
		
		return "memJoinOk";
	}
	
	@RequestMapping(value="/memLogin", method=RequestMethod.POST)
	public String memLogin(Model model, 
			@RequestParam("memId") String memId, 
			@RequestParam("memPw") String memPw) {
		
		Member member = service.memberSearch(memId, memPw);
		
		try {
			System.out.println(member);
			System.out.println(member.getMemId());
			model.addAttribute("memId", member.getMemId());
			model.addAttribute("memPw", member.getMemPw());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "memLoginOk";
	}
	
}