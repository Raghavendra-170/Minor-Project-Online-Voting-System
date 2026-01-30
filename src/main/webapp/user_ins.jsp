<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="connection.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration Backend</title>
    <script>
        function redirect() {
            location.replace("home.jsp");
        }
    </script>
</head>

<body style="background-color:#EBEBEB">

<%
String fname   = request.getParameter("FNAME");
String lname   = request.getParameter("LNAME");
String age     = request.getParameter("AGE");
String gen     = request.getParameter("GEN");
String aadhar  = request.getParameter("AADHAR");
String address = request.getParameter("ADDRESS");
String city    = request.getParameter("CITY");
String state   = request.getParameter("STATE");
String pincode = request.getParameter("PINCODE");
String mobno   = request.getParameter("MOBNO");
String email   = request.getParameter("EMAIL");
String uid     = request.getParameter("UID");
String pwd     = request.getParameter("PWD");
String cnfpwd  = request.getParameter("CNFPWD");

PreparedStatement ps = con.prepareStatement(
    "INSERT INTO user_reg VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
);

ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, age);
ps.setString(4, gen);
ps.setString(5, aadhar);
ps.setString(6, address);
ps.setString(7, city);
ps.setString(8, state);
ps.setString(9, pincode);
ps.setString(10, mobno);
ps.setString(11, email);
ps.setString(12, uid);
ps.setString(13, pwd);
ps.setString(14, cnfpwd);

ps.executeUpdate();
%>

<h2 align="center"><b><u>Voter Registration Successful!!!</u></b></h2>
<p align="center">
    <button onclick="redirect()">Go To Home</button>
</p>

</body>
</html>
