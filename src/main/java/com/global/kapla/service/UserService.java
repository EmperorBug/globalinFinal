package com.global.kapla.service;

import com.global.kapla.vo.UserVO;



public interface UserService {
	
	public int register(UserVO vo);
	public UserVO login(UserVO vo) throws Exception;
	public int updateUser(UserVO vo) throws Exception;
	public UserVO userInfo(String userId) throws Exception;
}
