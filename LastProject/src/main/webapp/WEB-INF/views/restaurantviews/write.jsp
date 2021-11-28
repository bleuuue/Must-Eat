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
			<h1>추천 맛집 작성</h1>
		</div>
	</header>
	<div class="inner">
		<form action="insertProc.do" method="post">
			<table class="pg-restaurant">
				<tbody style="">
					<tr>
						<th class="rth">이름</th>
						<td class="rtd">
							<input type="text" name="title">
						</td>
					</tr>
					<tr>
						<th class="rth">평점</th>
						<td class="rtd">
							<input type="text" name="score">
						</td>
					</tr>
					<tr>
						<th class="rth">설명</th>
						<td class="rtd">
							<input type="text" name="content">
						</td>
					</tr>
					<tr>
						<th class="rth">주소</th>
						<td class="rtd">
							<input type="text" name="address">
						</td>
					</tr>
					<tr>
						<th class="rth">전화번호</th>
						<td class="rtd">
							<input type="text" name="number">
						</td>
					</tr>
					<tr>
						<th class="rth">음식 종류</th>
						<td class="rtd">
							<input type="text" name="food">
						</td>
					</tr>
					<tr>
						<th class="rth">영업시간</th>
						<td class="rtd">
							<input type="text" name="businessHours">
						</td>
					</tr>
					<tr>
						<th class="rth">break-time</th>
						<td class="rtd">
							<input type="text" name="breakTime">
						</td>
					</tr>
					<tr>
						<th class="rth">last-order</th>
						<td class="rtd">
							<input type="text" name="lastOrder">
						</td>
					</tr>
					<tr>
						<th></th>
						<td style="border: none;">
							<input type="submit" value="등록" style="height: 40px; background-color: #ff7100; color: white; padding-top: 10px; padding-bottom: 10px;">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>