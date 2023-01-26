package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.CartVO;

@Mapper
public interface OrderMapper {

	public List<CartVO> getList(String[] itemList);
	public String getOrderNo();
}
