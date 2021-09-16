package com.pps.ek.noticeBoard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pps.ek.noticeBoard.model.service.NoticeBoardServiceImpl;
import com.pps.ek.noticeBoard.model.vo.NoticeBoard;

@Controller
public class NoticeBoardController
{
	@Autowired
	NoticeBoardServiceImpl service;
	
	//게시판 목록 호출
	@GetMapping("/NoticeBoardList")
	public ModelAndView NoticeBoardList(ModelAndView model,
										@RequestParam(value="page", required=false, defaultValue= "1") int page
										)
	{
		List<NoticeBoard> boardlist;
		boardlist = service.getBoardList();
		System.out.println(boardlist);
		model.addObject("boardlist",boardlist);
		model.setViewName("noticeboard/noticelist");
		
		return model;
	}
	
	//게시글 상세조회
	@GetMapping("/NoticeBoardView")
	public ModelAndView NoticeBoardView(ModelAndView model,
										@RequestParam(value="no") int boardNo
										)
	{
		NoticeBoard notice;
		notice = service.getBoardView(boardNo);
		model.addObject("notice",notice);
		model.setViewName("noticeboard/noticeView");
		return model;
	}
	
	//게시글 작성 페이지로 이동
	@GetMapping("/NoticeBoardWrite")
	public ModelAndView NoticeBoardWritePage(ModelAndView model)
	{
		model.setViewName("noticeboard/noticeWrite");
		return model;
	}
	
	//게시글 작성
	@PostMapping("/NoticeBoardWrite")
	public ModelAndView NoticeBoardWrite(ModelAndView model,
										@RequestParam(value="noticeDestination") String destination,
										@RequestParam(value="noticeTitle") String title,
										@RequestParam(value="noticeContent") String content
										)
	{
		int success=0;
		success = service.boardWrite(destination,title,content);
		
		if(success==1)
		{
			model.addObject("msg","데이터가 전송되었습니다");
			model.addObject("location","/NoticeBoardList");
			model.setViewName("common/msg");			
		}
		else
		{
			model.addObject("msg","잘못된 접근");
			model.addObject("location","/noticeWrite");
			model.setViewName("common/msg");
		}
		return model;
	}
	
	//게시글 삭제
	@GetMapping("/NoticeBoardDelete")
	public ModelAndView NoticeBoardDelete(ModelAndView model,
										 @RequestParam(value="no") int boardNo
										 )
	{
		int success=0;
		success=service.boardDelete(boardNo);
		
		if(success==1)
		{
			model.addObject("msg","데이터가 삭제되었습니다.");
			model.addObject("location","/NoticeBoardList");
			model.setViewName("common/msg");
		}
		else
		{
			model.addObject("msg","데이터 삭제 실패");
			model.addObject("location","/");
		}
		return model;
	}
	
	//업데이트 페이지로
	@GetMapping("/NoticeBoardUpdate")
	public ModelAndView NoticeBoardUpdatePage(ModelAndView model,
			@RequestParam(value="no") int boardNo
			)
	{
		NoticeBoard board = service.getBoardView(boardNo);
		model.addObject("board",board);
		model.setViewName("noticeboard/noticeUpdate");
		return model;
	}
	
	//업데이트 실행
	@PostMapping("/NoticeBoardUpdate")
	public ModelAndView NoticeBoardUpdate(ModelAndView model,
										 @RequestParam(value="no") int boardNo,
										 @RequestParam(value="noticeTitle") String title,
										 @RequestParam(value="noticeContent") String content
										 )
										
	{
		int success=0;
		success=service.boardUpdate(boardNo,title,content);
		
		if(success==1)
		{
			model.addObject("msg","데이터가 수정되었습니다.");
			model.addObject("location","/NoticeBoardList");
			model.setViewName("common/msg");
		}
		else
		{
			model.addObject("msg","데이터 수정 실패");
			model.addObject("location","/");
		}
		return model;
	}

	//데이터 작성 페이지로 이동
	@GetMapping("/example")
	public ModelAndView NCAWritePage(ModelAndView model)
	{
		model.setViewName("example/example");
		return model;
	}
	
}
