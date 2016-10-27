<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>使用当前地址生成url</h3>
<s:url/>
<h3>使用namespace和action生成url</h3>
<s:url action="urlTag" namespace="/"></s:url>

<h3>includeContext</h3>
<s:url action="urlTag" namespace="/" includeContext="true"></s:url>

<h3>同时指定action和value</h3>
<s:url action="urlTag" namespace="/" value="urlTag.jsp"></s:url>

<h3>使用forceAddSchemeHostAndPort生成url</h3>
<s:url action="urlTag" namespace="/" forceAddSchemeHostAndPort="true"></s:url>

<h3>使用forceAddSchemeHostAndPort生成url</h3>
<s:url action="urlTag.action" namespace="/" includeParams="none">
    <s:param name="page" value="1"/>
</s:url>

<h3>includeParams="all"</h3>
<s:url action="urlTag.action" namespace="/" includeParams="all">
    <s:param name="page" value="1"/>
</s:url>


<h3>使用forceAddSchemeHostAndPort生成url</h3>
<s:url action="urlTag.action" >
    <s:param name="id" value="888"/>
    <s:param name="page" value="1"/>
</s:url>

<h3>使用forceAddSchemeHostAndPort生成url</h3>
<s:url action="urlTag.action" id="urlTag" escapeAmp="true" >
    <s:param name="id" value="888"/>
    <s:param name="page" value="1"/>
</s:url>
<s:property value="#urlTag"></s:property>
</body>
</html>
