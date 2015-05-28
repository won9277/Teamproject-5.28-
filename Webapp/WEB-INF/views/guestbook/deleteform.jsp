<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
<title>♡couple diary 니캉내캉♡</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/CoupleDiary/assets/css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page = "/WEB-INF/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="guestbook" class="delete-form">
				<form method="post" action="/CoupleDiary/guestbook/delete/${no }">
					<label>비밀번호</label>
					<input type="submit" value="확인">
				</form>
				<a href="/CoupleDiary/guestbook/index">방명록 리스트</a>
			</div>
		</div>
		<div id="footer">
			<jsp:include page = "/WEB-INF/views/include/footer.jsp" flush = "false"/>
		</div>
	</div>
</body>
</html>