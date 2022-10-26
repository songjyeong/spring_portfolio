package xyz.itwill.whitehouse.dao;

import java.util.List;

import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Reservation;

public interface MemberDAO {

	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList();
	int idChk(String id);
	List<Reservation> selectreserv(String id);
	
	Member searchMember(Member member);

}
