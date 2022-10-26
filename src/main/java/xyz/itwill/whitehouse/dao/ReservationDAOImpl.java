package xyz.itwill.whitehouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.mapper.ReservationMapper;

@Repository
@RequiredArgsConstructor
public class ReservationDAOImpl implements ReservationDAO{

	private final SqlSession sqlSession;	
	
	@Override
	public int insertReservation(Reservation reserv) {
		return sqlSession.getMapper(ReservationMapper.class).insertReservation(reserv);
	}

	@Override
	public int updateReservation(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).updateReservation(reservation);
	}

	@Override
	public int deleteReservation(int r_num) {
		return sqlSession.getMapper(ReservationMapper.class).deleteReservation(r_num);
	}

	@Override
	public Reservation selectReservation(String r_phone) {
		return sqlSession.getMapper(ReservationMapper.class).selectReservation(r_phone); 
	}

	@Override
	public List<Reservation> selectReservationList() {
		return sqlSession.getMapper(ReservationMapper.class).selectReservationList();
	}

	@Override
	public Reservation selectRvRoomChoice(String r_room_name, String r_check_in) {
		return sqlSession.getMapper(ReservationMapper.class).selectRvRoomChoice(r_room_name, r_check_in);
	}

	@Override
	public Reservation selectReserv(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).selectReserv(reservation);
	}

	@Override
	public List<Reservation> oneMonth() {
		return sqlSession.getMapper(ReservationMapper.class).oneMonth();
	}

	@Override
	public Reservation selectRev(int r_num) {
		return sqlSession.getMapper(ReservationMapper.class).selectRev(r_num);
	}

}
