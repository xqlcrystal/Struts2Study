<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/11/1
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>���з���</title>
</head>
<body>
<p>
<table>
    <tr>
        <th>����ID</th>
        <th>������</th>
        <th> </th>
    </tr>
    <s:iterator value="categories">
        <tr>
            <td>
                <a href="<s:url action="edit-%{id}"/> ">
                    <s:property value="id"/>
                </a>
            </td>
            <td>
                <s:property value="name"/>
            </td>
            <td>
                <a href="<s:url action="delete-%{id}"/> ">ɾ��</a>
            </td>
        </tr>
    </s:iterator>
</table>
</p>
<a href="<s:url action="edit-" includeParams="none"/> ">�����·���</a>
</body>
</html>
