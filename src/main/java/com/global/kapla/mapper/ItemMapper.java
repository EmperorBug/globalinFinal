package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.ItemVO;

@Mapper
public interface ItemMapper {
	
	List<ItemVO> getList();

	ItemVO productView(int id);
	
}
