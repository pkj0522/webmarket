<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>
<link rel="stylesheet" href="./style.css/bootstrap.min.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src='http://unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='http://unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='http://unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type = "text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겟습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<ul class="nav justify-content-end">
		<li class="nav-item"><a class="nav-link active" href="#">이벤트</a>
		</li>
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false"> 내 정보 </a>
			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				<a class="dropdown-item" href="#">개인정보변경</a> <a
					class="dropdown-item" href="#">장바구니</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#">리뷰</a>
			</div></li>
		<li class="nav-item"><a class="nav-link" href="#">로그아웃</a></li>
		<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="addProduct.jsp">상품
				추가</a></li>
	</ul>

	<nav class="place navbar navbar-expand-lg navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo03"
			aria-controls="navbarTogglerDemo03" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item"><a class="nav-link" href="#">남성</a></li>
				<li class="nav-item"><a class="nav-link" href="#">여성</a></li>
				<li class="nav-item"><a class="nav-link" href="#">유아복</a></li>
				<li class="nav-item"><a class="nav-link" href="#">잠옷</a></li>
				<li class="nav-item"><a class="nav-link" href="#">스포츠 복</a></li>
			</ul>
			<a class="logo navbar-brand" href="#"> Inpyung Shopping Mall</a>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="검색"
					aria-label="검색">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
			</form>
		</div>
	</nav>


	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상세 정보</h1>
		</div>
	</div>
	<%
		String display = "block";
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
		if(product.getFilename() == null) display = "none";
	%>
	<div class="container">
		<div class="row">
			<img src="./images/<%=product.getFilename()%>" style="width:100%"/>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				</p>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span></p>
				<p><b>제조사</b>:<%=product.getManufacturer()%></p>
				<p><b>분류</b>:<%=product.getCategory()%></p>
				<p><b>재고 수</b>:<%=product.getUnitsInStock()%></p>
				<h4><%=product.getUnitPrice()%>원</h4>
				<p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post"></form>
				<p>	<a href="#" class="btn btn-info">상품 추가&raquo;</a> 
				<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
				<a href="welcome.jsp" class="btn btn-secondary">상품 목록&raquo;</a> </p>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>