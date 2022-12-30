package com.global.kapla.service;

import java.util.List;

import org.springframework.stereotype.Controller;

import com.global.kapla.vo.UserVO;



public interface UserService {
	
	public List<UserVO> joinForm();
}
