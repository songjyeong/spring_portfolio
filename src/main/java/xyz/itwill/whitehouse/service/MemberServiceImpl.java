package xyz.itwill.whitehouse.service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.MemberDAO;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.exception.LoginAuthFailException;
import xyz.itwill.whitehouse.exception.MemberExistsException;
import xyz.itwill.whitehouse.exception.MemberNotFoundException;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberDAO memberDAO;

	
	@Transactional
	@Override
	public void addMember(Member member) throws MemberExistsException {

		if(memberDAO.selectMember(member.getId())!=null) {
			throw new MemberExistsException("이미 사용중인 아이디를 입력 하였습니다.", member);
		}

		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		memberDAO.insertMember(member);

	}

	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException {


		if(memberDAO.selectMember(member.getId())!=null) {
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}

		if(member.getPassword()!=null && !member.getPassword().equals("")) {
			member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		}
		memberDAO.updateMember(member);
	}

	
	@Transactional
	@Override
	public void removeMember(String id) throws MemberNotFoundException {

		if(memberDAO.selectMember(id)==null) {
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}

		memberDAO.deleteMember(id);

	}

	@Override
	public Member getMember(String id) throws MemberNotFoundException  {

		Member member=memberDAO.selectMember(id);

		if(member==null) { 
			throw new MemberNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
	}

	@Override
	public List<Member> getMemberList() {
		return memberDAO.selectMemberList();
	}


	@Override
	public void loginAuth(Member member) throws LoginAuthFailException {

		Member authMember = memberDAO.selectMember(member.getId());

		if(authMember==null) {
			throw new LoginAuthFailException("아이디의 회원정보가 존재하지 않습니다.", member.getId());
		}

		if(!BCrypt.checkpw(member.getPassword(), authMember.getPassword())) {
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 맞지 않습니다.", member.getId());
		}
	}

	@Override
	public int chkid(String id) {
		return memberDAO.idChk(id);
		
	}

	@Override
	public List<Reservation> selectreserv(String id) {
		return memberDAO.selectreserv(id);
	}

	@Override
	public Member getSearchMember(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.searchMember(member);
	}

}
