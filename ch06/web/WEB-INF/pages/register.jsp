<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/26
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<form action="register.action" method="post">
    <table border="0">
        <tr>
            <td>用户名：</td>
            <td>
                <input type="text" name="user.username"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="注册"/>
                <input type="reset" value="重填"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
