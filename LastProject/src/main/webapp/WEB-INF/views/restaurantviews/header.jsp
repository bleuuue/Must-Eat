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
	  background-color: rgb(32, 56, 100);
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
	.searc-input {
		line-height: 50px;
	    color: #cbcbcb;
	    opacity: 1;
	    height: 50px;
	    font-size: 1.1rem;
	    display: block;
	    width: 100%;
	    border: 0px;
	    margin-left: 30px;
	    outline: none;
	}

</style>
</head>
<body>
	<header>
      <div class="title">
        <div class="top" style="text-align: end">
        	맛집 추가
	     </div>
        <div class="titleT" style="margin-top: 100px; font-size: 2.2rem;">솔직한 리뷰, 믿을 수 있는 평점!
        <div class="titleT" style="margin-top: 2px; font-size: 3.2rem;">Must - Eat</div>
        <div class="titleT search">
        	<input class="searc-input" type="text" placeholder="지역, 식당 또는 음식" maxlength="50"/>
        	<input class="btn-search" type="submit" value="검색"/>
        </div>
      </div>
    </header>
    	<img src='/springmvc/resources/images/main.jpg'>
</body>
</html>