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
<%
  		Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
	 %>
	 <form action="memberedit" method="post">
	<div style="padding: 20px;">
		<!--左侧菜单栏-->
		
		<!--右侧内容-->
		<div class="bk-con-message message-section" id="iframe_box">
	        <!--列表内容-->
	        <div class="page_content clearfix mb15 table-module ">
			<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
				<tr><td class="lable">登录名</td><td><input type="text" name="loginname" value="<%=objbyid.get("loginname")%>"/></td></tr>
				<tr><td class="lable">姓名</td><td><input type="text" name="truename" value="<%=objbyid.get("truename")%>"/></td></tr>
				<tr><td class="lable">电话</td><td><input type="text" name="tel" value="<%=objbyid.get("tel")%>"/></td></tr>
				<tr><td class="lable">地址</td><td><input type="text" name="address" value="<%=objbyid.get("address")%>"/></td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
	          	
	        </div>
	    </div>
	</div>
	</form>
 </body>
</html>





