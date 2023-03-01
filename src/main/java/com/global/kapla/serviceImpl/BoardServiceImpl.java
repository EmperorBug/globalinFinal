package com.global.kapla.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.BoardMapper;
import com.global.kapla.service.BoardService;
import com.global.kapla.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper boardmapper;
	
	@Override
	public List<BoardVO> getList() {
		
		return boardmapper.getList();
	}

	@Override
	public BoardVO readPost(int board_no) {
			
		return boardmapper.readPost(board_no);

	}

	@Override
	public List<BoardVO> getNoticeList() {
		return boardmapper.getNoticeList();
	}
	
}
