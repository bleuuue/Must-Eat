package com.spring.project.service;

import java.util.ArrayList;

import com.spring.project.impl.ProjectDO;

public interface ProjectService {
	
	//1. ������ ����
	void insertBoard(ProjectDO pdo);
	
	//2. ��� ������ ��������
	ArrayList<ProjectDO> getBoardList();
	
	//3. ��ȸ�� ������ ��������
	ProjectDO getBoard(ProjectDO pdo);
	
	//4. ������ ����
	void updateBoard(ProjectDO pdo);
	
	//5. ������ ����
	void deleteBoard(ProjectDO pdo);
}
