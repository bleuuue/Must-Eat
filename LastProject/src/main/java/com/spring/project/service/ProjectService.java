package com.spring.project.service;

import java.util.ArrayList;

import com.spring.project.impl.ProjectDO;

public interface ProjectService {
	
	//1. 데이터 삽입
	void insertBoard(ProjectDO pdo);
	
	//2. 모든 데이터 가져오기
	ArrayList<ProjectDO> getBoardList();
	
	//3. 조회된 데이터 가져오기
	ProjectDO getBoard(ProjectDO pdo);
	
	//4. 데이터 수정
	void updateBoard(ProjectDO pdo);
	
	//5. 데이터 삭제
	void deleteBoard(ProjectDO pdo);
}
