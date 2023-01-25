package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.CartVO;

@Mapper
public interface CartMapper {
	
	public List<CartVO> getList(String id);
}
