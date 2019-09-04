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
<form action="list.do" method="post" style="color:white;">
电影名称<input type="text" name="mname" value="${map.mname}">
<button>查询</button>
<input type="button" value="批量删除" onclick="ps()">
<input type="button" value="添加" onclick="location.href='add.jsp'">
</form>
<table>
	<tr>
		<td>
		<input type="button" value="全选" onclick="qx()">
		<input type="button" value="反选" onclick="fx()">
		<input type="button" value="全不选" onclick="qbx()">
		</td>
		<td>电影名称</td>
		<td>介绍</td>
		<td>导演</td>
		<td>类别</td>
		<td>日期</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${page.list}" var="c">
	<tr>
		<td>
		<input type="checkbox" value="${c.mid}" id="mid">
		</td>
		<td> ${c.mname} </td>
		<td> ${c.mjs} </td>
		<td> ${c.doctor} </td>
		<td> ${c.dname} </td>
		<td> ${c.mdate} </td>
		<td>
		<input type="button" value="修改" onclick="location='update.jsp?mid=${c.mid}'">
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="10">
			<a href="?pageNum=1">首页</a>
			<a href="?pageNum=${page.pageNum-1<1 ?page.pageNum:page.pageNum-1}&mname=${map.mname}">上一页</a>
			<a href="?pageNum=${page.pageNum+1>page.pages ?page.pageNum:page.pageNum+1}&mname=${map.mname}">下一页</a>
			<a href="?pageNum=${page.pages}">尾页</a>
		</td>
	</tr>
</table>
</body>
<script type="text/javascript">
function qx(){
	var arr=$("input");
	for(var i=0;i<arr.length;i++){
		if(arr[i].checked==false){
			arr[i].checked=true;
}}}
function qbx(){
	var arr=$("input");
	for(var i=0;i<arr.length;i++){
		if(arr[i].checked==true){
			arr[i].checked=false;
}}}
function fx(){
	var arr=$("input");
	for(var i=0;i<arr.length;i++){
		if(arr[i].checked==false){
			arr[i].checked=true;
		}else if(arr[i].checked==true){
			arr[i].checked=false;
}}}
function ps(){
	var str="";
	$("#mid:checked").each(function(){
		str+=","+this.value;
	})
	var mid=str.substring(1);
	if(confirm("确定删除吗？")){
		$.post("delete.do",{mid:mid},function(data){
			if(data){
				alert("删除成功");
				location.href="list.do";
			}else{
				alert("删除失败");
			}
		})
	}
}
</script>
</html>