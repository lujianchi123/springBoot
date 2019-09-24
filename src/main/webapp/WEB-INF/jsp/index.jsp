<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html lang="zh-cn">
<head>
<!-- 加载样式及META信息 -->
<meta charset="utf-8">
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">
<script type="text/javascript" src="/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/js/vue.min.js"></script>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
  <script src="https://cdn.pure.fastadmin.net/assets/js/html5shiv.js"></script>
  <script src="https://cdn.pure.fastadmin.net/assets/js/respond.min.js"></script>
<![endif]-->

</head>
<body>
	<div id="app">
		<button @click="getUserList">查询</button>
		<button>增加</button>
		<button>修改</button>
		<table style="1px solid #9E9E9E">
			<tr style="1px solid #9E9E9E">
				<th width="100">姓名</th>
				<th>年龄</th>
			</tr>
			<tr style="1px solid #9E9E9E" v-for="user in userList">
				<td width="100" align="center">{{ user.userName }}</td>
				<td width="100" align="center">{{ user.userAge }}</td>
			</tr>
		</table>
	</div>
</body>

<script>
new Vue({
  el: '#app',
  data() {
      return {
      	userList: undefined,
      }
    },
    created() {
    },
    methods: {
    	getUserList() {
    	var _self = this;
    		$.ajax({
    			type: "post",
    			url: "/user/getUsers",
    			success: function(rs){
    				_self.userList = rs;
    			}
    		});
    	}
    }
})
</script>
</html>
