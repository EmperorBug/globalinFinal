package com.global.kapla.vo;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserVO {
	
//	user_no,
//	id,
//	password,
//	name,
//	email,
//	address,
//	type,
//	to_date(reg_date,'YY-MM-DD') reg_date
	private int 	user_no;
	private String 	id;
	private String 	password;
	private String 	name;
	private String 	email;
	private String 	address;
	private Date 	reg_date;
	
	private List<AuthVO> authList;
}
