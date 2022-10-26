package xyz.itwill.whitehouse.mapper;

import java.util.List;

import xyz.itwill.whitehouse.dto.Reservation;


public interface ReservationMapper {
	int insertReservation(Reservation reserv);
	int updateReservation(Reservation reservation);
	int deleteReservation(int r_num);
	Reservation selectRev(int r_num);
	Reservation selectReserv(Reservation reservation);
	Reservation selectReservation(String r_phone);
	Reservation selectRvRoomChoice(String r_room_name, String r_check_in);
	List<Reservation> selectReservationList();
	List<Reservation> oneMonth();
}
