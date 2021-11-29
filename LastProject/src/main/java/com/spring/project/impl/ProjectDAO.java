package com.spring.project.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository("boardDAOSpring")
public class ProjectDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public ArrayList<ProjectDO> getRestaurantList() {
		System.out.println("[Spring JDBC] -- getRestaurantList() 贸府--");
		
		String sql = "select * from restaurant order by score desc";
		return (ArrayList<ProjectDO>) jdbcTemplate.query(sql, new BoardRowMapper());
	}
	
	public ProjectDO getRestaurant(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- getRestaurant() 贸府 --");		
		
		String sql = "select * from restaurant where seq=?";
		Object[] args = {pdo.getSeq()};
		
		return jdbcTemplate.queryForObject(sql, args, new BoardRowMapper());
	}
	
	public void insertRestaurant(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- insertRestaurant() 贸府 --");
		
		String sql = "insert into restaurant (title, score, content, address, number, food, businessHours, breakTime, lastOrder, titleImage, image1, image2, image3, image4, image5) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Object[] args = {pdo.getTitle(), pdo.getScore(), pdo.getContent(), pdo.getAddress(), pdo.getNumber(), pdo.getFood(), pdo.getBusinessHours(), pdo.getBreakTime(), pdo.getLastOrder(), pdo.getTitleImage(), pdo.getImage1(), pdo.getImage2(), pdo.getImage3(), pdo.getImage4(), pdo.getImage5()};
		jdbcTemplate.update(sql, args);
		
		System.out.println("-- 单捞磐海捞胶 贸府 肯丰(insertBoard) --");
	}
	
	public void updateRestaurant(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- updateRestaurant() 贸府 --");
		
		String sql = "update restaurant set title=?, score=?, content=?, address=?, number=?, food=?, businessHours=?, breakTime=?, lastOrder=? where seq=?";
		Object[] args = {pdo.getTitle(), pdo.getScore(), pdo.getContent(), pdo.getAddress(), pdo.getNumber(), pdo.getFood(), pdo.getBusinessHours(), pdo.getBreakTime(), pdo.getLastOrder(), pdo.getSeq()};
		jdbcTemplate.update(sql, args);
	}
	
	public void deleteRestaurant(ProjectDO pdo) {
		System.out.println("[Spring JDBC] -- deleteRestaurant() 贸府 --");		
		
		String sql = "delete from restaurant where seq=?";
		Object[] args = {pdo.getSeq()};
		
		jdbcTemplate.update(sql, args);
	}
	
	public ArrayList<ProjectDO> searchRestaurant(String searchCon, String searchKey) {
		System.out.println("[Spring JDBC] --> searchBoardList() 贸府 -- ");
		
		String sql = "";
		if(searchCon.equals("title")) {
			sql = "select * from restaurant where title like ? order by score desc";
		} else if(searchCon.equals("address")) { 
			sql = "select * from restaurant where address like ? order by score desc";
		} else if(searchCon.equals("food")) { 
			sql = "select * from restaurant where food like ? order by score desc";
		}

		Object[] args = {"%" + searchKey + "%"};
		
		return (ArrayList<ProjectDO>) jdbcTemplate.query(sql, args, new BoardRowMapper());
	}
	
	public ArrayList<ProjectDO> sortRestaurant(String searchKey) {
		System.out.println("[Spring JDBC] --> orderRestaurantList() 贸府 -- ");
		
		String sql = "";
		if(searchKey.equals("high")) {
			sql = "select * from restaurant order by score desc";
		} else if(searchKey.equals("low")) { 
			sql = "select * from restaurant order by score";
		} else if(searchKey.equals("title")) { 
			sql = "select * from restaurant order by title";
		}
		
		return (ArrayList<ProjectDO>) jdbcTemplate.query(sql, new BoardRowMapper());
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
