package xyz.itwill.whitehouse.dto;

import lombok.Data;

/*

이름       널?       유형
-------- -------- ------------
ID       NOT NULL VARCHAR2(20)
PASSWORD          VARCHAR2(50)
PHONE             VARCHAR2(20)
EMAIL             VARCHAR2(50)
STATUS            NUMBER(1)
NAME              VARCHAR2(20)

 */

@Data
public class Member {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String email;
	private int status;
}
