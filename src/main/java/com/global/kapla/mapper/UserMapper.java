package com.global.kapla.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.UserVO;

@Mapper
public interface UserMapper {
	
	public List<UserVO> getList();
	
}
