package xyz.itwill.whitehouse.dto;


/*
이름         널?       유형            
---------- -------- ------------- 
P_NUM      NOT NULL NUMBER        
P_NAME              VARCHAR2(50)  
P_IMAGE             VARCHAR2(200) 
P_DETAIL            VARCHAR2(200) 
P_MINCOUNT          VARCHAR2(50)  
P_MAXCOUNT          VARCHAR2(50)  
P_PRICE             VARCHAR2(50)
P_PRICE2            VARCHAR2(50)
P_PRICE3            VARCHAR2(50)  
P_PRICE4            VARCHAR2(50)
*/

public class Product {
	private int pNum;
	private String pName;
	private String pImage;
	private String pMincount;
	private String pMaxcount;
	private String pPrice;
	private String pPrice2;
	private String pPrice3;
	private String pPrice4;
	private String pDetail1;
	private String pDetail2;
	private String pDetail3;
	private String pDetail4;
	private String pDetail5;
	

	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpImage() {
		return pImage;
	}
	public void setpImage(String pImage) {
		this.pImage = pImage;
	}
	public String getpMincount() {
		return pMincount;
	}
	public void setpMincount(String pMincount) {
		this.pMincount = pMincount;
	}
	public String getpMaxcount() {
		return pMaxcount;
	}
	public void setpMaxcount(String pMaxcount) {
		this.pMaxcount = pMaxcount;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}
	
	public String getpPrice2() {
		return pPrice2;
	}
	public void setpPrice2(String pPrice2) {
		this.pPrice2 = pPrice2;
	}
	
	public String getpPrice3() {
		return pPrice3;
	}
	public void setpPrice3(String pPrice3) {
		this.pPrice3 = pPrice3;
	}
	
	public String getpPrice4() {
		return pPrice4;
	}
	public void setpPrice4(String pPrice4) {
		this.pPrice4 = pPrice4;
	}
	public String getpDetail1() {
		return pDetail1;
	}
	public void setpDetail1(String pDetail1) {
		this.pDetail1 = pDetail1;
	}
	public String getpDetail2() {
		return pDetail2;
	}
	public void setpDetail2(String pDetail2) {
		this.pDetail2 = pDetail2;
	}
	public String getpDetail3() {
		return pDetail3;
	}
	public void setpDetail3(String pDetail3) {
		this.pDetail3 = pDetail3;
	}
	public String getpDetail4() {
		return pDetail4;
	}
	public void setpDetail4(String pDetail4) {
		this.pDetail4 = pDetail4;
	}
	public String getpDetail5() {
		return pDetail5;
	}
	public void setpDetail5(String pDetail5) {
		this.pDetail5 = pDetail5;
	}
	
	
	@Override
	public String toString() {
		return "ProductVO [pNum = " + pNum + ", pName = " + pName + ", pImage = " + pImage + ", pMincount = " + pMincount + ", pMaxcount = " + pMaxcount + ""
				+ ",pPrice = " + pPrice +", pPrice2 = " + pPrice2 + ", pPrice3 = " + pPrice3 + ", pPrice4 = " + pPrice4 + ""
						+ ", pDetail1 = " + pDetail1 + ", pDetail2 = " + pDetail2 + ", pDetail3 = " + pDetail3 + ", pDetail4 = " + pDetail4 + ", pDetail5 = " + pDetail5 + "]";
	}

	
}