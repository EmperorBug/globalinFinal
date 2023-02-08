package com.global.kapla.vo;

import java.util.List;

import lombok.Data;

@Data
public class OrderVO {
	
	private String order_no;
	private String payment_method;
	private int total_price;
	private String receiver;
	private String receiver_addr;
	private String receiver_phone;
	private String receiver_email;
	private String comment;
	
	
	private String id;
	
	private List<CartVO> cart_list;
	
	//mypage정보 (order_detail) 
	private int quantity;
}
