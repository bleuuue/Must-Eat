package com.spring.project.impl;

public class ProjectDO {
	private int seq;		//글순서
	private String title;	//글제목
	private String writer;	//글쓴이
	private String content;	//글의 내용
	private String regdate;	//글의 등록 날짜

	@Override
	public String toString() {
		return "BoardDO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", getSeq()=" + getSeq() + ", getTitle()=" + getTitle() + ", getWriter()=" + getWriter()
				+ ", getContent()=" + getContent() + "]";
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

}
