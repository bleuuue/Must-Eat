<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
	  margin: 0;
	}
	.pg-main {
		padding: 38px 35px 36px 35px;
		position: relative;
		display: block;
		margin-top: 450px;
	}
	.mainTitle {
		float: left;
        color: #ff792a;
    	line-height: 1.35em;
    	text-align: left;
    	margin-left: 25px;
	}
	.slick-list {
		position: relative;
	    display: block;
	    overflow: hidden;
	    margin: 0;
	    padding: 0;
	    border: 0 none;
	}
	.slick-track {
		position: relative;
	    top: 0;
	    left: 0;
	    display: block;
	    border: 0 none;
	    width: 3060px;
	}
	
	.info {
		height: 236px;
	    width: 546px;
	    box-sizing: border-box;
	    position: relative;
	    display: flex;
	    text-align: center;
	}
	.info_inner_wrap {
		position: relative;
        border: 0 none;
        margin: auto;
	}
	.infoTitle {
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    word-wrap: normal;
	    display: block;
	    color: #ffffff;
	    line-height: 1.2em;
	    word-break: break-all;
	    font-size: 1.8rem;
	    text-align: center;
	}
	.list {
	    width: 546px;
	    margin-left: 29px;
	    overflow: hidden;
    	position: relative;
        display: block;
        list-style: none;
        float: left;
    	min-height: 1px;
	}
	ex-img {
		width: 481px;
		height: 236px;
		background-color: red;
	}
</style>
</head>
<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div class="pg-main">
		<div style="display: flex">
			<h2 class="mainTitle">믿고 보는 맛집 리스트</h2>
		</div>
		<div>
			<div class="slick-list">
				<div class="slick-track">
					<ul class="list" style="margin-left: -13px">
						<li style="margin-bottom: 30px;">
							<a href="list.do" style="text-decoration : none;">
								<div class="info" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/slick1.jpg');">
									<div class="info_inner_wrap">
										<span class="infoTitle">한남동 맛집 베스트</span>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="list.do" style="text-decoration : none;">
								<div class="info" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/slick1.jpg');">
									<div class="info_inner_wrap">
										<span class="infoTitle">한남동 맛집 베스트</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
					<ul class="list">
						<li style="margin-bottom: 30px;">
							<a href="list.do" style="text-decoration : none;">
								<div class="info" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/slick1.jpg');">
									<div class="info_inner_wrap">
										<span class="infoTitle">한남동 맛집 베스트</span>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="list.do" style="text-decoration : none;">
								<div class="info" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/slick1.jpg');">
									<div class="info_inner_wrap">
										<span class="infoTitle">한남동 맛집 베스트</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
					<ul class="list">
						<li style="margin-bottom: 30px;">
							<a href="list.do" style="text-decoration : none;">
								<div class="info" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/slick1.jpg');">
									<div class="info_inner_wrap">
										<span class="infoTitle">한남동 맛집 베스트</span>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="list.do" style="text-decoration : none;">
								<div class="info" style="background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url('/springmvc/resources/images/slick1.jpg');">
									<div class="info_inner_wrap">
										<span class="infoTitle">한남동 맛집 베스트</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>