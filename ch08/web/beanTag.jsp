<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>没有指定ID属性，bean标签创建的user将放到值栈的顶部</h3>
<s:bean name="org.crystal.struts2.ch08.model.User">
    <s:param name="username" value="'zhangsan'"/>
    <s:param name="email" value="'zhangsan@163.com'"/>

    用户名：<s:property value="username"/><br/>
    密码：<s:property value="email"/>
</s:bean>
<p>
   用户名： <s:property value="username"/>
    密码：<s:property value="email"/>
</p>

<s:bean name="org.crystal.struts2.ch08.model.User" id="user">
    <s:param name="username" value="'zhangsan'"/>
    <s:param name="email" value="'zhangsan@163.com'"/>

    用户名：<s:property value="username"/>
    密码：<s:property value="email"/>
</s:bean>
<p>
    用户名： <s:property value="#user.username"/>
    密码：<s:property value="user.email"/>
</p>
</body>
</html>
