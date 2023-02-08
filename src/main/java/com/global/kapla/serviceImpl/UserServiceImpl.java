package com.global.kapla.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.UserMapper;
import com.global.kapla.service.UserService;
import com.global.kapla.vo.KakaoVO;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 2023.01.03
 * @author gimdohyeong
 * 유저 서비스 구현
 */
@Slf4j
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper mapper;
	
	public int register(UserVO vo) {
		vo.setPassword(new BCryptPasswordEncoder().encode(vo.getPassword()));
		return mapper.insertUser(vo);
	}

	@Override
	public UserVO login(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.login(vo);
	}

	@Override
	public UserVO userInfo(String userId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getUser(userId);
	}

	@Override
	public int updateUser(UserVO vo) {
		int result = 200;
		// TODO Auto-generated method stub
		try {
			mapper.updateUser(vo);
		}
		catch (Exception e) {
			e.printStackTrace();
			result = 300;
		}
		return result;
	}

	@Override
	public int findUser(UserVO vo) {
		int result = 1;
		try {
			result = mapper.findUser(vo);
		}catch (Exception e) {
			result = 300;
		}
		return result;
	}
 
	
	
}
