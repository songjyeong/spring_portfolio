package xyz.itwill.whitehouse.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.service.ReservationService;

@Controller
@RequiredArgsConstructor
public class ReservationController_Song {
	private final ReservationService reservationService;
	
	@RequestMapping(value = "/reservation/reservation_main_song", method = RequestMethod.GET)
	public String reservMain() {
		
		return "reservation/reservation_main_Song";
	}
	
//	@RequestMapping(value = "/reservation/select_reserv", method = RequestMethod.GET)
//	@ResponseBody
//	public List<Reservation> reservSearch() {
//		
//		
//		return reservationService.getReservationList();
//	}
	
//	@RequestMapping(value = "/reservation_info", method = RequestMethod.GET)
//	public String rvinfo() {
//		return "reservation/reservation_info";
//	}
//	
//	@RequestMapping(value = "/reservation_main", method = RequestMethod.GET)
//	public String rvmain() {
//		return "reservation/reservation_main";
//	}
//	
//	@RequestMapping(value = "/room_choice", method = RequestMethod.GET)
//	public String rvroomchice() {
//		return "reservation/room_choice";
//	}
//	
//	@RequestMapping(value = "/put_information", method = RequestMethod.GET)
//	public String rvput_information() {
//		return "reservation/put_information";
//	}
//	
//	@RequestMapping(value = "/complete", method = RequestMethod.GET)
//	public String rvcomplete() {
//		return "reservation/complete";
//	}
	
	
}
