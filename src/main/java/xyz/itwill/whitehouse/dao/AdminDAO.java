package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Product;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.dto.Reservation_Song;

public interface AdminDAO {
	int insertReserv(Reservation reserv);
	
	List<Reservation> selectReservList();
	List<Reservation> selectReservDayList(String day);
	List<Member> memberList();
	
	int updateProductImage(Product product);
	Product selectProductNum(int pNum);
	List<Product> productList();

}
