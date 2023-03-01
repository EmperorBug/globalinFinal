package com.global.kapla.paging;

import lombok.Data;

@Data
public class Criteria {
	private int pageNum;	//페이지 번
	private int amount;		// 페이지당 보여줄 개수
	private String startDate;
	private String endDate;
	private String id;
	
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum 	= pageNum;
		this.amount 	= amount;
	}
}
