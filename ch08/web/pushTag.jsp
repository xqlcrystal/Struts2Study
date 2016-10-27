<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
姓名：<s:property value="#session.user.username"/>
性别：<s:property value="#session.user.sex"/>
邮箱：<s:property value="#session.user.email"/>
<h3>使用push标签后的简化方式</h3>
<s:push value="#session.user">
    姓名：<s:property value="username"/>
    性别：<s:property value="sex"/>
    邮箱：<s:property value="email"/>
</s:push>

姓名：<s:property value="username"/>
</body>
</html>
