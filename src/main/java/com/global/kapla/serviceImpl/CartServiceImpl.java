package com.global.kapla.serviceImpl;

import com.global.kapla.mapper.CartMapper;
import com.global.kapla.service.CartService;
import com.global.kapla.vo.CartVO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartMapper cartMapper;
	
	@Override
	public List<CartVO> getList(String id) {
		return cartMapper.getList(id);
	}

}
