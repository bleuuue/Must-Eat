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
	  padding: 0;
	}
	.restaurant-photos {
		width: 100%;
    	overflow: hidden;
	}
	.list-photo {
    	display: block;
        height: 340px;
        position: relative;
    	width: 100%;
	}
	.wrapper-outer {
	    display: block;
	    position: relative;
	    width: 100%;
	    height: 340px;
        border: 0 none;
	}
	.owl-wrapper {
		width: 3810px;
		height: 340px;
	    left: 0px;
	    display: block;
        border: 0 none;
	}
	.owl-item {
		width: 400px;
		height: 340px;
		position: relative;
		float: left;
		border: 0 none;
	}
	.center-croping {
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    object-fit: cover;
        border: none;
   		vertical-align: top;
	}
	.restaurant-detail {
		width: 800px;
	    margin: 0 auto;
	    margin-top: 20px;
        padding: 30px 0 0;
	}
	.restaurant-title {
	    padding-right: 50px;
	    max-width: 75%;
	    font-size: 1.8rem;
	    line-height: 46px;
	    display: flex;
	    box-sizing: border-box;
	    position: relative;
	    color: #000000;
	}
	.rate-point {
		color: #ff792a;
		margin-left: 20px;
		padding-top: 45px;
	}
	.line {
		padding-bottom: 30px;
	}
	.pg-restaurant {
	    padding: 20px 0;
	    position: relative;
	    display: block;
	    border-collapse: collapse;
        box-sizing: border-box;
	    text-indent: initial;
	    border-top: 1px solid #dbdbdb;
	}
	.rth {
		width: 110px;
	    font-size: .9rem;
	    color: rgba(79,79,79,0.6);
	    line-height: 1.7;
	    text-align: left;
	    vertical-align: top;
	    padding-right: 10px;
	    padding-bottom: 5px;
	}
	.rtd {
	    font-size: .9rem;
	    color: #4f4f4f;
	    line-height: 1.7;
	    text-align: left;
	    vertical-align: middle;
	    padding-bottom: 5px;
	}
</style>
</head>
<body>
	<jsp:include page="headerMenu.jsp"></jsp:include>
	<aside class="restaurant-photos">
		<div class="list-photo">
			<div class="wrapper-outer">
				<div class="owl-wrapper">
					<div class="owl-item">
						<div class="center-croping" style="background-image: url('/springmvc/resources/images/sushi1.jpg');">
						</div>
					</div>
					<div class="owl-item">
						<div class="center-croping" style="background-image: url('/springmvc/resources/images/sushi1.jpg');">
						</div>
					</div>
					<div class="owl-item">
						<div class="center-croping" style="background-image: url('/springmvc/resources/images/sushi1.jpg');">
						</div>
					</div>
					<div class="owl-item">
						<div class="center-croping" style="background-image: url('/springmvc/resources/images/sushi1.jpg');">
						</div>
					</div>
					<div class="owl-item">
						<div class="center-croping" style="background-image: url('/springmvc/resources/images/sushi1.jpg');">
						</div>
					</div>
				</div>
			</div>
		</div>
	</aside>
	<section class="restaurant-detail">
		<header>
			<div>
				<span class="restaurant-title">
					<h1 class="">나비스시</h1>
					<strong class="rate-point">
						<span>4.4</span>
					</strong>
				</span>
			</div>
		</header>
		<div class="line">
			스시 존맛탱 ㄴㅁㄹ아ㅣㅓ닝ㄹ미낭러ㅣㄴ러ㅏㅇㄴ러ㅣ넘ㄹ<br>
			ㅁㄴㅇㄹㄴ망러ㅣ너리ㅏ너ㅣㄹ
		</div>
		<table class="pg-restaurant">
			<tbody>
				<tr>
					<th class="rth">주소</th>
					<td class="rtd">경기도 성남시 분당구 돌마로</td>
				</tr>
				<tr>
					<th class="rth">전화번호</th>
					<td class="rtd">324203</td>
				</tr>
				<tr>
					<th class="rth">음식 종류</th>
					<td class="rtd">324203</td>
				</tr>
				<tr>
					<th class="rth">가격대</th>
					<td class="rtd">324203</td>
				</tr>
				<tr>
					<th class="rth">영업시간</th>
					<td class="rtd">324203</td>
				</tr>
				<tr>
					<th class="rth">break-time</th>
					<td class="rtd">324203</td>
				</tr>
				<tr>
					<th class="rth">last-order</th>
					<td class="rtd">324203</td>
				</tr>
			</tbody>
		</table>
	</section>
</body>
</html>