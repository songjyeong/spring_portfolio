package xyz.itwill.whitehouse.dto;

/*
create table qnaboard(q_num number primary key, q_id varchar2(50), q_title varchar2(500), q_content varchar2(1000), q_date date, q_status number(1));

Q_NUM     NOT NULL NUMBER         => 게시판 글번호     
Q_ID               VARCHAR2(50)   => 작성자 아이디   
Q_TITLE            VARCHAR2(500)  => 게시글 제목
Q_CONTENT          VARCHAR2(1000) => 게시글 내용
Q_DATE             DATE           => 작성일
Q_STATUS           NUMBER(1)	  => 상태(일반문의 =1, 비밀글 =2)
*/
public class Qna {
	private int qNum;
	private String qId;
	private String qTitle;
	private String qContent;
	private String qDate;
	private int qStatus;
	
	public Qna() {
		// TODO Auto-generated constructor stub
	}

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public String getqId() {
		return qId;
	}

	public void setqId(String qId) {
		this.qId = qId;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getqDate() {
		return qDate;
	}

	public void setqDate(String qDate) {
		this.qDate = qDate;
	}

	public int getqStatus() {
		return qStatus;
	}

	public void setqStatus(int qStatus) {
		this.qStatus = qStatus;
	}
	
}
