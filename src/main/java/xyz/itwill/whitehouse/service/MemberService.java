package xyz.itwill.whitehouse.service;

import java.util.List;

import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.exception.LoginAuthFailException;
import xyz.itwill.whitehouse.exception.MemberExistsException;
import xyz.itwill.whitehouse.exception.MemberNotFoundException;

public interface MemberService {

	void addMember(Member member) throws MemberExistsException;
	void modifyMember(Member member) throws MemberNotFoundException;
	void removeMember(String id) throws MemberNotFoundException;
	Member getMember(String id) throws MemberNotFoundException;
	List<Member> getMemberList();
	void loginAuth(Member member) throws LoginAuthFailException;
	int chkid(String id);
	List<Reservation> selectreserv(String id);

	Member getSearchMember(Member member);

}
