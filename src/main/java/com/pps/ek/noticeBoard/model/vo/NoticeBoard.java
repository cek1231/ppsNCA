package com.pps.ek.noticeBoard.model.vo;

public class NoticeBoard {

	//게시글 번호
	private int boardNo;
	
	//게시글 제목
	private String boardTitle;
	
	//게시글 내용
	private String boardContents;
	
	//게시글 작성 시간
	private String boardEnrollTime;
	
	//게시글 작성자
	private String boardDestination;
	
	
	
	
	//getter/setter
	public String getBoardEnrollTime() {
		return boardEnrollTime;
	}
	public String getBoardDestination() {
		return boardDestination;
	}
	public void setBoardDestination(String boardDestination) {
		this.boardDestination = boardDestination;
	}
	public void setBoardEnrollTime(String boardEnrollTime) {
		this.boardEnrollTime = boardEnrollTime;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContents() {
		return boardContents;
	}
	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}
	
}
