package xyz.itwill.whitehouse.dto;

import lombok.Data;

//이름     널?       유형            
//------ -------- ------------- 
//ID     NOT NULL VARCHAR2(100) 
//NAME            VARCHAR2(100) 
//PHONE           VARCHAR2(100) 
//EMAIL           VARCHAR2(100) 
//STATUS          NUMBER        


@Data
public class Test {
	private String id;
	private String name;
	private String phone;
	private String email;
	private int status;
}
