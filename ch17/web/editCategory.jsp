<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/11/1
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:if test="category!=null">
    <s:text name="编辑分类" id="title"/>
</s:if>
<s:else>
    <s:text name="创建分类" id="title"/>
</s:else>
<html>
<head>
    <title><s:property value="#title"/> </title>
</head>
<body>
<s:form action="save" method="POST">
    <s:hidden name="category.id" value="%{category.id}"/>
   <s:textfield name="category.name" label="分类名称"/>
    <s:submit value="保存"/>
</s:form>

</body>
</html>
