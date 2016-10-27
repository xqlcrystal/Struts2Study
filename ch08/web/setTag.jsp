<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:set name="name" value="user.username"/>
<h3>从action中取出name</h3>
<s:property value="#name"></s:property>
<br/>
<h3>从请求范围中取出</h3>
<s:property value="#request.name"/>
<s:set name="name" value="user.username" scope="session"/>
<h3>从session中取出name</h3>
<s:property value="#session.name"/>
</body>
</html>
