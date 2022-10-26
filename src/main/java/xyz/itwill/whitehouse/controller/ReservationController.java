package xyz.itwill.whitehouse.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.service.ReservationService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/reservation")
public class ReservationController {
	private final ReservationService reservationService;
	
	@RequestMapping(value = "/reservation_info", method = RequestMethod.GET)
	public String rvinfo() {
		return "reservation/reservation_info";
	}
	
	@RequestMapping(value = "/reservation_main", method = RequestMethod.GET)
	public String rvmain() {
		return "reservation/reservation_main";
	}
	
	@RequestMapping(value = "/select_reserv", method = RequestMethod.GET)
	@ResponseBody
	public List<Reservation> reservSearch() {
		return reservationService.getReservationList();
	}
	
	@RequestMapping(value = "/onemonth_reserv", method = RequestMethod.GET)
	@ResponseBody
	public List<Reservation> onemonth() {
		return reservationService.getOneMonth();
	}
	
	@RequestMapping(value = "/room_choice", method = RequestMethod.GET)
	public String rvroomchoice(@RequestParam String rRoomName,
			@RequestParam String rCheckIn,
			@RequestParam String rPrice, Model model) {
		
		model.addAttribute("roomName", rRoomName);
		model.addAttribute("checkIn", rCheckIn);
		model.addAttribute("checkInY", rCheckIn.substring(0,4));
		model.addAttribute("checkInM", rCheckIn.substring(5,7));
		model.addAttribute("checkInD", rCheckIn.substring(8,10));
		model.addAttribute("price", rPrice);
		
		System.out.println(model);
		
		return "reservation/room_choice";
	}
	
	@RequestMapping(value = "/put_information", method = RequestMethod.GET)
	public String rvput_information(
			@RequestParam String rCheckIn, 
			@RequestParam String rRoomName,
			@RequestParam int day_length, 
			@RequestParam(value="sel_in_cnt1",required=false) String sel_in_cnt1, 
			@RequestParam(value="sel_in_cnt2",required=false) String sel_in_cnt2,
			@RequestParam(value="sel_in_cnt3",required=false) String sel_in_cnt3,
			@RequestParam(value="sel_in_cnt4",required=false) String sel_in_cnt4,
			Model model) throws ParseException {
		List<Reservation> reservation=reservationService.getOneMonth();
		int prices=0;
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date day=formatter.parse(rCheckIn);
		Calendar cal = Calendar.getInstance();
		
		for(Reservation rs: reservation) {
			for(int i=0;i<= day_length;i++ ) {
				cal.setTime(day);
				cal.add(Calendar.DATE, i);
				if(rs.getRRoomName().equals(rRoomName)) {
					if(rs.getRCheckIn().equals(formatter.format(cal.getTime()))) {
						prices+=rs.getRPrice();
					}
				}
			}
		}
		model.addAttribute("price", prices);
		model.addAttribute("checkOut",formatter.format(cal.getTime()));
		model.addAttribute("checkIn", rCheckIn);
		model.addAttribute("roomName", rRoomName);
		model.addAttribute("dayLength", day_length);
		model.addAttribute("checkInY", rCheckIn.substring(0,4));
		model.addAttribute("checkInM", rCheckIn.substring(5,7));
		model.addAttribute("checkInD", rCheckIn.substring(8,10));
		model.addAttribute("hC1", sel_in_cnt1);
		model.addAttribute("hC2", sel_in_cnt2);
		model.addAttribute("hC3", sel_in_cnt3);
		model.addAttribute("hC4", sel_in_cnt4);
		System.out.println(model);
		return "reservation/put_information";
	}
	
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	public String rvcompletep(@RequestParam String bankName,Reservation reserv,Model model) {
		reservationService.addReservation(reserv);
		model.addAttribute("checkIn", reserv.getRCheckIn());
		model.addAttribute("checkOut",reserv.getRCheckOut());
		model.addAttribute("roomName", reserv.getRRoomName());
		model.addAttribute("price", reserv.getRPrice());
		model.addAttribute("HeadCount", reserv.getRHeadCount());
		model.addAttribute("name", reserv.getRName());
		model.addAttribute("phone", reserv.getRPhone());
		model.addAttribute("email", reserv.getREmail());
		model.addAttribute("bank", bankName);
		model.addAttribute("statue", reserv.getRStatue());
		model.addAttribute("statue", reserv.getRStatue());
		model.addAttribute("hC", reserv.getRHeadCount());
		System.out.println(reserv);
		return "reservation/complete";
	}

	@RequestMapping(value="/reserv_search",method=RequestMethod.GET)
	public String rvreserv_search(){
		return "reservation/reserv_search";
	}
	@RequestMapping(value="/reserv_result",method=RequestMethod.POST)
	public String rvreserv_result(Reservation reserv,Model model){
		Reservation reser=reservationService.getSelectReserv(reserv);
		model.addAttribute("name", reser.getRName());
		model.addAttribute("phone", reser.getRPhone());
		model.addAttribute("email", reser.getREmail());
		model.addAttribute("checkIn", reser.getRCheckIn().substring(0, 10));
		model.addAttribute("checkOut", reser.getRCheckOut().substring(0, 10));
		model.addAttribute("room", reser.getRRoomName());
		model.addAttribute("price", reser.getRPrice());
		model.addAttribute("hC", reser.getRHeadCount());
		model.addAttribute("statue", reser.getRStatue());

		System.out.println(reser);
		return "reservation/reserv_result";
	}
}
