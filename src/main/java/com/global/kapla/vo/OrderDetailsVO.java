package com.global.kapla.vo;

import lombok.Data;

@Data
public class OrderDetailsVO {
	
	private int detail_no;
	private int item_no;
	private int sum_price;
	private int quantity;
	private String item_name;
	private String order_status;
	private String item_url;
}
