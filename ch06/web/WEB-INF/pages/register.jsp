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
    <title>�û�ע��</title>
</head>
<body>
<%--<form action="register.action" method="post">
    <table border="0">
        <tr>
            <td>
                �û�����
            </td>
            <td>
                <input type="text" name="user.username"/>
            </td>
        </tr>
        <tr>
            <td>
                ���룺
            </td>
            <td>
                <input type="password" name="user.password"/>
            </td>
        </tr>
        <tr>
            <td>
                �Ա�
            </td>
            <td>
                <input type="radio" name="user.sex" value="true" checked/>��
                <input type="radio" name="user.sex" value="false"/>Ů
            </td>
        </tr>
        <tr>
            <td>
                �ʼ���ַ��
            </td>
            <td>
               <input type="email" name="user.email"/>
            </td>
        </tr>

        <tr>
            <td>
                �������⣺
            </td>
            <td>
                <input type="text" name="user.pwdQuestion"/>
            </td>
        </tr>

        <tr>
            <td>
                ����𰸣�
            </td>
            <td>
                <input type="text" name="user.pwdAnswer"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="ע��"/>
                <input type="reset" value="����"/>
            </td>
        </tr>
    </table>
</form>--%>

<s:form action="register.action" method="POST">
    <s:textfield name="user.username" label="�û���"/>
    <s:password name="user.password" label="����"/>
    <s:radio name="user.sex" value="true" list="#{true : '��', false : 'Ů'}" label="�Ա�" />
    <s:textfield name="user.email" label="�ʼ���ַ"/>
    <s:textfield name="user.pwdQuestion" label="��������"/>
    <s:textfield name="user.pwdAnswer" label="�����"/>
    <s:component template="submit_resetTemplate.jsp">
        <s:param name="submit" value="'ע��'"/>
        <s:param name="reset" value="'����'"/>
    </s:component>
</s:form>
</body>
</html>
