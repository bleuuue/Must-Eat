package com.spring.project.impl;

public class ProjectDO {
	private int seq;		//�ۼ���
	private String title;	//������
	private String writer;	//�۾���
	private String content;	//���� ����
	private String regdate;	//���� ��� ��¥

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
