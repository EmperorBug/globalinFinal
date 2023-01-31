package com.global.kapla.vo;

import java.util.List;

import lombok.Data;

@Data
public class CartVO {
	
	/*
	 * id는 세션에 저장되어있음 - id로 조인해서 user_no 사용
	 * price는 item테이블에서 가져와야함
	 * 오더페이지에 데이터 넘길떼도 이용함
	 */
	private int item_no;
	private String id;
	private int quantity;
	
	//상품테이블
	private int price;
	private String item_name;
	private int discount;
	
	//따로 계산
	private int sum_price;
	
	//상품이미지 테이블
	private String url;
	
	
	private List<CartVO> cart_list;
	
}
