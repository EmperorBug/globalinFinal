package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.ItemVO;

@Mapper
public interface ItemMapper {
	
	List<ItemVO> getList(int category_no);

	ItemVO productView(int id);
	
}
