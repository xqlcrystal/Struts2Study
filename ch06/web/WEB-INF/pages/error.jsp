<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/26
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>注册失败</title>
</head>
<body>
注册失败，原因是<s:property value="exception"></s:property>
<a href="<%=basePath%>input.action">重新注册</a>
<s:property value="exceptionStack"></s:property>
</body>
</html>
