<%@ page import="java.sql.*"%>
<%
	Connection conn = null;

	try {
		String url = "jdbd:mysql://localhost:3306/WebMarketDB>";
		String user = "root";
		String password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);

	} catch (SQLException ex) {
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
%>