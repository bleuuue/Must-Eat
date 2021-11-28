package com.spring.project.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository("boardDAOSpring")
public class ProjectDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	//DO로 넘어오는 데이터를 받아서 데이터베이스에 저장
	public void insertBoard(ProjectDO bdo) {
		System.out.println("[Spring JDBC] -- insertBoard() 처리 --");
		
		String sql = "insert into boardService (title, writer, content) values (?, ?, ?)";
		Object[] args = {bdo.getTitle(), bdo.getWriter(), bdo.getContent()};
		jdbcTemplate.update(sql, args);
		
		System.out.println("-- 데이터베이스 처리 완료(insertBoard) --");
	}
	
	public ArrayList<ProjectDO> getBoardList() {
		System.out.println("[Spring JDBC] -- getBoardList() 처리--");
		
		String sql = "select * from boardService";
		return (ArrayList<ProjectDO>) jdbcTemplate.query(sql, new BoardRowMapper());
	}
	
	//글 조회
	public ProjectDO getBoard(ProjectDO bdo) {
		System.out.println("[Spring JDBC] -- getBoard() 처리 --");		
		
		String sql = "select * from boardService where seq=?";
		Object[] args = {bdo.getSeq()};
		
		return jdbcTemplate.queryForObject(sql, args, new BoardRowMapper());
	}
	
	//글 수정하기
	public void updateBoard(ProjectDO bdo) {
		System.out.println("[Spring JDBC] -- updateBoard() 처리 --");
		
		String sql = "update boardService set title=?, content=? where seq=?";
		Object[] args = {bdo.getTitle(), bdo.getContent(), bdo.getSeq()};
		jdbcTemplate.update(sql, args);
	}
	
	//글 삭제
	public void deleteBoard(ProjectDO bdo) {
		System.out.println("[Spring JDBC] -- deleteBoard() 처리 --");		
		
		String sql = "delete from boardService where seq=?";
		Object[] args = {bdo.getSeq()};
		jdbcTemplate.update(sql, args);
	}
	
	public ArrayList<ProjectDO> searchBoardList(String searchCon, String searchKey) {
		System.out.println("[Spring JDBC] --> searchBoardList() 처리 -- ");
		
		String sql = "";
		if(searchCon.equals("title")) {
			sql = "select * from boardservice where title=? order by seq desc";
		} else if(searchCon.equals("content")) { 
			sql = "select * from boardservice where content=? order by seq asc";
		} else if(searchCon.equals("writer")) { 
			sql = "select * from boardservice where writer=? order by seq asc";
		}
		Object[] args = {searchKey};
		return (ArrayList<ProjectDO>) jdbcTemplate.query(sql, args, new BoardRowMapper());

	}
}

class BoardRowMapper implements RowMapper<ProjectDO>{

	@Override
	public ProjectDO mapRow(ResultSet rs, int rowNum) throws SQLException {
		System.out.println("[Spring JDBC] BoardRowMapper -->");
		
		ProjectDO board = new ProjectDO();
		board.setSeq(rs.getInt(1));
		board.setTitle(rs.getString(2));
		board.setWriter(rs.getString(3));
		board.setContent(rs.getNString(4));
		board.setRegdate(rs.getString(5));
		
		return board;
	}
}
