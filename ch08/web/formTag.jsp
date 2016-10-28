<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
    <s:head/>
</head>
<body>
<s:form action="register" method="POST" validate="true">
    <s:textfield name="username" label="用户名"/>
</s:form>
</body>
</html>
