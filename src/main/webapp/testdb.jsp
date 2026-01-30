<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>
<html>
<body>
<%
try {
    // ✅ Correct driver for MySQL 8
    Class.forName("com.mysql.cj.jdbc.Driver");

    // ✅ Correct JDBC URL
    String url = "jdbc:mysql://localhost:3306/onlineelectionsystem"
               + "?useSSL=false&serverTimezone=UTC";

    Connection con = DriverManager.getConnection(url, "root", "root");

    out.println("✅ Database Connected Successfully");

    con.close();
} catch(Exception e) {
    out.println("❌ Database Connection Failed<br>");
    out.println(e);
}
%>
</body>
</html>
