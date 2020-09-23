	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <%@ page language="java" import="java.util.*" %>
	<%@ page language="java" import="java.sql.*" %>
	<%@ page language="java" import="java.util.regex.*" %>
	<%
	List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
	String pagestr = (String)request.getAttribute("pagestr");
	%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no, email=no, date=no, address=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="format-detection" content="telephone=no" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<link href="../css/bksystem.css" rel="stylesheet" type="text/css" /> 
		<link href="../css/module.css" rel="stylesheet" type="text/css" />
		<link href="../css/pages.css" rel="stylesheet" type="text/css" />
		<title>商品管理</title>
		<script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="../js/HUpages.js" type="text/javascript"></script>
		<script src="../js/common.js" type="text/javascript"></script>
	</head>

<body >
	<div style="padding: 20px;">
		<!--左侧菜单栏-->
		
		<!--右侧内容-->
		<div class="bk-con-message message-section" id="iframe_box">
	        <!--列表内容-->
	        <div class="page_content clearfix mb15 table-module ">
	           	<table class="gallery table table_list table_striped table-bordered " id="">
	           		<thead>
			        	<tr>
							
							<th >ID</th>
							<th width="130">登录名</th>
							<th >姓名</th>
							<th >电话</th>
							<th >地址</th>
							<th >操作</th>
			       		</tr>
			       </thead>
			       <tbody>
			        <%for (Map<String, Object> m : list) { %>
	           		<tr>
	           		
	           		<td><%=m.get("id")%></td>
       		        <td><%=m.get("loginname")%></td>       		
       		        <td><%=m.get("truename")%></td>
		       		<td><%=m.get("tel")%></td>
		       		<td><%=m.get("address")%></td>
		       		<td><a href="memberedit?id=<%=m.get("id")%>">修改</a> <a href="memberdelete?id=<%=m.get("id")%>">删除</a></td>			
	           		</tr>
	           		<% } %>  

			        </tbody>			        
	           	</table>
	           <div class="pager" style="float:right;width:950px;font-size:14px"><%=pagestr%></div>
	          	
	        </div>
	    </div>
	</div>
 </body>
</html>





