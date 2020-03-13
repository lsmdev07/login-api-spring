package com.bs.login_api_spring.member.dao;

import com.bs.login_api_spring.member.Member;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class MemberDao implements IMemberDao {

	private HashMap<String, Member> dbMap;
	
	public MemberDao() {
		dbMap = new HashMap<String, Member>();
	}
	
	@Override
	public Map<String, Member> memberInsert(Member member) {
		dbMap.put(member.getMemId(), member);
		return dbMap;
	}

	@Override
	public Member memberSelect(Member member) {
		Member mem = dbMap.get(member.getMemId());
		return mem;
	}

	@Override
	public Member memberUpdate(Member member) {
		dbMap.put(member.getMemId(), member);
		return dbMap.get(member.getMemId());
	}

	@Override
	public Map<String, Member> memberDelete(Member member) {
		dbMap.remove(member.getMemId());
		return dbMap;
	}

}