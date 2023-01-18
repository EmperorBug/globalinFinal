package com.global.kapla.vo;

import lombok.Data;

@Data
public class CartVO {
	
	/*
	 * id는 세션에 저장되어있음 - id로 조인해서 user_no 사용
	 * price는 item테이블에서 가져와야함
	 */
	private int item_no;
	private String id;
	private int quantity;
	private int price;
	
}
