<%@ page import="java.sql.*" %>

<%
Connection con = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/onlineelectionsystem?useSSL=false&serverTimezone=UTC",
        "root",
        "root"
    );

} catch (Exception e) {
    out.println("<pre style='color:red'>" + e + "</pre>");
}
%>
