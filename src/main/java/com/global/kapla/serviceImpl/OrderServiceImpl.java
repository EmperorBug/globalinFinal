package com.global.kapla.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.global.kapla.mapper.OrderMapper;
import com.global.kapla.service.OrderService;
import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.OrderVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderMapper orderMapper;
	
	@Override
	public List<CartVO> getCartList(String[] itemList, String[] quantityList) {
		// TODO Auto-generated method stub
		
		List<CartVO> list = orderMapper.getList(itemList);
		
		for (int i = 0; i<list.size(); i++) {
			//서버로 넘어온 수량 입력후 합계 계산
			list.get(i).setQuantity(Integer.parseInt(quantityList[i]));
			list.get(i).setSum_price(list.get(i).getQuantity() * list.get(i).getPrice());
		}
		return list;
	}

	@Override
	public int getTotalPrice(List<CartVO> list) {
		
		int total_price = 0;
		
		for (int i=0; i <list.size(); i++) {
			total_price += (int)list.get(i).getSum_price();
		}
		
		return total_price;
	}

	@Override
	public String getOrderNo() {
		
		return orderMapper.getOrderNo();
	}

	/**
	 *  resultCode 	= 200 - 통신성공 
	 *  			= 300 - 통신실패
	 */
	@Override
	@Transactional
	public int insertOrder(OrderVO orderVO) {
		// TODO Auto-generated method stub
		
		int resultCode = 200;
		log.info("VO값"+orderVO);
		try {
			orderMapper.insertOrder(orderVO);
			orderMapper.insertOrderDetail(orderVO);
		
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resultCode = 300;
		}
		return resultCode;
	}

	
	
}
