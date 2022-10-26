package xyz.itwill.whitehouse.service;

import java.util.List;

import xyz.itwill.whitehouse.dto.Reservation;

public interface ReservationService {
	void addReservation(Reservation reserv);
	void updateReservation(Reservation reservation);
	void removeReservation(int r_num);
	Reservation getSelectRev(int r_num);
	Reservation getSelectReserv(Reservation reservation);
	Reservation getRsvRoomSelect(String r_room_name, String r_check_in);
	Reservation getReservation(String r_phone);
	List<Reservation> getReservationList();
	List<Reservation> getOneMonth();
}
