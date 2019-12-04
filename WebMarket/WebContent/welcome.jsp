<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>
<link rel="stylesheet" href="./style.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./js/app.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src='http://unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='http://unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='http://unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome Shopping Mall</title>
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
		<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
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
	<%
		ArrayList<Product> listofProducts = productDAO.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listofProducts.size(); i++) {
					Product product = listofProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				</p>
				<p><%=product.getUnitPrice()%>원
				</p>
				<p>
					<a href="./products.jsp?id=<%=product.getProductId()%>"
						class="bin btn-secondary" role="button"> 상세 정보 &raquo;</a>
				</p>
			</div>
			<%
				}
			%>
		</div>

		<hr>
	</div>
	<div id="carouselExampleInterval" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="5000">
				<img src="./images/iphone.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="./images/LG_gram.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-interval="5000">
				<img src="./images/Galaxy_tab.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleInterval"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleInterval"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>
