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
	
	public ArrayList<ProjectDO> getBoardList() {
		System.out.println("[Spring JDBC] -- getBoardList() 贸府--");
		
		String sql = "select * from restaurant";
		return (ArrayList<ProjectDO>) jdbcTemplate.query(sql, new BoardRowMapper());
	}
	
	public ProjectDO getBoard(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- getBoard() 贸府 --");		
		
		String sql = "select * from restaurant where seq=?";
		Object[] args = {pdo.getSeq()};
		
		return jdbcTemplate.queryForObject(sql, args, new BoardRowMapper());
	}
	
	public void insertBoard(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- insertBoard() 贸府 --");
		
		String sql = "insert into restaurant (title, score, content, address, number, food, businessHours, breakTime, lastOrder) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Object[] args = {pdo.getTitle(), pdo.getScore(), pdo.getContent(), pdo.getAddress(), pdo.getNumber(), pdo.getFood(), pdo.getBusinessHours(), pdo.getBreakTime(), pdo.getLastOrder()};
		jdbcTemplate.update(sql, args);
		
		System.out.println("-- 单捞磐海捞胶 贸府 肯丰(insertBoard) --");
	}
	
	
	
	//臂 荐沥窍扁
	public void updateBoard(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- updateBoard() 贸府 --");
		
		String sql = "update restaurant set title=?, score=?, content=?, address=?, number=?, food=?, businessHours=?, breakTime=?, lastOrder=? where seq=?";
		Object[] args = {pdo.getTitle(), pdo.getScore(), pdo.getContent(), pdo.getAddress(), pdo.getNumber(), pdo.getFood(), pdo.getBusinessHours(), pdo.getBreakTime(), pdo.getLastOrder(), pdo.getSeq()};
		jdbcTemplate.update(sql, args);
	}
	
	//臂 昏力
	public void deleteBoard(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- deleteBoard() 贸府 --");		
		
		String sql = "delete from restaurant where seq=?";
		Object[] args = {pdo.getSeq()};
		
		jdbcTemplate.update(sql, args);
	}
	
	public ArrayList<ProjectDO> searchBoardList(String searchCon, String searchKey) {
		System.out.println("[Spring JDBC] --> searchBoardList() 贸府 -- ");
		
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
		
		ProjectDO restaurant = new ProjectDO();
		restaurant.setSeq(rs.getInt(1));
		restaurant.setTitle(rs.getString(2));
		restaurant.setScore(rs.getFloat(3));
		restaurant.setContent(rs.getNString(4));
		restaurant.setAddress(rs.getString(5));
		restaurant.setNumber(rs.getString(6));
		restaurant.setFood(rs.getString(7));
		restaurant.setBusinessHours(rs.getString(8));
		restaurant.setBreakTime(rs.getString(9));
		restaurant.setLastOrder(rs.getString(10));
		restaurant.setTitleImage(rs.getString(11));
		restaurant.setImage1(rs.getString(12));
		restaurant.setImage2(rs.getString(13));
		restaurant.setImage3(rs.getString(14));
		restaurant.setImage4(rs.getString(15));
		restaurant.setImage5(rs.getString(16));
		
		return restaurant;
	}
}
