package com.bs.login_api_spring.member.dao;

import com.bs.login_api_spring.member.Member;

import java.util.Map;

public interface IMemberDao {
	Map<String, Member> memberInsert(Member member);
	Member memberSelect(Member member);
	Member memberUpdate(Member member);
	Map<String, Member> memberDelete(Member member);
}
