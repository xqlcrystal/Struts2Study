<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:iterator value="{'zhangsan','lisi','wangwu'}">
    <s:property/><br/>
</s:iterator>
<table border="1">
    <s:iterator value="{'zhangsan','lisi','wangwu'}" status="status">
        <tr>
            <td><s:property/></td>
            <td><s:property value="#status.count"/> </td>
            <td><s:property value="#status.index"/> </td>
            <td><s:property value="#status.even"/> </td>
            <td><s:property value="#status.odd"/> </td>
            <td><s:property value="#status.first"/> </td>
            <td><s:property value="#status.last"/> </td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
