package com.pps.ek.noticeBoard.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pps.ek.noticeBoard.model.vo.NoticeBoard;

@Service
public interface NoticeBoardService {
	// 게시판 목록 호출
	public List<NoticeBoard> getBoardList();
	
	// 게시글 상세 조회
	NoticeBoard getBoardView(int boardNo);
	
	//게시글 작성
	int boardWrite(String destination, String title, String content);
	
	//게시글 삭제
	int boardDelete(int no);
	
	//업데이트
	int boardUpdate(int no, String title, String content);
}
