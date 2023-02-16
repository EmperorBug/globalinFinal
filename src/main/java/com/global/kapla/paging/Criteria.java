package com.global.kapla.paging;

import java.security.Principal;

import lombok.Data;

@Data
public class Criteria {
	private int pageNum;	//페이지 번
	private int amount;		// 페이지당 보여줄 개수
	
	private String id;
	
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum 	= pageNum;
		this.amount 	= amount;
	}
}
