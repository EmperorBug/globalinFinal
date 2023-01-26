package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.BoardVO;

@Mapper
public interface BoardMapper {
	public List<BoardVO> getList();
	public List<BoardVO> getNoticeList();
	BoardVO readPost(int board_no);
	
}
