package com.global.kapla.service;

import java.io.IOException;

import com.global.kapla.vo.KakaoVO;
import com.global.kapla.vo.UserVO;

public interface KakaoService {

	public String getToken(String code) throws IOException;
	public KakaoVO getInfo(String code) throws IOException;
	public UserVO login(KakaoVO vo) throws Exception;
}
