<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
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
<title>프로필</title>
</head>
<body>



	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">프로필</h1>
		</div>
	</div>
	<div class="container">
		<%@ include file="../dbconn.jsp"%>
		<%
			String id = request.getParameter("id");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
		%>

		<div class="row">
			<div class="col-md-4">
				<p> <b>아이디 : </b><span class="badge badge-danger"> <%= rs.getString("id")%></span>
				</p><br>
				<p> <b>비밀번호 : </b><span class="badge badge-danger"> <%=rs.getString("password")%></span>
				</p>
				<p> <b>이름 : </b><span class="badge badge-danger"> <%=rs.getString("name")%></span>
				</p>
				<p> <b>성별 : </b><span class="badge badge-danger"> <%=rs.getString("gender")%></span>
				</p>
				<p>	<b>생일 : </b><span class="badge badge-danger"> <%=rs.getString("birth")%></span>
				</p>
				<p>	<b>이메일 : </b><span class="badge badge-danger"> <%=rs.getString("mail")%></span>
				</p>
				<p>	<b>휴대전화 : </b><span class="badge badge-danger"> <%=rs.getString("phone")%></span>
				</p>
				<p>	<b>주소 : </b><span class="badge badge-danger"> <%=rs.getString("address")%></span>
				</p>
				<p>	<b>가입 일자 : </b><span class="badge badge-danger"> <%=rs.getString("regist_day")%></span>
				</p>
				<a href="updateMember.jsp?id=<%=id %>" class="btn btn-warning"> 수정 &raquo;</a>
				<a href="deleteMember.jsp?id=<%=id %>" class="btn btn-secondary"> 탈퇴 &raquo;</a>
			</div>
		</div>
		<%
			}
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		%><hr>
				
	</div>
</body>
</html>