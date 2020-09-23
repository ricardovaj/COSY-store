<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
  	Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="stylesheet" href="../assets/css/layui.css">
		<link rel="stylesheet" href="../assets/css/view.css" />
		<title></title>
	</head>

	<body class="layui-view-body">
		<div class="layui-content">
			<div class="layui-row">
				<div class="layui-card">
					<div class="layui-card-header" style="font-size: 16px;">商品添加</div>
					<form class="layui-form layui-card-body" action="goodsedit" method="post" enctype="multipart/form-data">
						<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
						<div class="layui-form-item">
							<label class="layui-form-label">商品种类:</label>
							<div class="layui-input-inline">
								<select name="typeid">
									<option value="宠物狗狗">宠物狗狗</option>
									<option value="宠物撸猫">宠物撸猫</option>
									<option value="奇异小宠">奇异小宠</option>
									<option value="水族活体">水族活体</option>
									<option value="爬虫系列">爬虫系列</option>
									<option value="养宠秘籍">养宠秘籍</option>
									<option value="宠物饲料">宠物饲料</option>
									<option value="宠物药品">宠物药品</option>
									<option value="宠物器具">宠物器具</option>
								</select>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品名称:</label>
							<div class="layui-input-inline">
								<input name="shopname" type="text" value="<%=objbyid.get("shopname")%>" class="layui-input" placeholder="请输入合法名称*" style="width: 250px;">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品原价:</label>
								<div class="layui-input-inline">
									<input name="useprice" value="<%=objbyid.get("useprice")%>" type="text" placeholder="原价*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品现价:</label>
								<div class="layui-input-inline">
									<input name="newprice" type="text" value="<%=objbyid.get("newprice")%>" placeholder="现价*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品销量:</label>
								<div class="layui-input-inline">
									<input name="counts" type="text" value="<%=objbyid.get("counts")%>" placeholder="销量*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品产地:</label>
								<div class="layui-input-inline">
									<input name="adress" type="text" value="<%=objbyid.get("adress")%>" placeholder="产地*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">图片展示:</label>
							<div class="layui-input-block" style="width: 160px;height: 225px;">
								<img id="imgurl" style="width: 160px;height: 200px;" />
								<a href="../upload/<%=objbyid.get("imgurl")%>" class="zoomimg"><img src="../upload/<%=objbyid.get("imgurl")%>"  width="100%" height="100%"/></a>
								<a href="javascript:;" class="file">
									<input type="file" id="file1" name="file1" style="width: 200px;" accept="image/*" ;/>
								</a>
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
							<label class="layui-form-label">商品信息:</label>
							<div class="layui-input-block">
								<input name="information" type="text" value="<%=objbyid.get("information")%>" placeholder="请输入内容*" class="layui-input" style="width: 400px;height: 150px;">
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn layui-btn-blue" lay-submit lay-filter="formDemo">确认添加</button>
<!--								<button type="reset" class="layui-btn layui-btn-primary">重置</button>-->
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script src="../assets/layui.all.js"></script>
		<script>
			var form = layui.form,
				layer = layui.layer;
		</script>
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(function() {
    $("#file1").change(function() {
        var $file = $(this);
        var objUrl = $file[0].files[0];
        //获得一个http格式的url路径:mozilla(firefox)||webkit or chrome  
        var windowURL = window.URL || window.webkitURL;
        //createObjectURL创建一个指向该参数对象(图片)的URL  
        var dataURL = windowURL.createObjectURL(objUrl);
        $("#imgurl").attr("src", dataURL);
    });
});
</script>
		
	</body>

</html>