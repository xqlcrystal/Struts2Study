<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:i18n name="ApplicationResources">
    用户名：<s:text name="username"/>
    密  码：<s:text name="email"/>
</s:i18n>

<s:text name="username"/>
<s:text name="email"></s:text>
<br/>
<%
    pageContext.setAttribute("now",new java.util.Date());
%>
<s:text name="now">
    <s:param value="#attr.now"/>
    <s:param value="'lisi'"/>
</s:text>
</body>
</html>
