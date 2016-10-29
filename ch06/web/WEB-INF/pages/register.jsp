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
    <title><s:text name="title"/></title>
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

<s:set name="current_locale" value="#session['WW_TRANS_I18N_LOCALE']==null?locale:#session['WW_TRANS_I18N_LOCALE']">

</s:set>
<s:url id="chinese_url" value="input.action">
    <s:param name="request_locale" value="@java.util.Locale@CHINA"/>
</s:url>

<s:url id="english_url" value="input.action">
    <s:param name="request_locale" value="@java.util.Locale@ENGLISH"/>
</s:url>

<s:if test="#current_locale.equals(@java.util.Locale@CHINA)">
    <s:a href="%{#chinese_url}">
        <strong><s:text name="chinese"/></strong>
    </s:a>
    <s:a href="%{#english_url}">
        <s:text name="english"/>
    </s:a>
</s:if>
<s:else>
    <s:a href="%{#english_url}">
        <strong><s:text name="english"/></strong>
    </s:a>
    <s:a href="%{#chinese_url}">
        <s:text name="chinese"/>
    </s:a>
</s:else>

<s:form action="register" method="POST">
    <s:textfield name="user.username" key="username"/>
    <s:password name="user.password" key="password"/>
    <s:radio name="user.sex" value="true" 	list="#{true : getText('sex.male'), false : getText('sex.female')}"  key="sex"/>
    <s:textfield name="user.email" key="email"/>
    <s:textfield name="user.pwdQuestion" key="pwdQuestion"/>
    <s:textfield name="user.pwdAnswer" key="pwdAnswer"/>
    <s:component template="submit_resetTemplate.jsp">
        <s:param name="submit" value="getText('submit')"/>
        <s:param name="reset" value="getText('reset')"/>
    </s:component>
</s:form>
</body>
</html>
