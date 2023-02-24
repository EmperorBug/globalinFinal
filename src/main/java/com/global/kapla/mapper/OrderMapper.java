package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.OrderVO;

/**
 * 
 * @author gimdohyeong
 *	2023.01.26
 * 주문관련 매퍼 작성
 * 
 */
@Mapper
public interface OrderMapper {

	public List<CartVO> getList(String[] itemList);
	public String getOrderNo();
	
	public int insertOrder(OrderVO orderVO);
	public int insertOrderDetail(OrderVO orderVO);
	
	public OrderVO getOrder(OrderVO orderVO);
}
