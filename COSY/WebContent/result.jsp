<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>COSY,贴近生活!</title>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style1.css"/>
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    
    <script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/quick_links.js"></script>
    <style type="text/css">
			#main{
				width:1226px;
				height:350px;
				margin:0 auto;
				background-color:#efefef;
				border-radius:5px;
			}
			h2{
				text-align:center;
				color:#333;
				line-height:80px;
			}
			a.goon{
				display:block;
				text-align:center;
			}
		</style>
</head>
<body>
	<div id="cover"></div>
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
                    <div class="my-grow">
                        <h1><a href="#">账号管理</a>&nbsp;|&nbsp;<a href="#">退出</a></h1>
                        <p>
                            <%if(currentmember==null) {%>
					<a href="uilogin.jsp">登录</a>
					<a href="reg.jsp">注册</a>
					<%}else{ %>
					欢迎您,<%=currentmember.get("loginname")%>!
					<%} %>
					</p>
                            <a href="#">我的订单</a>
                            <a href="#">我的购物车</a>
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
                <input type="button" class="search-but" value="搜索">
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
    <!--content-top-->
    
    <!--main-->
    
    <!--main-->
    
    <div id="main">
			<h2>下单成功!</h2>
			<a href="shouye.jsp" class="goon" style="font-size:16px">继续购物</a>
		</div>
    
    
    <!--main-bottom-->

    <!--ad-->
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
            <a class="help-a" href="#">淘公仔</a>
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
    
    
  
    <script src="js/main.js"></script>
    <script src="js/img-show.js"></script>



</body>

</html>