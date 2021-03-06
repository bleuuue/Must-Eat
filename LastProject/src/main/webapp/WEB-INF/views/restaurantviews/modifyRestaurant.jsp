<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.pg-restaurant {
		margin-top: 20px;
	    padding: 60px 100px;
	    position: relative;
	    display: block;
	    border-collapse: collapse;
        box-sizing: border-box;
	    text-indent: initial;
	    border: 1px solid #dbdbdb;
	}
	.rth {
		width: 110px;
	    font-size: 15px;
	    color: rgba(79,79,79,0.6);
	    line-height: 1.7;
	    text-align: left;
	    vertical-align: top;
	    padding-right: 10px;
	    padding-bottom: 5px;
	}
	.rtd {
	    font-size: 15px;
	    color: #4f4f4f;
	    line-height: 1.7;
	    text-align: left;
	    vertical-align: middle;
	    padding-bottom: 20px;
	}
	input {
		width: 500px;
		height: 20px;
		border: 0 none;
		border-bottom: 1px solid #dbdbdb;
	}
	input:focus {
		outline:none;
	}
</style>
</head>
<body>
	<jsp:include page="headerMenu.jsp"></jsp:include>
	<header class="basic-info-list">
		<div class="inner" style="padding-bottom: 10px">
			<h1>추천 맛집 수정</h1>
		</div>
	</header>
	<div class="inner">
		<form action="modifyProc.do?seq=${restaurant.seq}" method="post">
			<table class="pg-restaurant">
				<tbody style="">
					<tr>
						<th class="rth">이름</th>
						<td class="rtd">
							<input type="text" value="${restaurant.title}" name="title">
						</td>
					</tr>
					<tr>
						<th class="rth">평점</th>
						<td class="rtd">
							<input type="text" value="${restaurant.score}" name="score">
						</td>
					</tr>
					<tr>
						<th class="rth">설명</th>
						<td class="rtd">
							<input type="text" value="${restaurant.content}" name="content">
						</td>
					</tr>
					<tr>
						<th class="rth">주소</th>
						<td class="rtd">
							<input type="text" value="${restaurant.address}" name="address">
						</td>
					</tr>
					<tr>
						<th class="rth">전화번호</th>
						<td class="rtd">
							<input type="text" value="${restaurant.number}" name="number">
						</td>
					</tr>
					<tr>
						<th class="rth">음식 종류</th>
						<td class="rtd">
							<input type="text" value="${restaurant.food}" name="food">
						</td>
					</tr>
					<tr>
						<th class="rth">영업시간</th>
						<td class="rtd">
							<input type="text" value="${restaurant.businessHours}" name="businessHours">
						</td>
					</tr>
					<tr>
						<th class="rth">break-time</th>
						<td class="rtd">
							<input type="text" value="${restaurant.breakTime}" name="breakTime">
						</td>
					</tr>
					<tr>
						<th class="rth">last-order</th>
						<td class="rtd" style="padding-bottom: 50px;">
							<input type="text" value="${restaurant.lastOrder}" name="lastOrder">
						</td>
					</tr>
					<tr>
						<th class="rth">title-image</th>
						<td class="rtd">
							<input type="text" value="${restaurant.titleImage}" name="titleImage">
						</td>
					</tr>
					<tr>
						<th class="rth">serve-image1</th>
						<td class="rtd">
							<input type="text" value="${restaurant.image1}" name="image1">
						</td>
					</tr>
					<tr>
						<th class="rth">serve-image2</th>
						<td class="rtd">
							<input type="text" value="${restaurant.image2}" name="image2">
						</td>
					</tr>
					<tr>
						<th class="rth">serve-image3</th>
						<td class="rtd">
							<input type="text" value="${restaurant.image3}" name="image3">
						</td>
					</tr>
					<tr>
						<th class="rth">serve-image4</th>
						<td class="rtd">
							<input type="text" value="${restaurant.image4}" name="image4">
						</td>
					</tr>
					<tr>
						<th class="rth">serve-image5</th>
						<td class="rtd">
							<input type="text" value="${restaurant.image5}" name="image5">
						</td>
					</tr>
					<tr>
						<th></th>
						<td style="border: none;">
							<input type="submit" value="수정" style="height: 40px; cursor: pointer; background-color: #ff7100; color: white; padding-top: 10px; padding-bottom: 10px;">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>