package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Product;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.dto.Reservation_Song;
import xyz.itwill.whitehouse.mapper.AdminMapper;
import xyz.itwill.whitehouse.mapper.BoardMapper;

@Repository
@RequiredArgsConstructor
public class AdminDAOImpl implements AdminDAO{
	private final SqlSession sqlSession;

	@Override
	public List<Reservation> selectReservDayList(String day) {
		return sqlSession.getMapper(AdminMapper.class).selectReservDayList(day);
	}

	@Override
	public int insertReserv(Reservation reserv) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminMapper.class).insertReserv(reserv);
	}

	@Override
	public List<Member> memberList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminMapper.class).memberList();
	}

	@Override
	public List<Product> productList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminMapper.class).productList();
	}

	@Override
	public Product selectProductNum(int pNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminMapper.class).selectProductNum(pNum);
	}

	@Override
	public int updateProductImage(Product product) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminMapper.class).updateProductImage(product);
	}

	@Override
	public List<Reservation> selectReservList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminMapper.class).selectReservList();
	}
}
