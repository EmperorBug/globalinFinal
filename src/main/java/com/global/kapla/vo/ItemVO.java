package com.global.kapla.vo;

import java.sql.Date;

import lombok.Data;

@Data
	
public class ItemVO {
//	id 상품번호
//	category_num 카테고리 번호
//	name 상품명
//	quantity 현재 수량
//	price 상품 가격
//	content 상품 정보
// discount 할인 정보
// item_status 상품 상태
//	to_date(reg_date,'YY-MM-DD') 등록된 날짜
	private int 	   id;
	private int     category_num;
	private String name;
	private int     quantity;
	private int 	   price;
	private String content;
	private int      discount;
	private String item_status;
	private Date   reg_date;
	
	private int 	   item_image_no;
	private int     item_no;
	private String url;
}
