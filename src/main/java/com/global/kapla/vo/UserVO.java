package com.global.kapla.vo;

import java.sql.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Data
public class UserVO {
	
//	user_no,
//	user_id,
//	password,
//	name,
//	email,
//	address,
//	type,
//	to_date(reg_date,'YY-MM-DD') reg_date
	private int 	user_no;
	private String 	user_id;
	private String 	password;
	private String 	name;
	private String 	email;
	private String 	address;
	private int 	user_type;
	private Date 	reg_date;
}
