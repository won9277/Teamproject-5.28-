<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/CoupleDiary/assets/css/board.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/WEB-INF/views/include/header.jsp" />
		</div>
		<div id="content">
			<div id="board" class="board-form">
				<table class="tbl-ex">
					<tr>
						<th colspan="2">글보기</th>
					</tr>
					<tr>
						<td class="label">제목</td>
						<td>${boardvo.title}</td>
					</tr>
					<tr>
						<td class="label">내용</td>
						<td cols>
							<div class="view-content">
							${boardvo.content}
							</div>
						</td>
					</tr>
					</table>
					
					<table id = "tbl-re">
					
					<tr> 
						<td> name </td>
						<td> content </td>
					</tr>
					<c:forEach var="r" items="${list }">
						<tr>
							<td> ${r.member_id }</td>
							<td> ${r.content }</td>
							<td> ${r.reg_date }</td>
							</tr>
					</c:forEach>
					
					
					<tr>
						<td> reply</td>
						<td> 
						<form action="/CoupleDiary/board/insert" method="post">
							<input type ="text" name = "content">
							<input type ="hidden" name = "member_id" value ="${authMember.member_id }">
							<input type ="hidden" name = "name" value ="${authMember.name }">
							<input type ="hidden" name = "board_no" value ="${boardvo.no}">
							<input type ="submit" value ="입력">
						</form>						
						</td>
					</tr>
				</table>
				<div class="bottom">
					<a href="/CoupleDiary/board/index">글목록</a>
					<a href="/CoupleDiary/board/modify/${boardvo.no}">글수정</a>
				</div>
			</div>
		</div>
		
		<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>