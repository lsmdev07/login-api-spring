package com.bs.login_api_spring.member.service;

import com.bs.login_api_spring.member.Member;

public interface IMemberService {
	void memberRegister(String memId, String memPw, String memMail, String memPhone1, String memPhone2, String memPhone3);
	void memberRegister(Member member);
	Member memberSearch(String memId, String memPw);
	void memberModify();
	void memberRemove();
}
