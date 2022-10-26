package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Product;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.dto.Reservation_Song;

public interface AdminService {
	void addInsertReserv(Reservation reserv);
	void addInsertReservTest();
	
	List<Reservation> getReservList();
	List<Reservation> getReservDayList(String day);
	List<Member> getMemberList();
	
	void modifyProductImage(Product product);
	Product getProductNum(int pNum);
	List<Product> getProductList();

}
