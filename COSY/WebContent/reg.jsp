	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		
		<script type="text/javascript" src="js/amazeui.min.js"></script>
		<link rel="stylesheet" href="css/regedit.css" />
		<link rel="stylesheet" href="css/sui.css" />
		<script type="text/javascript" src="js/sui.js"></script>
		<title></title>
		<style>
			/*.bottomLine {
					border-bottom: 1px solid #ccc;
					border-top: 1px solid #ccc;
					margin-bottom: 10px;
					/*padding: 10px;*/
			/*padding-top: 10px;
					padding-bottom: 10px;
					word-spacing: 0.05rem;
					text-align: center;
					margin-top: 82px;*/
			/*width:677px ;*/
			/*line-height: ;*/
			/*}*/
			
			.bottomLine {
				border-bottom: 1px solid #ccc;
				border-top: 1px solid #ccc;
				padding-top: 8px;
				/*padding-bottom:10px;*/
			}
			
			.bot {
				margin-bottom: 50px;
				/*text-align: center;*/
				color: #7b6f5b;
			}
			
			.radio-pretty.checked>span:before {
				color: #f88600;
			}
			
			input {
				height: 62px;
			}
			
			.radio-pretty span:before {
				margin-right: 2px;
				vertical-align: -4px;
				font-size: 20px;
				color: #bdbdbd;
				margin-left: -2px;
			}
		</style>
	</head>

	<body>
	<form  action="uireg" method="post">
		<div class="am-g" style="margin-top: 25px;">
			<div class="logo"> <img src="img/uugai.com_1542967761903.png" /> </div>
		</div>
		<div class="am-g">
			<div style="width: 999px;margin: 0 auto;font-size: 14px;"> <span style="float: right;color: #333333;">我已注册，马上<span style="color: #F88600;"><a href="uilogin.jsp">登录</a></span></span>
			</div>
		</div>
		<div class="am-g content" style="margin-top: 12px;">
			<div data-am-widget="tabs" class="am-tabs am-tabs-d2">
				<ul class="am-tabs-nav am-cf" style="margin-top: 74px;">
					<li class="" style="max-width: 95px; margin-left: 100px;"></li>
					<li class="am-active">
						<a href="[data-tab-panel-0]">
						<span class="am-badge am-round am-badge-warning-active " style="vertical-align: middle;margin-top:-4px;"></span>用户注册</a>
					</li>
					<li class="" style="    max-width: 95px;margin-right: 100px;"></li>
				</ul>
				<div class="am-tabs-bd" style="margin-top: 59px;margin-left: -20px;">
					<div data-tab-panel-0 class="am-tab-panel am-active">

						<div class="am-g">
							<div class="am-u-sm-7 am-u-sm-offset-3 "> 
								<span class="left4"></span> 
								<input type="text" name="loginname" id="loginname" placeholder="用户名称" class="am-form-field" style="margin: auto;display: block;float: left;padding-left: 55px;width: 528px" /> </div>
							<div class="am-u-sm-1 am-u-end" style="padding: 10px;"> <span class="right" style="display: none;"></span> </div>
						</div>

						<div class="am-g" style="margin-top: 36px;">
							<div class="am-u-sm-6 am-u-sm-offset-3 "> 
							<span class="left3"></span>
							 <input type="password" name="password" id="password" placeholder="输入密码" class="am-form-field" style="margin: auto;display: block;float: left;padding-left: 59px;width: 528px" /> </div>
						</div>
						
						<div class="am-g" style="margin-top: 37px;">
							<div class="am-u-sm-7 am-u-sm-offset-3 ">
							 <span class="left2"></span> <input type="text" name="truename" id="truename" placeholder="姓名" class="am-form-field" style="margin: auto;display: block;float: left;padding-left: 55px;width: 528px" /> </div>
							<div class="am-u-sm-1 am-u-end" style="padding: 10px;"> <span class="right" style="display: none;"></span> </div>
						</div>

						<div class="am-g" style="margin-top: 37px;">
							<div class="am-u-sm-7 am-u-sm-offset-3 "> <span class="left1"></span>
							 <input type="text" name="tel" id="tel" placeholder="手机号码" class="am-form-field" style="margin: auto;display: block;float: left;padding-left: 55px;width: 528px" /> </div>
							<div class="am-u-sm-1 am-u-end" style="padding: 10px;"> <span class="right" style="display: none;"></span> </div>
						</div>

						

						<div class="am-g" style="margin-top: 37px;">
							<div class="am-u-sm-7 am-u-sm-offset-3 "> <span class="left5"></span>
							 <input type="text" name="address" id="address" placeholder="联系地址" class="am-form-field" style="margin: auto;display: block;float: left;padding-left: 55px;width: 528px" /> </div>
							<div class="am-u-sm-1 am-u-end" style="padding: 10px;"> <span class="right" style="display: none;"></span> </div>
						</div>

						<div class="am-g" style="margin-top: 21px;">
							
						</div>
						<div class="am-g" style="margin-top:112px;">
							<div class="am-u-sm-7 am-u-sm-offset-3 ">
							 <button type="submit"  class="am-btn am-btn-warning" style="width: 528px;padding: 20px;border: 1px rgba(187, 187, 187, 0.5) solid;">
							 立即注册</button>
							  </div>
						</div>
						<div class="am-g" style="margin-top: 20px;margin-bottom: 135px;">
							<div class="am-u-sm-7 am-u-sm-offset-3" style="padding-right: 0rem;">
								<a style="font-size: 14px;">您也可以使用邮箱注册></a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="am-g " style="margin-top: 81px;text-align: center;font-size: 12px;">
			<div class="bottomLine" style="margin:0 auto;width:700px;height: 35px;">
				<span style="float: left;word-spacing:0.52rem;    text-align: center;    width: 100%;">关于我们 | 联系我们 | 商家入驻 | 友情链接 | 站点地图 | 手机商城 | 销售联盟 | 商城社区 | 企业文化 | 帮助中心 
				</span>
			</div>
		</div>
		<div class="am-g">
			<div class="bot ">
				<div style="margin:0 auto;width:700px;height: 30px;">
					<p style="font-size: 12px;float: left;">© &nbsp;2005-2016 COSY 版权所有 ，并保留所有权利 <span style="margin-left: 30px;">COSY  Tel ：7474741 </span><span style="margin-left: 30px;">E-mai：maila@163.com</span> </p>
				</div>
			</div>
		</div>
		</form>
		
		
		
				<!--底部结束-->
		
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			
			
			
		</script>
	</body>

</html>