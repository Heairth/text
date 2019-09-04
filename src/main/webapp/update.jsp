<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
</head>
<script type="text/javascript">
	$(function(){
		$.post("toupdate.do",{"mid":"${param.mid}"},function(data){
			$("#mname").val(data.mname);
			$("#mjs").val(data.mjs);
			$("#doctor").val(data.doctor);
			$("#mdate").val(data.mdate);
			$("#did").val(data.did);
		})
	})
</script>
<body>
<form action="#" method="post" style="color:white;">
<input type="hidden" name="mid" value="${param.mid}">
电影名称<input type="text" id="mname" name="mname"><br>
描述<input type="text" id="mjs" name="mjs"><br>
导演<input type="text" id="doctor" name="doctor"><br>
日期<input type="text" id="mdate" name="mdate"><br>
类别
<input type="checkbox"  id="did" value="1">爱情篇
<input type="checkbox"  value="2">动作
<input type="checkbox"  value="3">喜剧<br>
<input type="button" value="修改" onclick="xiugai()">
</form>
</body>
<script type="text/javascript">
function xiugai(){
	$.post("update.do",$("form").serialize(),function(data){
		if(data){
			alert("修改成功")
			location.href="list.do";
		}
	})
}
</script>
</html>