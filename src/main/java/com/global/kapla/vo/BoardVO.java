package com.global.kapla.vo;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	
//	board_no 게시판번호
//	user_no 회원번호
//	type_no 분류번호
// item_no 상품번호
//	writer 작성자
//	title 글제목
// content 글내용
//	reg_date(reg_date,'YY-MM-DD') 작성날짜
	private int board_no;
	private int user_no;
	private int type_no;
	private int item_no;
	private String writer;
	private String title;
	private String content;
	private Date 	reg_date;

}
