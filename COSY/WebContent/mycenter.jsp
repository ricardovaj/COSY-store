<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> listall = (List<Map<String, Object>>)request.getAttribute("listall");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
String memberid=currentmember.get("id").toString();
String pagestr = (String)request.getAttribute("pagestr");
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" href="css/personalcentre.css" />

		<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="js/common.js"></script>
		<title></title>
		<style type="text/css">
			.nimade{
				position: relative;
			}
			.imgurl img {
				width: 100px;
				height: 120px;
				margin-top: 10px;
				margin-left: 10px;				
			}
			.proname{
				position: absolute;
				font-size:16px;
				left: 148px;
				top: 55px;
			}
			.shabi{
				margin-top: 50px;
			}
			
		</style>
	</head>

	<body>
		<div class="top-wrapper" class="nav">
			<div class="top-info">
				<div class="top-left">
					<div data-toggle="arrowdown" id="arrow1" class="user-name">
						<a href="#">站长素材</a>
						<span class="down-icon"></span>
					</div>
					<div data-toggle="arrowdown" id="arrow2" class="msg-info">
						<i class="fa fa-envelope fa-gray"></i>
						<a href="#">消息</a>
						<span class="down-icon"></span>
					</div>
					<a class="a-float-left" href="#">手机cosy</a>
					<a href="shouye.jsp"><img height="34px" width="141px" a-float-left src="img/qqq.png" /></a>
					<!--hidden-box-->
					<div data-toggle="hidden-box" id="nav-box1" class="user-box">
						<img class="my-head" src="img/user-head.jpg" />
						<div class="my-grow">
							<h1><a href="#">账号管理</a>&nbsp;|&nbsp;<a href="#">退出</a></h1>
							<p>
								<h2><a href="#">查看我会员特权</a></h2>
								<a href="#">我的成长</a>
							</p>
						</div>
						<p style="height: 10px; clear: both;">&nbsp;</p>
						<div class="my-card">
							<div class="cards-info">
								<ul>
									<li><img src="img/icon.png" /></li>
									<li><img src="img/icon.png" /></li>
								</ul>
							</div>
							<div class="toggle-box">
								<div class="toggle">
									<i style="vertical-align: top" class="fa fa-angle-left arrow-left"></i>
									<i style="vertical-align: top" class="fa fa-angle-right arrow-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div data-toggle="hidden-box" id="nav-box2" class="msg-box">
						<h1>未读新消息<a href="#" class="fa fa-pencil-square-o pencil"></a></h1>
						<div class="read-info">
							<h2><span class="orange">&nbsp;&nbsp;|</span>&nbsp;你的书架&nbsp;<span style="font-weight: lighter">收到了<span class="orange">1</span>本书</span><span class="fa fa-times close-msg"></span></h2>
							<img src="img/book-1.png" />
							<div style="float: right">
								<p>
									全中国最穷的小伙子发财日记<br/> 掏彩票公共账号
								</p>
								<h3><a href="#">去看看</a></h3>
							</div>
						</div>
						<div class="msg-setting">
							<a href="#" class="fa fa-cog"></a>
							<a href="#" class="fa fa-pencil-square-o"></a>
							<a style="margin-left: 70px" href="#">买家消息&nbsp;|&nbsp;</a>
							<a href="#">卖家消息</a>
						</div>
					</div>
				</div>
				<!--top-right-->
				<div class="top-right">
					<div data-toggle="arrowdown" id="arrow3" class="user-name">
						<a href="#"> 
						<%if(currentmember==null) {%>
					<a href="uilogin.jsp">登录</a>
					<a href="reg.jsp">注册</a>
					<%}else{ %>
					欢迎您,<%=currentmember.get("loginname")%>!
					<%} %></a>
						<span class="down-icon"></span>
					</div>
					<div data-toggle="arrowdown" id="arrow4" class="user-name">
						<i class="fa fa-shopping-cart fa-orange"></i>
						<a href="#">购物车</a>
						<span class="down-icon"></span>
					</div>
					<div data-toggle="arrowdown" id="arrow5" class="user-name">
						<i class="fa fa-star fa-gray"></i>
						<a href="#">收藏夹</a>
						<span class="down-icon"></span>
					</div>
					<a class="a-float-left" href="#">商品分类</a>
					<span class="vertical-line">|</span>
					<div data-toggle="arrowdown" id="arrow6" class="user-name">
						<a href="#">卖家中心</a>
						<span class="down-icon"></span>
					</div>
					<a class="a-float-left" href="#">联系客户</a>
					<div data-toggle="arrowdown" id="arrow7" class="user-name">
						<i class="fa fa-list-ul fa-orange"></i>
						<a href="#">网站导航</a>
						<span class="down-icon"></span>
					</div>
					<!--hidden-box-->
					<div data-toggle="hidden-box" id="nav-box3" class="my-taobao-box">
						<ul>
							<li><a href="mycenter">个人中心</a></li>
							<li>新欢</li>
							<li>我的足迹</li>
							<li>我的上新</li>
							<li>我的优惠</li>
						</ul>
					</div>
					<div data-toggle="hidden-box" id="nav-box4" class="shopping-box">
						<span>您购物车里还没有任何宝贝。</span>
						<a class="check-shopp" href="#">查看我的购物车</a>
					</div>
					<div data-toggle="hidden-box" id="nav-box5" class="get-box">
						<ul>
							<li>收藏的宝贝</li>
							<li>收藏的店铺</li>
						</ul>
					</div>
					<div data-toggle="hidden-box" id="nav-box6" class="center-box">
						<ul>
							<li>已卖出的宝贝</li>
							<li>出售中的宝贝</li>
							<li>卖家服务市场</li>
							<li>卖家培训中心</li>
						</ul>
					</div>

					<div data-toggle="hidden-box" id="nav-box7" class="nav-box">
						<div class="sub-nav top-sub-nav">
							<!--<input type="button" class="more-btn" value="更多"/>-->
							<!--sub-nav-cell-->
							<div class="sub-nav-cell right-shadow">
								<h3 class="orange">主题市场</h3>
								<ul class="sub-nav-box">
									<li>
										<a href="#">哈士奇</a>
									</li>
									<li>
										<a href="#">萨摩耶</a>
									</li>
									<li>
										<a href="#">贵宾犬</a>
									</li>
									<li>
										<a href="#">吉娃娃</a>
									</li>
									<li>
										<a href="#">博美犬</a>
									</li>
									<li>
										<a href="#">龙猫</a>
									</li>
									<li>
										<a href="#">布偶猫</a>
									</li>
									<li>
										<a href="#">波斯猫</a>
									</li>
									<li>
										<a href="#">缅因猫</a>
									</li>
									<li>
										<a href="#">埃及猫</a>
									</li>
									<li>
										<a href="#">松狮</a>
									</li>
									<li>
										<a href="#">藏獒</a>
									</li>
									<li>
										<a href="#">牧羊犬</a>
									</li>
								</ul>
							</div>
							<div class="sub-nav-cell right-shadow">
								<h3 class="green-sp">宠物必备</h3>
								<ul class="sub-nav-box sp">
									<li>
										<a href="#">狗粮</a>
									</li>
									<li>
										<a href="#">猫粮</a>
									</li>
									<li>
										<a href="#">沐浴露</a>
									</li>
									<li>
										<a href="#">零食</a>
									</li>
									<li>
										<a href="#">日用品</a>
									</li>
									<li>
										<a href="#">猫砂</a>
									</li>
									<li>
										<a href="#">狗窝</a>
									</li>
									<li>
										<a href="#">猫窝</a>
									</li>
									<li>
										<a href="#">玩具</a>
									</li>
									<li>
										<a href="#">香波</a>
									</li>
									<li>
										<a href="#">保健品</a>
									</li>
									<li>
										<a href="#">医疗品</a>
									</li>
									<li>
										<a href="#">衣服</a>
									</li>
									<li>
										<a href="#">链子</a>
									</li>
								</ul>
							</div>
							<div class="sub-nav-cell right-shadow">
								<h3 class="red-now">园艺绿植</h3>
								<ul class="sub-nav-box now">
									<li>
										<a href="#">花卉种子</a>
									</li>
									<li>
										<a href="#">蔬菜种子</a>
									</li>
									<li>
										<a href="#">花卉盆栽</a>
									</li>
									<li>
										<a href="#">鲜花绿植</a>
									</li>
									<li>
										<a href="#">盆栽绿植</a>
									</li>
									<li>
										<a href="#">水培绿植</a>
									</li>
									<li>
										<a href="#">多肉组合</a>
									</li>
									<li>
										<a href="#">营养土</a>
									</li>
									<li>
										<a href="#">有机肥</a>
									</li>
									<li>
										<a href="#">花盆花架</a>
									</li>
									<li>
										<a href="#">浇灌工具</a>
									</li>
									<li>
										<a href="#">杀虫剂</a>
									</li>
								</ul>
							</div>
							<div class="sub-nav-cell">
								<h3 class="blue-more">更多精彩</h3>
								<ul class="sub-nav-box more">
									<li>
										<a href="#">桌面鱼缸</a>
									</li>
									<li>
										<a href="#">生态缸</a>
									</li>
									<li>
										<a href="#">乌龟王八</a>
									</li>
									<li>
										<a href="#">鸟类</a>
									</li>
									<li>
										<a href="#">小白兔</a>
									</li>
									<li>
										<a href="#">兔笼</a>
									</li>
									<li>
										<a href="#">鸟笼</a>
									</li>
									<li>
										<a href="#">地柜浴缸</a>
									</li>
									<li>
										<a href="#">净水器</a>
									</li>
									<li>
										<a href="#">其他爬虫</a>
									</li>
									<li>
										<a href="#">饲料箱</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--scroll-top-->
			
		</div>

		<header class="">
			<br />
			<br />
			<article class="">
				<div class="header-menu">
					<div class="mcy-logo">
						<a href="###" ">
							<img src="img/myCOSY.png " class="mcy-cylogo "/>
						</a>
					</div>
					<div class="right-nav ">
						<ul>
							<li class="right-nav-menu " style="width: 85px; ">
								<a href="shouye.jsp">首页</a>
							</li>
							<li class="right-nav-menu " style="width: 125px; ">
								<a href=" ">账户管理</a>
							</li>
							<li class="right-nav-menu ">
								<a href=" ">消息</a>
							</li>
						</ul>
						<div class="mcy-search ">
							<form>
								<input id=" " type="text " value=" ">
								<img src="img/search.png " />
								<button class="mcy-search-button ">搜索</button>
							</form>
						</div>
					</div>
				</div>
			</article>
		</header>
		<div class="mcy-center ">
			<div class="nav-side ">
				<div class="nav-side-top ">
					<i></i>
				</div>
				<div class="nav-side-menu ">
					<article class="side-menu side-menu-off ">
						<dl class="side-menu-tree " style="padding-left: 50px; ">
							<dt><img src="img/shoppingcar.png "  style="margin-right: 10px;margin-left: -35px; "/>我的购物车</dt>
							<dt><img src="img/file.png "  style="margin-right: 10px;margin-left: -33px; "/>商品管理</dt>
							<dd>
								<a href=" ">我的订单</a>
							</dd>
							<dd>
								<a href=" ">我的收藏</a>
							</dd>
							<dd>
								<a href=" ">我的评价</a>
							</dd>
							<dd>
								<a href=" ">我的足迹</a>
							</dd>
							<dd>
								<a href=" ">我的优惠券</a>
							</dd>
							<dt><img src="img/v-card-3.png "  style="margin-right: 6px;margin-left: -33px; "/>售后服务</dt>
							<dd>
								<a href=" ">退换货</a>
							</dd>
							<dd>
								<a href=" ">意见/投诉</a>
							</dd>
						</dl>
						<a ison="on " class="switch-side-menu icon-up-side ">
							<i></i>
						</a>
					</article>
				</div>
			</div>
			
			<!--<div class="cont-main ">-->
					<div class="main-wrap " style="border: 0px; ">
						<div class="server-wrapper ">
							<div class="server-tab " style="margin-top: 26px; ">
								
								

								

								<div style="width: 1068px;float: left;vertical-align: bottom;text-align: center; ">
									<div style="width: 1045px;margin-top:20px;padding: 10px;background-color: #fff;height: 40px; ">
										<div style="border-top:3px #f40 solid;width: 1000px;position: absolute;margin-top: 40px;margin-left: 20px;float: left; "></div>
<!-- 										<div style="position: absolute;margin-top: 5px;font-size: 20px;color: #686868;float: left;width: 1000px; ">
											<span style="margin-left: 20px; ">待付款</span>
											<font style="color: #CF2D27; ">0</font>
											<span style="margin-left: 40px;margin-right: 40px; ">|</span>
											<span>待发货</span>
											<font style="color: #CF2D27; ">0</font>
											<span style="margin-left: 40px;margin-right: 40px; ">|</span>
											<span>待收货</span>
											<font style="color: #CF2D27; ">0</font>
											<span style="margin-left: 40px;margin-right: 40px; ">|</span>
											<span>待评价</span>
											<font style="color: #CF2D27; ">0</font>
											<span style="margin-left: 40px;margin-right: 40px; ">|</span>
											<span>退款</span>
										</div>
									</div>
									<div style="width: 1045px;padding:10px;display: inline-block; float: left;background-color: #fff; ">
										<div> -->
											
											<h3 style="text-align: left; height: 32px; padding: -1px 10px; background: #fafafa; color: #666; ">&nbsp;我的订单</h3>
											<div class="extra-r "></div>
										</div>
<!-- 										<input type="checkbox" style="float:left;width: 22px; height: 22px;margin-left:10px;margin-right: 16px;"><div style="float: left;">全选</div>
 -->
										<div style="margin-top: 32px; margin-bottom: 5px; margin-left: 20px; ">
											<table style="text-align: center; " border="0 " cellspacing="0 " cellpadding="0 " class="tb tblis ">
												<tr style="font-size: 18px; ">
													<td style="width:255px; ">订单详情</td>
													<td style="width:120px; ">收货人</td>
													<td style="width:150px; ">电话</td>
													<td style="width:160px; ">地址</td>
													<td style="width:140px; ">订单金额</td>
													<td style="width:160px; ">操作</td>
												</tr>
											</table>
										</div>
										<div style="border-bottom: 5px #f40 solid; ">
										</div>

										<%for (Map<String, Object> m : listall) { %>
 
										<!--商品开始-->
										<div>
											<div style="margin-left: 30px;margin-top:10px;">
												<input type="checkbox" style="float:left;width: 22px; height: 22px;margin-right: 16px;">
												<span style="font-size: 16px;float:left; " ;>订单时间：<%=m.get("ctime") %>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
												<span style="float:left; font-size:16px">订单号：</span><span style="font-size: 16px;margin-left: 1px;float:left; " class="ordernum"><%=m.get("orderid") %></span>
												<!--<p class="share ">分享:</p>
												   	 <a title="分享到QQ空间 " class="bshare-qzone "></a>
													 <a title="分享到新浪微博 " class="bshare-sinaminiblog "></a>
													 <a title="更多平台 " class="bshare-more bshare-more-icon more-style-addthis "></a>
													 <span class="BSHARE_COUNT bshare-share-count ">0</span>
													 </div>
														<script src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=1&amp;lang=zh " type="text/javascript " charset="utf-8 "></script>
														<script src="http://static.bshare.cn/b/bshareC0.js " type="text/javascript " charset="utf-8 "></script>
												   	</div>-->
												<img src="img/skip.png" style="width: 16px;height: 16px;margin-left: 360px;"/>
												<img src="img/garbage.png" style="margin-left: 16px;"/>
											</div>
					                            <div style="padding: 10px 20px;border-bottom: 5px #f40 solid;height: 150px;width: 1000px; ">
												<div class="nimade" style="float: left;margin-left: 12px;text-align:left;width: 240px;height: 140px;border: 1px #ccc solid;border-right: none; ">
											<!-- <img src="img/bomei.jpg" style="width: 100px;height: 120px;margin-top: 10px;margin-left: 10px; " />
											<div style="float:right;font-size:15px;width: 110px;line-height:36px;margin-right: 10px;line-height: ; ">博美犬</div> -->

 													<div class="imgurl">  </div>
 													<div  class="proname"> </div>
												</div>
												<div style="float: left;text-align:left;width: 120px;height: 140px;border: 1px #ccc solid;border-right: none; ">
													<p class="shabi" style="margin-left: 38px;margin-right:10px;line-height:36px;font-size:15px; ">   <%=m.get("sname") %>    </p>
												</div>
												<div style="float: left;text-align:left;width: 150px;height: 140px;border: 1px #ccc solid;border-right: none; ">
													<p class="shabi" style="margin-left: 20px;margin-right:10px;line-height:36px;font-size:15px; " ><%=m.get("stel") %></p>
												</div>
												<div style="float: left;text-align:left;width: 160px;height: 140px;border: 1px #ccc solid;border-right: none; ">
													<p class="shabi" style="margin-left: 10px;margin-right:10px;line-height:36px;font-size:15px; "><%=m.get("saddress") %></p>
												</div>
												<div style="float: left;text-align:left;width: 140px;height: 140px;border: 1px #ccc solid;border-right: none; ">
													<p style="margin-left: 50px;margin-right:10px;line-height:36px;font-size:15px;" class="price shabi"></p>
												</div>
												<div style="float: left;width: 160px;height: 140px;border: 1px #ccc solid; ">
													<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;margin: 42px; font-size: 15px; vertical-align: middle; "><a href="guestbookadd.jsp">收货留言</a></button>
												</div>
											</div>
										</div>
										<!--商品结束-->
										<%} %>
										 <div class="pager" style="float:right;width:950px;font-size:14px"><%=pagestr%></div>
	          	                    </div>
								</div>
								</div>
							</div>
						</div>
					</div>
				<!--</div>-->
		</div>
	<script src="js/jquery_1.9.js"></script>
    <script src="js/main.js"></script>
    <script src="js/img-show.js"></script>
    <script>
    	$(function(){
    		$("span.ordernum").each(function(index,item){ //item为orderid
    			 var ordernum=$(item).text();
    			 $.ajax({
 				    url:'getorderitems', //要请求的url地址
 				    type:'POST', //请求方法 GET or POST
 				    async:true, //是否使用异步请求的方式
 				    timeout:5000, //请求超时的时间，以毫秒计
 				    data:{
 				    	ordernum:ordernum
 				    },
 				    dataType:'json', //预期的服务器返回参数类型
 				    beforeSend:function(){
 				        
 				    },//再发送请求前调用的方法
 				    success:function(data) { 
 				    	$(data.list).each(function(index1,item1){ //
 				    		console.log(item1.imgurl);
 				    		$(item).parent().parent().find("div.proname").text(item1.proname);
 				    		$(item).parent().parent().find("p.price").text(item1.price+"元");
 				    		$(item).parent().parent().find("div.imgurl").html("<img src='upload/"+item1.imgurl+"'/>");
 				    		console.log(item1.proname);
 				    	});
 				    	
 				       //console.log(data.list[0].proname);
 				    }, //请求成功时回调方法，data为服务器返回的数据
 				    error:function(){
 				       
 				    }, //请求发生错误时调用方法
 				    complete:function(){
 						
 				    } 
 				});
    			
    		});
    		
    	});
    </script>
	</body>
</html>