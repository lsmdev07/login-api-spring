package com.bs.login_api_spring.member.controller;

import com.bs.login_api_spring.member.Member;
import com.bs.login_api_spring.member.dao.MemberDao;
import com.bs.login_api_spring.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService service;

    @Autowired
    MemberDao dao;

    @ModelAttribute("serverTime")
    public String getServerTime(Locale locale) {
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        return dateFormat.format(date);
    }

    @RequestMapping(value = "/memJoin", method = RequestMethod.POST)
    public String memJoin(Member member) {

        service.memberRegister(member);

        return "memJoinOk";
    }

    @RequestMapping(value = "/memLogin", method = RequestMethod.POST)
    public String memLogin(Member member) {
        if (service.memberSearch(member) == true)
            return "memLoginOk";
        else
            return "memLoginFail";
    }

    @RequestMapping(value = "/memRemove", method = RequestMethod.POST)
    public String memRemove(@ModelAttribute("mem") Member member) {
        if (service.memberSearch(member) == true && member.getMemPw() == dao.memberSelect(member).getMemPw()) {
            service.memberRemove(member);
            return "memRemoveOk";
        } else {
            return "memRemoveFail";
        }
    }

    @RequestMapping(value = "/memModify", method = RequestMethod.POST)
    public ModelAndView memModify(Member member) {
        Member[] members = service.memberModify(member);
        ModelAndView mav = new ModelAndView();
        mav.addObject("memberBef", members[0]);
        mav.addObject("memAft", members[1]);
        mav.setViewName("memModifyOk");
        return mav;
    }
}