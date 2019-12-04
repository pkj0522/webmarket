<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/
css/bootstrap.min.css">
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./js/app.js"></script>
<title>상품 등록</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품등록</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">로그아웃</a>
		</div>
		<form name="newProduct" action="./processAddProduct.jsp"
			class="form-horizontal" method="post" accept-charset="utf-8"
			enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productid" id="productid" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="name" id="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" id="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세 설명</label>
				<div class="col-sm-3">
					<input type="text" name="description" id="description" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사 </label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" id="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" id="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" id="unitsInStock" class="form-control Op">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<input type="radio" name="condition" id="condition" value="New">신규제품<input
						type="radio" name="condition" id="condition" value="Old">중고제품<input
						type="radio" name="condition" id="condition" value="Refurbished">재생 제품
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-3">
					<input type="file" name="productImage" id="productImage" class="form-control">
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