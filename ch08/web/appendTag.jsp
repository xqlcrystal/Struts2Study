<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:append id="myAppendItetator">
    <s:param value="{'《Java web 开发详解》','{《论语》}'}"/>
    <s:param value="{'《Java web 开发详解》','{《论语》}'}"/>
    <s:param value="{'《Java web 开发详解》','{《论语》}'}"/>
</s:append>

<s:iterator value="#myAppendItetator" status="status">
<s:property/><s:if test="!#status.last">，</s:if><s:else>。</s:else>
</s:iterator>
</body>
</html>
