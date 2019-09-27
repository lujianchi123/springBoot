<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addUser.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form id="addForm">
		姓名：<input type="text" id="userName" name="name"><br>
		年龄：<input type="text" id="age" name="age"><br>
		<button href="javascript:void(0)" onclick="save()">提交</button>
	</form>
</body>
<!-- 加载JS脚本 -->
<script type="text/javascript" src="/js/jquery-1.8.0.min.js"></script>
<script>
	function save() {
		var name = $("#userName").val();
		var age = $("#age").val();
		var addr = "123";
		$.ajax({
			url:"/addUser",
			type:"post",
			dataType:"json",
			data:{name:name,addr:addr},
			success:function(rs){
				console.log(rs);
			}
		});
	}
</script>
</html>
