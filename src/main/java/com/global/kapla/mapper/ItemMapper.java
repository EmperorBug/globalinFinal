package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.ItemVO;

@Mapper
public interface ItemMapper {
	
	List<ItemVO> getList(int category_no);

	ItemVO productView(int id);
	
	@Insert ("insert into kapla_cart (cart_no, item_no, user_no, quantity, reg_date) values (cart_no_seq.nextval, #{item_no}, #{user_no}, #{quantity}, sysdate) ")
	void insertItemToCart(CartVO cartVO);
	
}
