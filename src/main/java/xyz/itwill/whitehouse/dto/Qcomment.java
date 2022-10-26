package xyz.itwill.whitehouse.dto;

/*
 create table qcomment(c_num number primary key, c_id varchar2(50), c_qnum number, c_content varchar2(500), c_date date);
 CREATE SEQUENCE qcomment_seq;
C_NUM     NOT NULL NUMBER  			// 댓글 번호
C_ID               VARCHAR2(50)  	// 작성자 아이디
C_QNUM             NUMBER        	// 게시판 번호
C_CONTENT          VARCHAR2(500) 	// 댓글 내용
C_DATE             DATE  			// 댓글 작성일
 
*/

public class Qcomment {
	private int cNum;
	private String cId;
	private int cQnum;
	private String cContent;
	private String cDate;
	
	public Qcomment() {
		// TODO Auto-generated constructor stub
	}

	public int getcNum() {
		return cNum;
	}

	public void setcNum(int cNum) {
		this.cNum = cNum;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public int getcQnum() {
		return cQnum;
	}

	public void setcQnum(int cQnum) {
		this.cQnum = cQnum;
	}

	public String getcContent() {
		return cContent;
	}

	public void setcContent(String cContent) {
		this.cContent = cContent;
	}

	public String getcDate() {
		return cDate;
	}

	public void setcDate(String cDate) {
		this.cDate = cDate;
	}
	
	
}
