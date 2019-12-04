<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<C:choose>
					<C:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/loginMember.jsp"/>">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a></li>
					</C:when>
					<C:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]
						</li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
					</C:otherwise>
				</C:choose>
				<li class="nav-item"><a class="nav-link" href="./products.jsp">상품
						목록</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/.addproduct.jsp">상품 등록</a></li>
				<li class="nav-item"><a class="nav=link"
					href="./editProduct.jsp?edit=update">상품 수정</a></li>
				<li class="nav-item"><a class="nav=link"
					href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url calue="/BoardListAction.do?pageNum=1"/>">게시판</a>
			</ul>
		</div>
	</div>
</nav>