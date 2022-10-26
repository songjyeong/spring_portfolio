package xyz.itwill.whitehouse.dto;

/*
 * create table review(v_num number primary key, v_id varchar2(50), v_rnum number, v_title varchar2(500), v_content varchar2(1000), v_date date, v_count number);
--------- -------- -------------- 
V_NUM     NOT NULL NUMBER         	// 리뷰 게시글 번호
V_ID               VARCHAR2(50)   	// 리뷰 작성자 ID 
V_RNUM             NUMBER         	// 예약번호
V_TITLE            VARCHAR2(500)  	// 게시글 제목
V_CONTENT          VARCHAR2(1000)	// 게시글 내용
V_DATE             DATE           	// 게시글 작성일
V_COUNT            NUMBER 			// 게시글 조회수
*/
public class Review {
	private int vNum;
	private String vId;
	private int vRnum;
	private String vTitle;
	private String vContent;
	private String vDate;
	private String vCount;
	private String rRoomName;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public int getvNum() {
		return vNum;
	}

	public void setvNum(int vNum) {
		this.vNum = vNum;
	}

	public String getvId() {
		return vId;
	}

	public void setvId(String vId) {
		this.vId = vId;
	}

	public int getvRnum() {
		return vRnum;
	}

	public void setvRnum(int vRnum) {
		this.vRnum = vRnum;
	}

	public String getvTitle() {
		return vTitle;
	}

	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}

	public String getvContent() {
		return vContent;
	}

	public void setvContent(String vContent) {
		this.vContent = vContent;
	}

	public String getvDate() {
		return vDate;
	}

	public void setvDate(String vDate) {
		this.vDate = vDate;
	}

	public String getvCount() {
		return vCount;
	}

	public void setvCount(String vCount) {
		this.vCount = vCount;
	}

	public String getrRoomName() {
		return rRoomName;
	}

	public void setrRoomName(String rRoomName) {
		this.rRoomName = rRoomName;
	}

	
		
	
}
