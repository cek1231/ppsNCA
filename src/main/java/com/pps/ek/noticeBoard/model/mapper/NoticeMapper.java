package com.pps.ek.noticeBoard.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pps.ek.noticeBoard.model.vo.NoticeBoard;

@Mapper
public interface NoticeMapper {
	List<NoticeBoard> selectBoardList(); //게시글 목록

	NoticeBoard selectNotice(int boardNo); //게시글 상세조회

	int insertNotice(@Param("destination") String destination, @Param("title")String title, @Param("content") String content); //게시글 작성

	int deleteNotice(@Param("no") int no);

	int updateNotice(@Param("no") int no, @Param("title") String title, @Param("content") String content);
}
