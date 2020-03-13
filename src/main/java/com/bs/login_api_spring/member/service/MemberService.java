package com.bs.login_api_spring.member.service;

import com.bs.login_api_spring.member.MemPhone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bs.login_api_spring.member.Member;
import com.bs.login_api_spring.member.dao.MemberDao;

import java.util.*;

@Repository("memService")
public class MemberService implements IMemberService {

	@Autowired
	MemberDao dao;
	

	
	@Override
	public void memberRegister(Member member) {
		printMembers(dao.memberInsert(member));
	}



	@Override
	public boolean memberSearch(Member member) {
		if(dao.memberSelect(member) == null)
			return false;
		else {
			printMember(dao.memberSelect(member));
			return true;
		}
	}

	@Override
	public Member[] memberModify(Member member) {
		Member memBef = dao.memberSelect(member);
		Member memAft = dao.memberUpdate(member);
		printMember(memAft);
		return new Member[]{memBef, memAft};
	}

	@Override
	public void memberRemove(Member member) {
		printMembers(dao.memberDelete(member));
	}

	private void printMembers(Map<String, Member> map) {
		Set<String> keys = map.keySet();
		Iterator<String> iterator = keys.iterator();
		while(iterator.hasNext()) {
			String key = iterator.next();
			Member mem = map.get(key);
			printMember(mem);
		}

	}

	private void printMember(Member mem) {
		System.out.print("ID:" + mem.getMemId() + "\t");
		System.out.print("|PW:" + mem.getMemPw() + "\t");
		System.out.print("|MAIL:" + mem.getMemMail() + "\t");
		List<MemPhone> memPhones = mem.getMemPhones();
		for(MemPhone memPhone:memPhones) {
			System.out.print("|PHONE:" + memPhone.getMemPhone1() + " - " + memPhone.getMemPhone2() + " - " + memPhone.getMemPhone3() + "\t");
		}
		System.out.print("|AGE:" + mem.getMemAge() + "\t");
		System.out.print("|ADULT:" + mem.isMemAdult() + "\t");
		System.out.print("|GENDER:" + mem.getMemGender() + "\t");
	}

}