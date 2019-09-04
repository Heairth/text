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
<body>
<form action="#" method="post" style="color:white;">
电影名称<input type="text" name="mname"><br>
描述<input type="text" name="mjs"><br>
导演<input type="text" name="doctor"><br>
日期<input type="text" name="mdate"><br>
类别
<input type="checkbox" name="dname" value="爱情篇">爱情篇
<input type="checkbox" name="dname" value="动作">动作
<input type="checkbox" name="dname" value="喜剧">喜剧<br>
<input type="button" value="添加" onclick="add()">
</form>
</body>
<script type="text/javascript">
function add(){
	$.post("add.do",$("form").serialize(),function(data){
		if(data){
			alert("添加成功,点击跳转");
			location.href="list.do";
		}else{
			alert("添加失败,请检查因素")
		}
	})
}
</script>
</html>