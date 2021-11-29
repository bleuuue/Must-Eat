<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body {
	  margin: 0;
	  padding: 0;
	}
	.basic-info-list {
	    border-bottom: 1px solid #dbdbdb;
        background-color: #f7f7f7;
        display: block;
	}
	.inner {
		margin: 0 auto;
	    padding: 48px 30px 20px 30px;
	    width: 860px;
        border: 0 none;
        display: block;
        text-align: center;
	}
	.search-option {
		width: 120px;
    	height: 31px;
        display: block;
        border: 0 none;
        outline: none;
        margin-left: 375px;
        font-size: 1rem;
	}
	.restaurants-list {
		margin-top: 5px;
		list-style: none;
		display: block;
	    list-style-type: disc;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	.toplist {
		padding: 28px 0 28px;
		border-top: 0;
		float: none;
	    padding: 28px 0;
	    width: 90%;
	    border-top: 1px solid #dbdbdb;
	    border-bottom: 0;
	    margin: 0 auto;
	    list-style-type : none
	}
	.review {
		position: relative;
    	min-height: 238px;
    	overflow: hidden;
	}
	.item {
		display: flex;
	}
	.thumb{
		position: absolute;
	    top: 0;
	    left: 0;
	    height: 238px;
	    width: 238px;
	    overflow: hidden;
	    background-size: cover;
	    background-position: 50% 50%;
	}
	.foodImg{
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    object-fit: cover;
	    overflow: hidden;
    	background-size: cover;
    	background-position: center;
}
	}
	.info {
		position: relative;
    	text-decoration: none;
	}
	.foodTitle{
	    overflow: hidden;
	    max-width: 64%;
	    font-size: 1.000rem;
	    color: #555;
	    line-height: 1.3em;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    font-size: 1.3rem;
	}
	.point {
		font-size: 1.8rem;
    	display: inline-block;
        margin-left: 5px;
		color: #ff792a;
	}
	.etc {
		font-size: 1.063rem;
		margin-top: 6px;
		color: #9b9b9b;
    	line-height: 1.3em;
    	overflow: hidden;
        text-overflow: ellipsis;
    	white-space: nowrap;
    	padding-right: 10px;
	}
	.content {
		color: #555;
	}
</style>
</head>
<body>
	<jsp:include page="headerMenu.jsp"></jsp:include>
	<header class="basic-info-list">
		<div class="inner" style="padding-bottom: 10px">
			<h1>왕십리 맛집 베스트</h1>
		</div>
	</header>
	<div class="inner">
		<form action="sortRestaurant.do" method="post">
			<select class="search-option" name="searchKey" onChange="this.form.submit()">
				<option value="high">평점 높은순</option>
				<option value="low">평점 낮은순</option>
				<option value="title">이름순</option>
			</select>
		</form>
		<ul class="restaurants-list">
			<c:forEach items="${plist}" var="restaurant">
				<li class="toplist">
					<a href='info.do?seq=${restaurant.seq}'>
						<div class="review">
							<figure class="item">
								<div class="thumb" style="float: left">
									<div class="foodImg" style="background-image: url(${restaurant.titleImage});"></div>
								</div>
								<div style="float: left; margin-left:230px;">
									<div class="info">
										<div style="text-align: start;">
											<span class="foodTitle">${restaurant.title}</span>
											<strong class="point">${restaurant.score}</strong>
										</div>
										<p class="etc" style="text-align: start;">${restaurant.address}</p>
										<p class="content" style="text-align: start;">${restaurant.content}</span>
									</div>
								</div>
							</figure>
						</div>
					</a>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>