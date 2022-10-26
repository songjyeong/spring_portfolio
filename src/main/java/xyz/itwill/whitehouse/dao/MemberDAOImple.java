package xyz.itwill.whitehouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.mapper.MemberMapper;

@Repository
@RequiredArgsConstructor
public class MemberDAOImple implements MemberDAO{

	private final SqlSession sqlSession;

	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}

	@Override
	public int deleteMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(id);
	}

	@Override
	public Member selectMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(id);
	}

	@Override
	public List<Member> selectMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList();
	}

	@Override
	public int idChk(String id) {
		return sqlSession.getMapper(MemberMapper.class).idChk(id);
	}
	
	@Override
	public List<Reservation> selectreserv(String id) {
		
		return sqlSession.getMapper(MemberMapper.class).selectreserv(id);
	}

	@Override
	public Member searchMember(Member member) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MemberMapper.class).searchMember(member);
	}
	
}
