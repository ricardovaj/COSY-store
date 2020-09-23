<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<form class="layui-form layui-card-body" action="goodsadd" method="post" enctype="multipart/form-data">
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
								<input name="shopname" type="text" class="layui-input" placeholder="请输入合法名称*" style="width: 250px;">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品原价:</label>
								<div class="layui-input-inline">
									<input name="useprice" type="text" placeholder="原价*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品现价:</label>
								<div class="layui-input-inline">
									<input name="newprice" type="text" placeholder="现价*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品销量:</label>
								<div class="layui-input-inline">
									<input name="counts" type="text" placeholder="销量*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">商品产地:</label>
								<div class="layui-input-inline">
									<input name="adress" type="text" placeholder="产地*" class="layui-input">
								</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">图片展示:</label>
							<div class="layui-input-block" style="width: 160px;height: 225px;">
								<img id="imageview" style="width: 160px;height: 200px;" />
								<a href="javascript:;" class="file">
									<input type="file" id="file1" name="file1" style="width: 200px;" accept="image/*" ;/>
								</a>
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
							<label class="layui-form-label">商品信息:</label>
							<div class="layui-input-block">
								<textarea name="information" placeholder="请输入内容*" class="layui-textarea" style="width: 400px;height: 150px;"></textarea>
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
        $("#imageview").attr("src", dataURL);
    });
});
</script>
		
	</body>

</html>