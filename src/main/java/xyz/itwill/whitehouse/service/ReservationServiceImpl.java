package xyz.itwill.whitehouse.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.ReservationDAO;
import xyz.itwill.whitehouse.dto.Reservation;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService{
	private final ReservationDAO reservationDAO;
	
	@Transactional
	@Override
	public void addReservation(Reservation reserv) {
		reservationDAO.insertReservation(reserv);
	}

	@Transactional
	@Override
	public void updateReservation(Reservation reservation) {
		reservationDAO.updateReservation(reservation);
	}
	@Transactional
	@Override
	public void removeReservation(int r_num) {
		reservationDAO.deleteReservation(r_num);
	}
	@Transactional
	@Override
	public Reservation getReservation(String r_phone) {
		return reservationDAO.selectReservation(r_phone);
	}
	@Transactional
	@Override
	public List<Reservation> getReservationList() {
		return reservationDAO.selectReservationList();
	}

	@Transactional
	@Override
	public Reservation getRsvRoomSelect(String r_room_name, String r_check_in) {
		return reservationDAO.selectRvRoomChoice(r_room_name, r_check_in);
	}

	@Transactional
	@Override
	public Reservation getSelectReserv(Reservation reservation) {
		return reservationDAO.selectReserv(reservation);
	}

	@Override
	public List<Reservation> getOneMonth() {
		return reservationDAO.oneMonth();
	}

	@Override
	public Reservation getSelectRev(int r_num) {
		return reservationDAO.selectRev(r_num);
	}

}
