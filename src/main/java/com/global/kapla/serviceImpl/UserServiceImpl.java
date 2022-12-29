package com.global.kapla.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.UserMapper;
import com.global.kapla.service.UserService;
import com.global.kapla.vo.UserVO;


@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper mapper;
	
	public List<UserVO> joinForm() {
		return mapper.getList();
	}
}
