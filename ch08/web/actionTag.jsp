<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:action name="actionTag" executeResult="true" namespace="/"></s:action>

<s:action name="actionTagDefault" executeResult="true" namespace="/"></s:action>
<s:property value="#attr.greeting"/>

<s:action name="actionTag" executeResult="true" namespace="/">
    <s:param name="username" value="'zhangsan'"/>
    <s:param name="email" value="'zhangsan@163.com'"/>
</s:action>
</body>
</html>
