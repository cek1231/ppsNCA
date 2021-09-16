package com.pps.ek.noticeBoard.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.pps.ek.noticeBoard.model.mapper.NoticeMapper;
import com.pps.ek.noticeBoard.model.vo.NoticeBoard;


@Service
@Repository
public class NoticeBoardServiceImpl implements NoticeBoardService{
	@Autowired
	private NoticeMapper mapper;
	
	// 게시판 목록 호출
	@Override
	public List<NoticeBoard> getBoardList() {
		return mapper.selectBoardList();
	}
	
	//게시판 상세 조회
	@Override
	public NoticeBoard getBoardView(int boardNo) {
		return mapper.selectNotice(boardNo);
	}

	//게시글 작성
	@Override
	public int boardWrite(String destination, String title, String content) {
		return mapper.insertNotice(destination, title, content);
	}

	//게시글 삭제
	@Override
	public int boardDelete(int no) {
		return mapper.deleteNotice(no);
	}

	//게시글 수정
	@Override
	public int boardUpdate(int no, String title, String content) {
		// TODO Auto-generated method stub
		return mapper.updateNotice(no, title, content);
	}

}
