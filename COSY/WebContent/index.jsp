<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="assets/css/layui.css">
		<link rel="stylesheet" href="assets/css/admin.css">
		<link rel="icon" href="/favicon.ico">
		<title>管理后台</title>
	</head>

	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header custom-header">

				<ul class="layui-nav layui-layout-left">
					<li class="layui-nav-item slide-sidebar" lay-unselect>
						<a href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
					</li>
				</ul>

				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">BieJun</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="shouye.jsp"target="_blank">首页预览</a>
							</dd>
							<dd>
								<a href="">帮助中心</a>
							</dd>
							<dd>
								<a href="login.jsp">退出</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>

			<div class="layui-side custom-admin">
				<div class="layui-side-scroll">

					<div class="custom-logo">
						<img src="assets/images/logo.png" alt="" />
						<h1>Admin Pro</h1>
					</div>
					<ul id="Nav" class="layui-nav layui-nav-tree">
						<li class="layui-nav-item">
							<a href="javascript:;">
								<i class="layui-icon">&#xe609;</i>
								<em>主页</em>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="views/console.jsp">菜单栏目</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">
								<i class="layui-icon">&#xe857;</i>
								<em>产品管理</em>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="views/goodsadd.jsp">商品添加</a>
								</dd>
								<dd>
									<a href="views/goodslist">商品列表</a>
								</dd>							
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">
								<i class="layui-icon">&#xe857;</i>
								<em>留言管理</em>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="views/goodsadd.jsp">留言管理</a>
								</dd>
								<dd>
									<a href="views/goodslist">留言列表</a>
								</dd>
							
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">
								<i class="layui-icon">&#xe857;</i>
								<em>交易管理</em>
							</a>
							<dl class="layui-nav-child">	
								<dd>
									<a href="views/orderheadlist">订单管理</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">
								<i class="layui-icon">&#xe857;</i>
								<em>会员管理</em>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="views/memberlist">会员列表</a>
								</dd>								
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">
								<i class="layui-icon">&#xe612;</i>
								<em>用户</em>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="views/users.html">用户组</a>
								</dd>
								<dd>
									<a href="views/operaterule.html">权限配置</a>
								</dd>
							</dl>
						</li>
					</ul>

				</div>
			</div>

			<div class="layui-body">
				<div class="layui-tab app-container" lay-allowClose="true" lay-filter="tabs">
					<ul id="appTabs" class="layui-tab-title custom-tab"></ul>
					<div id="appTabPage" class="layui-tab-content"></div>
				</div>
			</div>

			<div class="mobile-mask"></div>
		</div>
		<script src="assets/layui.js"></script>
		<script src="js/index.js" data-main="home"></script>
	</body>

</html>