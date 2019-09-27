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

    <style>
        .mytable{
            border:1px solid #9E9E9E;
        }
        .mytable td{
            border:1px solid #9E9E9E;
        }
        .mytable th{
            border:1px solid #9E9E9E;
        }
    </style>
</head>
<body>
	<div id="app">
		<div>
			<button @click="getUserList" style="float: left;margin: 0px 10px;">查询</button>
			<form action="/addUserPage" method="get" style="margin-left: 10px;">
				<button type="submit">增加</button>
			</form>
		</div>
		<div>
			<table class="mytable">
				<tr>
					<th width="100">姓名</th>
					<th>年龄</th>
					<th>操作</th>
				</tr>
				<tr v-for="user in userList">
					<td width="100" align="center">{{ user.userName }}</td>
					<td width="100" align="center">{{ user.userAge }}</td>
					<td width="100" align="center">
						<a href="javascript:void(0)" @click="editUserPage(user.id)">编辑</a>
						<a href="javascript:void(0)" @click="delUser(user.id)">删除</a>
					</td>
				</tr>
			</table>
		</div>
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
    	},
        editUserPage(userId) {
    	    console.log(userId)
		},
		delUser(userId) {
            console.log(userId)
		}
    }
})
</script>
</html>
