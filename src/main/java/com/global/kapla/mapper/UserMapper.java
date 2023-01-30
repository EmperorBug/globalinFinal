package com.global.kapla.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.vo.UserVO;

@Mapper
public interface UserMapper {
	
	public UserVO login(UserVO vo);
	
	//유저 id체크
	public int findUser(UserVO vo);
	
	public int insertUser(UserVO vo);
	
	public int updateUser(UserVO vo);
	
	public UserVO getUser(String id);
}
