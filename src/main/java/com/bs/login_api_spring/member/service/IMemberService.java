package com.bs.login_api_spring.member.service;

import com.bs.login_api_spring.member.Member;

public interface IMemberService {
	void memberRegister(Member member);
	boolean memberSearch(Member member);
	Member[] memberModify(Member member);
	void memberRemove(Member member);
}
