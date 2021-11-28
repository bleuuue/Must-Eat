package com.spring.project.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.project.service.ProjectService;

@Service("boardService")
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectDAO pdao;

	@Override
	public void insertBoard(ProjectDO pdo) {
		pdao.insertBoard(pdo);
	}

	@Override
	public ArrayList<ProjectDO> getBoardList() {
		// TODO Auto-generated method stub 
		return pdao.getBoardList();
	}

	@Override
	public ProjectDO getBoard(ProjectDO pdo) {
		// TODO Auto-generated method stub
		return pdao.getBoard(pdo);
	}

	@Override
	public void updateBoard(ProjectDO pdo) {
		pdao.updateBoard(pdo);
	}

	@Override
	public void deleteBoard(ProjectDO pdo) {
		pdao.deleteBoard(pdo);	
	}

}
