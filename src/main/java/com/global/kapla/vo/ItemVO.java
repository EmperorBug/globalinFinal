package com.global.kapla.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ItemVO {

    //	id,
//	category_num;
//	name,
//	quantity;
//	price;
//	content;
// discount;
// item_status;
//	to_date(reg_date,'YY-MM-DD') reg_date
    private int id;
    private int category_num;
    private String name;
    private int quantity;
    private int price;
    private String content;
    private int discount;
    private String item_status;
    private Date reg_date;

    private int item_image_no;
    private int item_no;
    private String url;
}
