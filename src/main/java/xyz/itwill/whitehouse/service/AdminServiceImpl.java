package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.AdminDAO;
import xyz.itwill.whitehouse.dao.BoardDAO;
import xyz.itwill.whitehouse.dto.Board;
import xyz.itwill.whitehouse.dto.Member;
import xyz.itwill.whitehouse.dto.Product;
import xyz.itwill.whitehouse.dto.Reservation;
import xyz.itwill.whitehouse.dto.Reservation_Song;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService {
	private final AdminDAO adminDAO;

	@Override
	public List<Reservation> getReservDayList(String day) {
		// TODO Auto-generated method stub
		return adminDAO.selectReservDayList(day);
	}

	@Override
	public void addInsertReserv(Reservation reserv) {
		// TODO Auto-generated method stub
		adminDAO.insertReserv(reserv);
	}
	
	@Override
	public void addInsertReservTest() {
		// TODO Auto-generated method stub
		
		int day=1;
		int month=6;
		int year=2021;
		
		for(int i=10;i<700;i++) {
			Reservation reserv = new Reservation();
			
			Random random = new Random();
			
			String startDay=year+"-"+month+"-"+day;
			String OutDay=year+"-"+month+"-"+(day+1);
			int headCount=random.nextInt(10)+1;
			int price=35000*(random.nextInt(10)+1);
			String[] room= {"에메랄드룸","사파이어룸","루비룸","오팔룸"};
			String[] name= {"홍길동", "임꺽정", "전우치", "백두산", "송지영", "주영표"
							, "김동현", "이광원", "백윤호"};
			String selectRome=room[random.nextInt(4)];
			String selectName=name[random.nextInt(8)];
			
//			System.out.println(Integer.toString(i)+" / "+Integer.toString(i).getClass().getName());
//			System.out.println(startDay+" / "+startDay.getClass().getName());
//			System.out.println(OutDay+" / "+OutDay.getClass().getName());
//			System.out.println(headCount+" / ");
//			System.out.println(price+" / ");
//			System.out.println(selectRome+" / "+selectRome.getClass().getName());
//			System.out.println(selectName+" / "+selectName.getClass().getName());

			
			reserv.setRNum(i);
			reserv.setRCheckIn(startDay);
			reserv.setRCheckOut(OutDay);
			reserv.setRHeadCount(headCount);
			reserv.setRPrice(price);
			reserv.setRRoomName(selectRome);
			reserv.setRName(selectName);
			
			reserv.setRId("aaa");
			reserv.setRStatue("대기");
			reserv.setRPhone("010-0000-0000");
			reserv.setREmail("aaa@itwill.xyz");
			reserv.setRQuestions("a");
			
			adminDAO.insertReserv(reserv);
			
			day++;
			if(day>27) {
				month++;
				day=1;
			}
			if(month>12) {
				year++;
				month=1;
				day=1;
			}
		}
		
	}

	@Override
	public List<Member> getMemberList() {
		// TODO Auto-generated method stub
		return adminDAO.memberList();
	}

	@Override
	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		return adminDAO.productList();
	}

	@Override
	public Product getProductNum(int pNum) {
		// TODO Auto-generated method stub
		return adminDAO.selectProductNum(pNum);
	}

	@Transactional
	@Override
	public void modifyProductImage(Product product) {
		// TODO Auto-generated method stub
		adminDAO.updateProductImage(product);
	}

	@Override
	public List<Reservation> getReservList() {
		// TODO Auto-generated method stub
		return adminDAO.selectReservList();
	}
}
