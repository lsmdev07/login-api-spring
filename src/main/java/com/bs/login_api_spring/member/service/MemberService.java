package com.bs.login_api_spring.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bs.login_api_spring.member.Member;
import com.bs.login_api_spring.member.dao.MemberDao;

@Repository("memService")
public class MemberService implements IMemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public void memberRegister(String memId, String memPw, String memMail,
			String memPhone1, String memPhone2, String memPhone3) {
		System.out.println("memberRegister()");
		System.out.println("memId : " + memId);
		System.out.println("memPw : " + memPw);
		System.out.println("memMail : " + memMail);
		System.out.println("memPhone : " + memPhone1 + " - " + memPhone2 + " - " + memPhone3);
		
		dao.memberInsert(memId, memPw, memMail, memPhone1, memPhone2, memPhone3);
	}
	
	@Override
	public void memberRegister(Member member) {
		System.out.println("memberRegister()");
		System.out.println("memId : " + member.getMemId());
		System.out.println("memPw : " + member.getMemPw());
		System.out.println("memMail : " + member.getMemMail());
		System.out.println("memPhone : " + member.getMemPhone().getMemPhone1() + " - " + member.getMemPhone().getMemPhone2() + " - " + member.getMemPhone().getMemPhone3());
		dao.memberInsert(member);
	}

	@Override
	public Member memberSearch(String memId, String memPw) {
		System.out.println("memberSearch()");
		System.out.println("memId : " + memId);
		System.out.println("memPw : " + memPw);
		
		Member member = dao.memberSelect(memId, memPw);
		
		return member;
	}

	@Override
	public void memberModify() {
		
	}

	@Override
	public void memberRemove() {
		
	}

}