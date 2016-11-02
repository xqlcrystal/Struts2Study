<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/11/2
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>登录页面</title>
    <s:head/>
</head>
<body>
<s:form action="login">
    <s:actionerror/>
    <s:textfield name="user.username" label="用户名"/>
   <s:password name="user.password" label="密  码"/>
    <s:submit value="登录"/>
</s:form>
</body>
</html>
