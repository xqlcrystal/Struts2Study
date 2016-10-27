<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:include value="jsp1.jsp"></s:include>
<s:include value="jsp2.jsp">
    <s:param name="username" value="'zhangsan'"/>
    <s:param name="email" value="'zhangsan@163.com'"/>
</s:include>
</body>
</html>
