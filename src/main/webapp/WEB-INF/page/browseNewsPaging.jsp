<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
	<link rel="stylesheet" type="text/css" href="css/paging.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="menu">
<c:forEach items="${requestScope.news }" var="u">
<a href="browseNewsPaging.html?catalogid=${u.catalog.catalogid }&curragePage=1&newsid=${u.id}">
${u.newsname}<br/>
</a>
</c:forEach>
<c:if test="${requestScope.curragePage!=1&&requestScope.newsid!=null}">
<a href="browseNewsPaging.html?catalogid=${requestScope.catalog }&curragePage=${requestScope.curragePage-1}&newsid=${requestScope.newsid}">上一页 </a>
</c:if>
<c:if test="${requestScope.curragePage!=1&&requestScope.newsid==null}">
<a href="browseNewsPaging.html?catalogid=${requestScope.catalog  }&curragePage=${requestScope.curragePage-1}"> 上一页</a>
</c:if>
第${requestScope.curragePage}页
<c:if test="${requestScope.curragePage!=requestScope.totalPage&&requestScope.newsid!=null}">
<a href="browseNewsPaging.html?catalogid=${requestScope.catalog  }&curragePage=${requestScope.curragePage+1}&newsid=${requestScope.newsid}"> 下一页</a>
</c:if>
<c:if test="${requestScope.curragePage!=requestScope.totalPage&&requestScope.newsid==null}">
<a href="browseNewsPaging.html?catalogid=${requestScope.catalog  }&curragePage=${requestScope.curragePage+1}"> 下一页</a>
</c:if>
</div>
<div class="neirong">
<div class="biaoti">
${requestScope.news1.newsname}
</div>
<div class="zhushi">
<ul>
<li>
时间：<span>${requestScope.news1.date}</span>
</li>
<c:if test="${requestScope.news1.origin!=null}">
<li>来源：<span>${requestScope.news1.origin}</span></li>
</c:if>
<li>分类：<span>${requestScope.news1.catalog.catalogname }</span></li>
</ul>
</div>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
${requestScope.text }
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>