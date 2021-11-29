<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap");
	body {
	  margin: 0;
	}
	header {
	  height: 43px;
	  font-family: "Noto Sans KR", sans-serif;
	}
	.title {
	  margin: 0px;
	  font-size: 20px;
	  color: white;
	  height: 63px;
	  width: 1903px;
	  height: 500px;
	  text-align: center;
	  background-position: center;
	  background-size: cover;
	  overflow: hidden;
	  background-color: rgba(0,0,0,0.3);
	}
	.top {
	  position: relative;
	  top: 8px;
	  padding-right: 40px;
	}
	.titleT {
	  position: relative;
	  text-align: center;
	  z-index: 1;
	}
	.search {
		width: 738px;
		height: 50px;
		margin: 45px auto 0 auto;
		border: 2px solid #ff7100;
		border-radius: 80px;
    	overflow: hidden;
    	background-color: #ffffff;
    	display: flex;
	}
	.btn-search {
	    width: 180px;
	    font-size: 1.313rem;
	    line-height: 52px;
	    border-radius: 80px;
	    display: block;
	    position: absolute;
	    top: 0;
	    right: -1px;
	    background-color: #ff7100;
    	height: 100%;
        color: #ffffff;
        border: 0px;
	}
	.search-option {
		width: 70px;
    	height: 31px;
        display: block;
        border: 0 none;
        position: absolute;
        top: 10px;
        left: 20px;
        outline: none;
	}
	.search-input {
		line-height: 50px;
	    color: #757575;
	    opacity: 1;
	    height: 50px;
	    font-size: 1.1rem;
	    display: block;
	    width: 100%;
	    border: 0px;
	    margin-left: 105px;
	    outline: none;
	}
	.main-header {
		text-align: center;
    	background-position: center;
    	background-size: cover;
        overflow: hidden;
	}

</style>
</head>
<body>
	<header>
      <div class="title" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/main.jpg');">
        <div class="top" style="text-align: end" onclick="location.href='write.do'">
        	맛집 추가
	     </div>
        <div class="titleT" style="margin-top: 100px; font-size: 2.2rem;">솔직한 리뷰, 믿을 수 있는 평점!
        <div class="titleT" style="margin-top: 2px; font-size: 3.2rem;">Must - Eat</div>
        <form action="searchRestaurant.do" method="post">
	        <div class="titleT search">
				    <select class="search-option" name="searchCon">
						<option value="title">식당</option>
						<option value="address">주소</option>
						<option value="food">음식</option>
					</select>
	        	<input class="search-input" type="text" name="searchKey" placeholder="지역, 식당 또는 음식" maxlength="50"/>
	        	<input class="btn-search" type="submit" value="검색"/>
	        </div>
        </form>
      </div>
    </header>
</body>
</html>