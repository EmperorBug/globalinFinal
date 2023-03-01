package com.global.kapla.service;

import java.util.List;

import com.global.kapla.vo.BoardVO;

public interface BoardService {
	
	public List<BoardVO> getList(); // FAQ 메인화면 리스트
	public List<BoardVO> getNoticeList(); // 공지글 리스트
	BoardVO readPost(int board_no); //공지글보기 메소드
	
}
