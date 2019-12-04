<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/
css/bootstrap.min.css">
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./js/app.js"></script>
<title>회원가입</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form name="newMember" action="./processAddMember.jsp"
			class="form-horizontal" method="post" accept-charset="utf-8"
			enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" name="id" id="id" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" name="password" id="password" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" name="name" id="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-3">
					<input type="radio" name="gender" id="gender" class="form-control" value=" 남자 "> <p>남자</p> <br>
					<input type="radio" name="gender" id="gender" class="form-control" value=" 여자 "> <p>여자</p>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">생일</label>
				<div class="col-sm-3">
					<input type="date" name="birth" id="birth" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="email" name="mail" id="mail" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input type="tel" name="phone" id="phone" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" name="address" id="address" class="form-control">
				</div>
			</div>    
			<div class="form-group row">
				<div class="col-sm-3">
					<input type="submit" class="btn btn-primary" id="btn" value="등록">
				</div>
			</div>
		</form>
	</div>
</body>
</html>