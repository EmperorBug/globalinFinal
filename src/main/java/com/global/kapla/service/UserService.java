package com.global.kapla.service;

import com.global.kapla.vo.UserVO;



public interface UserService {
	
	public int register(UserVO vo);
	public UserVO login(UserVO vo) throws Exception;
	public int updateUser(UserVO vo) throws Exception;
	public UserVO userInfo(String userId) throws Exception;
	public int findUser(UserVO vo);
	public UserVO printUserName(UserVO vo) throws Exception;
	public UserVO isPwdCorrect(UserVO vo);
	public void updateUserInfo(UserVO vo);
	public void unregister(UserVO vo);
	public int pwdChk(UserVO vo);
	
}
