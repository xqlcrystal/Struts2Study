<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:set name="score" value="#parameters.score[0]"/>
您的成绩是：
<s:if test="#score<60">
    不及格
</s:if>
<s:elseif test="#score>=60 &&　#score<85">
    及格
</s:elseif>
<s:else>
    优秀
</s:else>
</body>
</html>
