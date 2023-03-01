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
	private String 	phone;
	private String 	email;
	private String	zip_code;
	private String 	address1;
	private String 	address2;
	private Date 	reg_date;
	private String authority;
	private Boolean reg_yn;
}
