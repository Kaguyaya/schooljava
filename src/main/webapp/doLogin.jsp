<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 46724
  Date: 2021/3/17
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%String username=request.getParameter("username");
    String password=request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver");
    try(Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/day14?serverTimezone=UTC&characterEncoding=utf-8","root","root"))
    {

        String sql="select * from borrow_card where username=?";
        try( PreparedStatement preparedStatement = connection.prepareStatement(sql))
        {
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                if(password.equals(resultSet.getString("password"))){
                    response.sendRedirect("./main.jsp");
                }else {
                    response.sendRedirect("./index.jsp");
%><jsp:forward page="./index.jsp"></jsp:forward><%
                }
            }
        }
    }
    catch (SQLException e){
        e.printStackTrace();
    }%>
</body>
</html>
