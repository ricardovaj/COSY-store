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
	        <!--编辑内容-->
	        <div class="operation  mb15">
	          	<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;批量删除</button>
	           	<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加广告</button>
	           	<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加分类</button>
	        </div>
	        <!--列表内容-->
	        <div class="page_content clearfix mb15 table-module ">
	           	<table class="gallery table table_list table_striped table-bordered " id="">
	           		<thead>
			        	<tr>
							
							<th >商品种类</th>
							<th width="130">图片</th>
							<th >商品名称</th>
							<th >商品现价</th>
							<th >商品原价</th>
							<th >商品销量</th>
							<th >商品产地</th>                
							<th >商品信息</th>
							<th >操作</th>
			       		</tr>
			       </thead>
			       <tbody>
			        <%for (Map<String, Object> m : list) { %>
	           		<tr>
	           		
	           		<td><%=m.get("typeid")%></td>
	           		<td><a href="../upload/<%=m.get("imgurl")%>" class="zoomimg"><img src="../upload/<%=m.get("imgurl")%>"  width="100%" height="100%"/></a></td>
	           		<td><%=m.get("shopname")%></td>
	           		<td><%=m.get("newprice")%></td>
	           		<td><del><%=m.get("useprice")%></del></td>
	           		<td><%=m.get("counts")%></td>
	           		<td><%=m.get("adress")%></td>
	           		<td><%=m.get("information")%></td>	
	           		<td>
	           			<a href="goodsedit?id=<%=m.get("id")%>">修改</a>
             			<a href="goodsdelete?id=<%=m.get("id")%>">删除</a>
             		</td>           			
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
<script>
$(function(){
	//内页框架结构编辑
	$("#situation").Hupage({
		slide: '#breadcrumb',
		padding:15,
		menuModule:'#bk-con-menu', //菜单模块
		pagecontent:'.page_content',//自定义属性
		operation:'.operation',//自定义属性
		scrollbar:function(e){
			e.niceScroll({
				cursorcolor: "#dddddd",
				cursoropacitymax: 1,
				touchbehavior: false,
				cursorwidth: "3px",
				cursorborder: "0",
				cursorborderradius: "3px",
			});						
		},
		expand:function(thisBox,settings){	
			var pc="";
			$(settings.pagecontent).css("margin-bottom")!=null? pc=parseInt($(settings.pagecontent).css("margin-bottom").replace("px","")):'';
		    $(settings.pagecontent).css({height:$(window).height()-$(settings.operation).outerHeight()-pc-(settings.padding*2)})
		    settings.scrollbar($(settings.slide) && $(settings.pagecontent));		    
		}//自定义方法
	});
 });
</script>




