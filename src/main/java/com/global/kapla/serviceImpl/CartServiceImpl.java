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

	@Override
	public int updateCart(CartVO cartVO) {
		int result_code = 200;
		try {
			cartMapper.updateCart(cartVO);
		}
		catch (Exception e) {
			// TODO: handle exception
			result_code = 300;
		}
		return result_code;
	}

	@Override
	public int deleteCart(CartVO cartVO) {
		int result_code = 200;
		
		try {
			cartMapper.deleteCart(cartVO);
		}
		catch (Exception e) {
			// TODO: handle exception
			result_code = 300;
		}
		return result_code;
	}

	
}
