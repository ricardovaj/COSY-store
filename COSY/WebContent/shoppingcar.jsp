<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> carlistall = (List<Map<String, Object>>)request.getAttribute("carlistall");
Map<String, Object> obj=(Map<String,Object>)request.getSession().getAttribute("currentmember");	
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>COSY,贴近生活!</title>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
		<!--引入购物车页面的样式表-->
	<link rel="stylesheet" type="text/css" href="css/shoppingcar.css"/>
    
    <script type="text/javascript" src="js/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/quick_links.js"></script>
    

</head>
<body>
    <!--scroll-head-->
    <div class="scroll-head"></div>
    <!--top-->
    <div class="top-wrapper">
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
                                全中国最穷的小伙子发财日记<br/>
                                掏彩票公共账号
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
                    <%if(obj==null) {%>
					<a href="uilogin.jsp">登录</a>
					<a href="reg.jsp">注册</a>
					<%}else{ %>
					欢迎您,<%=obj.get("loginname")%>!
					<%} %></a>
                    <span class="down-icon"></span>
                </div>
                <div data-toggle="arrowdown" id="arrow4" class="user-name">
                    <i class="fa fa-shopping-cart fa-orange"></i>
                    <a href="uiaddtocar">购物车</a>
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
                    <span>您购物车里还没有任何宝贝。</span><a class="check-shopp" href="#">查看我的购物车</a>
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
                                <li><a href="#">哈士奇</a></li>
				                <li><a href="#">萨摩耶</a></li>
				                <li><a href="#">贵宾犬</a></li>
				                <li><a href="#">吉娃娃</a></li>
				                <li><a href="#">博美犬</a></li>
				                <li><a href="#">龙猫</a></li>
				                <li><a href="#">布偶猫</a></li>
				                <li><a href="#">波斯猫</a></li>
				                <li><a href="#">缅因猫</a></li>
				                <li><a href="#">埃及猫</a></li>
				                <li><a href="#">松狮</a></li>
				                <li><a href="#">藏獒</a></li>
				                <li><a href="#">牧羊犬</a></li>
                            </ul>
                        </div>
                        <div class="sub-nav-cell right-shadow">
                            <h3 class="green-sp">宠物必备</h3>
                            <ul class="sub-nav-box sp">
                                <li><a href="#">狗粮</a></li>
				                <li><a href="#">猫粮</a></li>
				                <li><a href="#">沐浴露</a></li>
				                <li><a href="#">零食</a></li>
				                <li><a href="#">日用品</a></li>
				                <li><a href="#">猫砂</a></li>
				                <li><a href="#">狗窝</a></li>
				                <li><a href="#">猫窝</a></li>
				                <li><a href="#">玩具</a></li>
				                <li><a href="#">香波</a></li>
				                <li><a href="#">保健品</a></li>
				                <li><a href="#">医疗品</a></li>
				                <li><a href="#">衣服</a></li>
				                <li><a href="#">链子</a></li>
                            </ul>
                        </div>
                        <div class="sub-nav-cell right-shadow">
                            <h3 class="red-now">园艺绿植</h3>
                            <ul class="sub-nav-box now">
                                <li><a href="#">花卉种子</a></li>
				                <li><a href="#">蔬菜种子</a></li>
				                <li><a href="#">花卉盆栽</a></li>
				                <li><a href="#">鲜花绿植</a></li>
				                <li><a href="#">盆栽绿植</a></li>
				                <li><a href="#">水培绿植</a></li>
				                <li><a href="#">多肉组合</a></li>
				                <li><a href="#">营养土</a></li>
				                <li><a href="#">有机肥</a></li>
				                <li><a href="#">花盆花架</a></li>
				                <li><a href="#">浇灌工具</a></li>
				                <li><a href="#">杀虫剂</a></li>
                            </ul>
                        </div>
                        <div class="sub-nav-cell">
                            <h3 class="blue-more">更多精彩</h3>
                            <ul class="sub-nav-box more">
                                <li><a href="#">桌面鱼缸</a></li>
				                <li><a href="#">生态缸</a></li>
				                <li><a href="#">乌龟王八</a></li>
				                <li><a href="#">鸟类</a></li>
				                <li><a href="#">小白兔</a></li>
				                <li><a href="#">兔笼</a></li>
				                <li><a href="#">鸟笼</a></li>
				                <li><a href="#">地柜浴缸</a></li>
				                <li><a href="#">净水器</a></li>
				                <li><a href="#">其他爬虫</a></li>
				                <li><a href="#">饲料箱</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--scroll-top-->
        <div class="scroll-search">
            <div class="search-litter">
                <img class="scroll-logo" src="img/logo.png" style="width: 81px; height: 36px;"/>
                <!--scroll-search-->
                <div class="search-wrapper-scroll">
                    <div class="search-box-scroll">
                        <div data-toggle="arrowdown" id="arrow9" class="search-toggle-scroll">
                            宝贝<span class="down-icon"></span>
                        </div>
                        <input class="search-in-scroll" type="text" placeholder="    瓜皮降价！" />
                        <a href="firstindex1.jsp" class="search-but-scroll">&nbsp;&nbsp;搜索</a>
                        <div data-toggle="hidden-box" id="nav-box9" class="search-toggle-box-scroll">店铺</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="ad-wrap">
		<div class="ad">
			<img src="http://img.boqiicdn.com/Data/Shop/0/0/0/shopimgFile1541954972.jpg" />
		</div>
	</div>
    <!--top-main-->
    <div class="top-main">
        <img src="img/logo10.png" style="width: 250px; height: 100px;"/>
        <div class="search-wrapper">
            <div class="search-box">
                <div data-toggle="arrowdown" id="arrow8" class="search-toggle">
                    宝贝<span class="down-icon"></span>
                </div>
                <input class="search-in" type="text" placeholder="    瓜皮降价！">
                <a href="firstindex1.jsp" class="search-but-scroll">&nbsp;&nbsp;搜索</a>
                <div data-toggle="hidden-box" id="nav-box8" class="search-toggle-box">店铺</div>
            </div>
            <a class="a-float-left hight-search" href="#">高级<br/>搜索</a>
            <!--other-search-->
            <div class="other-search">
                <a href="#">悸沫花不開</a>
                <a href="#">陈经理</a>
                <a href="#">苏某人</a>
                <a href="#">汪二狗</a>
                <a href="#">春哥</a>
                <a href="#">刘瓜皮</a>
                <a href="#">万秋月</a>
                <a href="#">四组牛逼</a>
                <a href="#" class="more-other">更多<i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!--two-code-->
        <div class="two-code">
            <h3>C O S Y</h3>
            <img src="img/code.png" />
            <div class="close-code"><i class="fa fa-times"></i></div>
        </div>
    </div>
    
	<!--购物车-->
	<table border="0" cellspacing="0" cellpadding="0" class="innerclass" id="cartable">
			<tr>
				<td style="width: 150px;height: 30px;">商品图片</td>
				<td>商品名称</td>
				<td>单价</td>
				<td style="width: 150px;">数量</td>
				<td style="width: 150px;">小计</td>
				<td style="width: 150px;">操作</td>
			</tr>
			<%for (Map<String, Object> m : carlistall) { %>
			<tr data-proid="<%=m.get("proid")%>" style="height:160px;">
				<td><img src="upload/<%=m.get("imgurl")%>" style="width:140px;height:160px;"></td>
				<td><%=m.get("proname")%></td>
				<td><span style="font-size: 18px;"><%=m.get("price")%></span>元</td>
				<td><div class="pronumber"><span class="left">-</span><input type="text" value="<%=m.get("procount")%>"/><span class="right" >+</span> </div>  </td>
				<td><span style="font-size: 18px;"></span>元</td>
				<td><span class="del" style="font-size: 18px;">删除</span></td>
			</tr>
			<%}%>
		</table>
		
	<p id="carbuy" class="innerclass"><a href="shouye.jsp">继续购物</a> <span style="padding-left: 20px;color: #ff6700;font-size:18px;">合计 <b id="sum"></b>元 </span> <span id="btnorder">去结算</span></p>
		<div id="receiverinfo" class="innerclass">
			<%if(obj!=null){%>
				<p>收货人姓名:<input type="text" name="tbname" id="tbname" value="<%=obj.get("truename")%>"/></p>
				<p>收货人电话:<input type="text" name="tbtel" id="tbTel" value="<%=obj.get("tel")%>"/></p>
				<p>收货人地址:<input type="text" name="tbaddress" id="tbaddress" value="<%=obj.get("address")%>" /></p>
				<p>
					<span id="btngotoorder">立即下单</span>
				</p>
			<%}else{%>
			<p>您还没有登录,请登录后再结算! <a href="uilogin.jsp">点击此处登录</a></p>
			
			<%}%>
		</div>
	
	
	
    <!--ad-->
    <br>
        <br>
        <br>
        <br>
    <div class="main-bottom">
        <div class="sub-bottom-nav">
            <h1>热卖单品</h1>
           	<div class="sub-nav-info">
           	   <a href="#">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
           	   <a href="#">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
           	   <a href="#">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
               <a href="#">保健品</a>|
			   <a href="#">医疗品</a>|
               <a href="#">宠物狗狗</a>|
               <a href="#">宠物撸猫</a>|
               <a href="#">家庭绿植</a>|
               <a href="#">宠物用品</a>|
               <a href="#">盆栽用品</a>|
               <a href="#">水培绿植</a>|
			   <a href="#">多肉组合</a>|
               <a href="#">更多</a>
           	</div>
        </div>
       
        <div class="single-sale-1">
            <a href="#">
                <img src="img/samoye7.jpg" style="width: 160px;height: 190px;"/>
                <h3>萨摩耶</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">1729.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>1899.00</del></span>&nbsp;|&nbsp;<span>月消1500件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="img/qiutianquan.png" style="width: 160px;height: 190px;"/>
                <h3>秋田犬</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">229.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消929件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="img/bomeiquan.png" style="width: 160px;height: 190px;"/>
                <h3>博美犬</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">1129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>1399.00</del></span>&nbsp;|&nbsp;<span>月消967件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="img/bosimao.png" style="width: 160px;height: 190px;"/>
                <h3>波斯猫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">899.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>899.00</del></span>&nbsp;|&nbsp;<span>月消666件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="img/lajimao.png" style="width: 160px;height: 190px;"/>
                <h3>褴褛猫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">799.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>899.00</del></span>&nbsp;|&nbsp;<span>月消529件</span></p>
        </div>
    </div>
    <!--help-->
    <div class="help">
        <div class="help-info">
            <h1><img src="img/help4.png"><span class="help-text">消费者保障</span></h1>
            <a class="help-a" href="#">保障范围</a>
            <a class="help-a" href="#">退货退款流程</a>
            <a class="help-a" href="#">服务中心</a>
            <a class="help-a" href="#">更多特色服务</a>
        </div>
        <div class="help-info">
            <h1><img src="img/help1.png"><span class="help-text">新手上路</span></h1>
            <a class="help-a" href="#">新手专区</a>
            <a class="help-a"v href="#">消费警示</a>
            <a class="help-a" href="#">交易安全</a>
            <a class="help-a margin-r" href="#">24小时在线帮助</a>
        </div>
        <div class="help-info">
            <h1><img src="img/help2.png"><span class="help-text">付款方式</span></h1>
            <a class="help-a-litter" href="#">支付宝快捷支付</a>
            <a class="help-a-litter" href="#">支付宝卡（现金）付款</a>
            <a class="help-a-litter" href="#">支付宝余额付款</a>
            <a class="help-a" href="#">货到付款</a>
        </div>
        <div class="help-info">
            <h1><img src="img/help3.png"><span class="help-text">COSY特色</span></h1>
            <a class="help-a" href="#">购物指数</a>
            <a class="help-a" href="#">我的公仔</a>
            <a class="help-a" href="#">手机cosy</a>
            <a class="help-a" href="#">旺信</a>
        </div>
    </div>
    <!--footer-->
    <div class="footer">
        <div class="footer-right">
            <div class="footer-nav">
                <a href="#">阿里巴巴集团</a>|
                <a href="#">阿里巴巴国际站</a>|
                <a href="#">阿里巴巴中国站</a>|
                <a href="#">全球速卖通</a>|
                <a href="#">淘宝网</a>|
                <a href="#">天猫</a>|
                <a href="#">聚划算</a>|
                <a href="#">一淘</a>|
                <a href="#">阿里妈妈</a>|
                <a href="#">阿里云计算</a>|
                <a href="#">云OS</a>|
                <a href="#">万网</a>|
                <a href="#">支付宝</a>|
                <a href="#">来往</a>
            </div>
            <div class="about-tao">
                <a href="#">关于cosy</a>
                <a href="#">合作伙伴</a>
                <a href="#">营销中心</a>
                <a href="#">廉正举报</a>
                <a href="#">联系客服</a>
                <a href="#">开放平台</a>
                <a href="#">诚征英才</a>
                <a href="#">联系我们</a>
                <a href="#">网站地图</a>
                <a href="#">法律声明</a>
                <a href="index.jsp" style="color:white">后台管理</a>
                <span class="gary-text">&copy; 2014 CoSy.com 版权所有</span>
            </div>
            <p class="gary-text"><span>网络文化经营许可证：文网文[2018]040号</span>|<span>增值电信业务经营许可证：浙B2-20080224-1</span>|<span>信息网络传播视听节目许可证：1109364号</span></p>
            
        </div>
        <div class="tao-man">
            <img src="img/tao-man.png" />
        </div>
    </div>
    
     
    <!--右侧贴边导航quick_links.js控制-->
    
    
    <script src="js/jquery_1.9.js"></script>
    <script src="js/main.js"></script>
    <script src="js/img-show.js"></script>
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			//给id为 btnorder的元素绑定一个点击事件
			$("#btnorder").click(function(){
				//点击id为 btnorder的按钮，就会执行此处的代码
				$("#receiverinfo").slideDown();
			});
			
			//给立即下单的按钮绑定一个点击事件
			$("#btngotoorder").click(function(){
				//要去判断这三个文本框里面是否输入了内容  判断的标准：去获取每个文本框里面的值，看这个值的长度是否大于0，如果大于0，就表示输入了内容
				if(!$("#tbname").val().length>0)//判断长度是否大于0，取反之后就数不大于0，即：没有输入内容。
				{
					alert("请输入收货人姓名!");
					$("#tbname").focus();//让一个表单元素获得焦点 
					return false;
				}
				
				if(!$("#tbTel").val().length>0)//判断长度是否大于0，取反之后就数不大于0，即：没有输入内容。
				{
					alert("请输入收货人联系电话!");
					$("#tbTel").focus();//让一个表单元素获得焦点 
					return false;
				}
				
				if(!$("#tbaddress").val().length>0)//判断长度是否大于0，取反之后就数不大于0，即：没有输入内容。
				{
					alert("请输入收货人详细地址!");
					$("#tbaddress").focus();//让一个表单元素获得焦点 
					return false;
				}
				
				//检查购物车里面是否又商品
				var len=$("#cartable").find("tr").length;
				if(len<2)
				{
					e.preventDefault();
					return false;
				}
				
				$.ajax({
				    url:'uiaddorder', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				    	tbname:$("#tbname").val(),
				        tbtel:$("#tbTel").val(),
				        tbaddress:$("#tbaddress").val()
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				       location.href="result.jsp";
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
						jisuan();
				    } 
				});
				
			});
			
			
			//给所有的加号绑定点击事件
			$(".pronumber span.right").click(function(){
				//点击加号的时候，把当前加号按钮所在的行的商品数量取出来，加上1  然后再放回去。
				var oldvalue=$(this).prev().val();
				var newvalue=parseInt(oldvalue)+1;
				var that=this;
				var proid=$(that).parent().parent().parent().attr("data-proid");
				$.ajax({
				    url:'uiupdatecarcount', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				        id :proid,
				        countvalue:newvalue
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				        console.log(data);
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
				    	$(that).prev().val(newvalue);
						jisuan();
				    } //回调方法 无论success或者error都会执行
				});
				
			});
			//给所有的减号绑定点击事件
			$(".pronumber span.left").click(function(){
				//点击加号的时候，把当前加号按钮所在的行的商品数量取出来，加上1  然后再放回去。
				var oldvalue=$(this).next().val();
				var newvalue=parseInt(oldvalue)-1;
				if(newvalue<1)
				{
					newvalue=1;
				}
				
				var that=this;
				var proid=$(that).parent().parent().parent().attr("data-proid");
				$.ajax({
				    url:'uiupdatecarcount', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				        id :proid,
				        countvalue:newvalue
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				        console.log(data);
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
				    	$(that).prev().val(newvalue);
						jisuan();
				    } //回调方法 无论success或者error都会执行
				});
				
				
				$(this).next().val(newvalue);
				jisuan();
			});
			
			
			
			$("span.del").click(function(){
				var that=this;
				var proid=$(that).parent().parent().attr("data-proid");
				$.ajax({
				    url:'uicardelete', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				        id :proid
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				        console.log(data);
				        $(that).parent().parent().remove();
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
						jisuan();
				    } 
				});
			});
			
			
			
			
			function jisuan()
			{
				
				//1、运算每一行的小计  = 单价*数量
				//2、对所有行的小计进行合计。
				var sum=0;
				$(".pronumber").each(function(index,item){
					//把每一行的单价和数量取出来进行运算，并且把运算的结果交给小计
					var num= parseInt($(item).find("input").val());//取出当前行商品的数量，并且将数量转为数字
					var price=parseInt($(item).parent().prev().find("span").text());//取出商品的单价
					var xiaoji=price*num;
					$(item).parent().next().find("span").text(xiaoji);
					sum=sum+xiaoji;
				});
				$("#sum").text(sum);
			}
			
			jisuan();
		</script>
		
</body>
</html>
