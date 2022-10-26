package xyz.itwill.whitehouse.dto;

import lombok.Data;

/*
B_NUM     NOT NULL NUMBER(10)		=> 게시판 글번호     
B_TITLE            VARCHAR2(500)  	=> 게시판 제목
B_CONTENT          VARCHAR2(1000) 	=> 게시판 내용
B_DATE             DATE           	=> 게시글 작성일
B_COUNT            NUMBER(10)   	=> 조회수
--> 공지사항 게시판은 작성이 관리자만 가능하기때문에 별도로 아이디입력이 아니라 작성자는 관리자로 적용
*/


public class Board {
	private int bNum;
	private String bTitle;
	private String bContent;
	private String bDate;
	private int bCount;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public int getbNum() {
		return bNum;
	}

	public void setbNum(int bNum) {
		this.bNum = bNum;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}
	
	
}
