package com.global.kapla.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.OrderMapper;
import com.global.kapla.service.OrderService;
import com.global.kapla.vo.CartVO;

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
		log.info("꺼내온값 "+list);
		
		for (int i = 0; i<list.size(); i++) {
			//서버로 넘어온 수량 입력후 합계 계산
			list.get(i).setQuantity(Integer.parseInt(quantityList[i]));
			list.get(i).setSum_price(list.get(i).getQuantity() * list.get(i).getPrice());
		}
		log.info("수량추가후"+list);
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

	
	
}
