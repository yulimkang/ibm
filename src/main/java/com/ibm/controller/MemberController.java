package com.ibm.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibm.domain.MemberDomain;
import com.ibm.domain.RoleDomain;
import com.ibm.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	private int i = 0;
	
	@GetMapping("/create")
	public String newPost(MemberDomain memberDomain) throws Exception{
		
		i++;
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		memberDomain.setPassword(passwordEncoder.encode(memberDomain.getPassword()));

		memberDomain.setMemberNo(i);
		memberDomain.setMemberName(String.valueOf(i));
		memberDomain.setPhoneNumber(String.valueOf(i));
		memberDomain.setEmailAddr(String.valueOf(i));
		memberDomain.setRoleNo(1);
		
		memberService.insertMember(memberDomain);
		
		return "redirect:/board/index";
	}

}
