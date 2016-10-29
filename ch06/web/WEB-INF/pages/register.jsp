<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/26
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<%--<form action="register.action" method="post">
    <table border="0">
        <tr>
            <td>
                用户名：
            </td>
            <td>
                <input type="text" name="user.username"/>
            </td>
        </tr>
        <tr>
            <td>
                密码：
            </td>
            <td>
                <input type="password" name="user.password"/>
            </td>
        </tr>
        <tr>
            <td>
                性别：
            </td>
            <td>
                <input type="radio" name="user.sex" value="true" checked/>男
                <input type="radio" name="user.sex" value="false"/>女
            </td>
        </tr>
        <tr>
            <td>
                邮件地址：
            </td>
            <td>
               <input type="email" name="user.email"/>
            </td>
        </tr>

        <tr>
            <td>
                密码问题：
            </td>
            <td>
                <input type="text" name="user.pwdQuestion"/>
            </td>
        </tr>

        <tr>
            <td>
                问题答案：
            </td>
            <td>
                <input type="text" name="user.pwdAnswer"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="注册"/>
                <input type="reset" value="重填"/>
            </td>
        </tr>
    </table>
</form>--%>

<s:form action="register.action" method="POST">
    <s:textfield name="user.username" label="用户名"/>
    <s:password name="user.password" label="密码"/>
    <s:radio name="user.sex" value="true" list="#{true : '男', false : '女'}" label="性别" />
    <s:textfield name="user.email" label="邮件地址"/>
    <s:textfield name="user.pwdQuestion" label="密码问题"/>
    <s:textfield name="user.pwdAnswer" label="密码答案"/>
    <s:component template="submit_resetTemplate.jsp">
        <s:param name="submit" value="'注册'"/>
        <s:param name="reset" value="'重填'"/>
    </s:component>
</s:form>
</body>
</html>
