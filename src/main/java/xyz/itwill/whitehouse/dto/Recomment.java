package xyz.itwill.whitehouse.dto;

/*

create table recomment(re_num number primary key, re_id varchar2(50), re_content varchar2(500), re_date date, re_vnum number, re_group number, re_depth number, re_step number, re_status number);
create sequence recomment_seq;


RE_NUM     NOT NULL NUMBER        
RE_ID               VARCHAR2(50)  
RE_CONTENT          VARCHAR2(500) 
RE_DATE             DATE          
RE_VNUM             NUMBER        
RE_GROUP            NUMBER        
RE_DEPTH            NUMBER        
RE_STEP             NUMBER        
RE_STATUS           NUMBER    

*/

public class Recomment {
	private int reNum;
	private String reId;
	private String reContent;
	private String reDate;
	private int reVnum;
	private int reGroup;
	private int reDepth;
	private int reStep;
	private int reStatus;
	
	public Recomment() {
		// TODO Auto-generated constructor stub
	}

	public int getReNum() {
		return reNum;
	}

	public void setReNum(int reNum) {
		this.reNum = reNum;
	}

	public String getReId() {
		return reId;
	}

	public void setReId(String reId) {
		this.reId = reId;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	public String getReDate() {
		return reDate;
	}

	public void setReDate(String reDate) {
		this.reDate = reDate;
	}

	public int getReVnum() {
		return reVnum;
	}

	public void setReVnum(int reVnum) {
		this.reVnum = reVnum;
	}

	public int getReGroup() {
		return reGroup;
	}

	public void setReGroup(int reGroup) {
		this.reGroup = reGroup;
	}

	public int getReDepth() {
		return reDepth;
	}

	public void setReDepth(int reDepth) {
		this.reDepth = reDepth;
	}

	public int getReStep() {
		return reStep;
	}

	public void setReStep(int reStep) {
		this.reStep = reStep;
	}

	public int getReStatus() {
		return reStatus;
	}

	public void setReStatus(int reStatus) {
		this.reStatus = reStatus;
	}
	
	
}
