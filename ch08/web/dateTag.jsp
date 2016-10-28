<%--
  Created by IntelliJ IDEA.
  User: xieql2
  Date: 2016/10/27
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.Calendar" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
Calendar calendar=Calendar.getInstance();
    calendar.set(calendar.get(Calendar.YEAR),
            calendar.get(Calendar.MONTH),
            calendar.get(Calendar.DATE)+10);
    pageContext.setAttribute("futureDate",calendar.getTime());
%>

<s:date name="#attr.futureDate"/>
<br/>
<s:date name="#attr.futureDate" format="yyyy年MM月dd日"/>
<br/>
<s:date name="#attr.futureDate" nice="true"/>
</body>
</html>
