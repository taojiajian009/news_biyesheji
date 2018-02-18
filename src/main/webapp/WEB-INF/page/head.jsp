<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/game.css">


</head>

<body>
<div class="head">
<ul>
<li>
<a href="index.html" target="_top">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</li>
<c:forEach items="${requestScope.catalogs}" var="u">
<li><a href="browseNewsPaging.html?catalogid=${u.catalogid}&curragePage=1" target="_self">${u.catalogname }</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</li>
</c:forEach>
</ul>
</div>
</body>
</html>
