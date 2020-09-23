<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
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
                            <a href="myselfcenter">我的订单</a>
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
                        <li><a href="myselfcenter">个人中心</a></li>
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
                        <a href="firstindex1.jsp" class="search-but1-scroll">&nbsp;&nbsp;搜索</a>
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
    <!--content-top-->
    <div class="content-top">
        <!--sidebar-->
        <div class="sidebar">
            <h3>商品服务分类</h3>
            <!--sidebar-info-->
            <div class="sidebar-info">
                <ul class="side-li">
                    <li class="s_1"><h3>宠物狗狗<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_2"><h3>宠物撸猫<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_3"><h3>奇异小宠<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_4"><h3>水族活体<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_5"><h3>爬虫系列<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_6"><h3>养宠秘籍<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_7"><h3>宠物饲料<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_8"><h3>宠物药品<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_9"><h3>宠物器具<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_10"><h3>种子种球<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_11"><h3>花卉绿植<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_12"><h3>多肉植物<span class="fa fa-angle-right fa-loc"></span></h3>v</li>
                    <li class="s_13"><h3>肥料肥土<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_14"><h3>园艺工具<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_15"><h3>园艺器械<span class="fa fa-angle-right fa-loc"></span></h3></li>                   
                    <li class="s_16"><h3>除草杀虫<span class="fa fa-angle-right fa-loc"></span></h3></li>
                </ul>
                <!--hidden-li-box-->
                <ul class="hiden-box">
                    <li data-hidden="li" id="hiden-1">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>超小型犬</h1>
                                <div class="a-box">
                                    <a href="firstindex">吉娃娃</a><span>|</span>
                                    <a href="firstindex">博美犬</a><span>|</span>
                                    <a href="firstindex">马尔济斯犬</a><span>|</span>
                                    <a href="firstindex">约克夏梗</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>小型犬</h1>
                                <div class="a-box">
                                    <a href="firstindex">贵宾犬</a><span>|</span>
                                    <a href="firstindex">拉萨犬</a><span>|</span>
                                    <a href="firstindex">博美犬</a><span>|</span>
                                    <a href="firstindex">美国可卡犬</a><span>|</span>
                                    <a href="firstindex">西施犬</a><span>|</span>
                                    <a href="firstindex">大白熊犬</a><span>|</span>             
                                    <a href="firstindex">兰波格犬</a><span>|</span>
                                    <a href="firstindex">北京犬</a><span>|</span>                                   
                                    <a href="firstindex">大丹犬</a><span>|</span>
                                    <a href="firstindex">北京犬</a><span>|</span>
                                    <a href="firstindex">巴吉度犬</a><span>|</span>                                   
                                    <a href="firstindex">西藏猎犬</a><span>|</span>
                                    <a href="firstindex">苏格兰梗</a><span>|</span>
                                    <a href="firstindex">卷毛比雄犬</a><span>|</span>                            
                                    <a href="firstindex">波音达</a><span>|</span> 
                                </div>
                            </div>                         
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>中型犬</h1>
                                <div class="a-box">
                                    <a href="firstindex">哈士奇</a><span>|</span>
                                    <a href="firstindex">松狮</a><span>|</span>
                                    <a href="firstindex">柴犬</a><span>|</span>
                                    <a href="firstindex">腊肠犬</a><span>|</span>
                                    <a href="firstindex">边境牧羊犬</a><span>|</span>
                                    <a href="firstindex">法国斗牛犬</a><span>|</span>
                                    <a href="firstindex">英国斗牛犬</a><span>|</span>
                                    <a href="firstindex">萨摩耶犬</a><span>|</span>
                                    <a href="firstindex">猎兔犬</a><span>|</span>
                                    <a href="firstindex">惠比特犬</a>
                                    <a href="firstindex">贝灵顿梗</a><span>|</span>
                                    <a href="firstindex">波士顿梗</a><span>|</span>
                                    <a href="firstindex">波利犬</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>大型犬</h1>
                                <div class="a-box">
                                    <a href="firstindex">德国牧羊犬</a><span>|</span>
                                    <a href="firstindex">卡斯罗</a><span>|</span>
                                    <a href="firstindex">法老王猎犬</a><span>|</span>
                                    <a href="firstindex">寻血猎犬</a><span>|</span>
                                    <a href="firstindex">圣伯纳犬</a><span>|</span>
                                    <a href="firstindex">阿富汗猎犬</a><span>|</span>
                                    <a href="firstindex">柯利犬</a><span>|</span>
                                    <a href="firstindex">法国狼犬</a><span>|</span>
                                    <a href="firstindex">爱尔兰雪达犬</a><span>|</span>
                                    <a href="firstindex">奇努克犬</a><span>|</span>
                                    <a href="firstindex">金毛寻回犬</a><span>|</span>
                                    <a href="firstindex">藏獒</a><span>|</span>
                               </div>                       
                          </div>
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-2">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>小型猫</h1>
                                <div class="a-box">
                                    <a href="#">新加坡猫</a><span>|</span>
                                    <a href="#">柯尼斯卷毛猫</a><span>|</span>
                                    <a href="#">东方猫</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>中型猫</h1>
                                <div class="a-box">
                                    <a href="#">暹罗猫</a><span>|</span>
                                    <a href="#">苏格兰折耳猫</a><span>|</span>
                                    <a href="#">英国短毛猫</a><span>|</span>
                                    <a href="#">波斯猫</a><span>|</span>
                                    <a href="#">俄罗斯蓝猫</a><span>|</span>
                                    <a href="#">美国短毛猫</a><span>|</span>
                                    <a href="#">异国短毛猫</a><span>|</span>
                                    <a href="#">挪威森林猫</a><span>|</span>
                                    <a href="#">埃及猫</a><span>|</span>
                                    <a href="#">伯曼猫</a><span>|</span>
                                    <a href="#">斯芬克斯猫</a><span>|</span>
                                    <a href="#">缅甸猫</a><span>|</span>
                                </div>
                            </div>                         
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>大型猫</h1>
                                <div class="a-box">
                                    <a href="#">布偶猫</a><span>|</span>
                                    <a href="#">英国短毛猫</a><span>|</span>
                                    <a href="#">波斯猫</a><span>|</span>
                                    <a href="#">美国短毛猫</a><span>|</span>
                                    <a href="#">沙特尔猫</a><span>|</span>
                                </div>
                            </div>                          
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-3">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>兔子</h1>
                                <div class="a-box">
                                    <a href="#">荷兰兔</a><span>|</span>
                                    <a href="#">海棠兔</a><span>|</span>
                                    <a href="#">波兰兔</a><span>|</span>
                                    <a href="#">多瓦夫兔</a><span>|</span>
                                    <a href="#">英国垂耳兔</a><span>|</span>
                                    <a href="#">巨型安哥拉兔</a><span>|</span>
                                    <a href="#">法国垂耳兔</a><span>|</span>
                                    <a href="#">荷兰侏儒兔</a><span>|</span>
                                    <a href="#">暹罗兔</a><span>|</span>
                                    <a href="#">大耳白兔</a><span>|</span>
                                    <a href="#">忌廉兔</a><span>|</span>
                                    <a href="#">喜玛拉雅兔</a><span>|</span>
                                    <a href="#">巨型金吉拉兔</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>仓鼠</h1>
                                <div class="a-box">
                                    <a href="#">金丝熊</a><span>|</span>
                                    <a href="#">布丁仓鼠</a><span>|</span>
                                    <a href="#">奶茶仓鼠</a><span>|</span>
                                    <a href="#">银狐仓鼠</a><span>|</span>
                                    <a href="#">西施熊</a><span>|</span>
                                    <a href="#">一线仓鼠</a><span>|</span>
                                    <a href="#">老公公仓鼠</a><span>|</span>
                                    <a href="#">老婆婆仓鼠</a><span>|</span>
                                    <a href="#">琥珀仓鼠</a><span>|</span>
                                    <a href="#">金狐仓鼠</a><span>|</span>
                                    <a href="#">紫仓鼠</a><span>|</span>
                                    <a href="#">雪球仓鼠</a><span>|</span>
                                </div>
                            </div>                          
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>乌龟</h1>
                                <div class="a-box">
                                    <a href="#">金钱龟</a><span>|</span>
                                    <a href="#">玳瑁</a><span>|</span>
                                    <a href="#">猪鼻龟</a><span>|</span>
                                    <a href="#">大鳄龟</a><span>|</span>
                                    <a href="#">地图龟</a><span>|</span>
                                    <a href="#">麝香龟</a><span>|</span>
                                    <a href="#">缅甸陆龟</a><span>|</span>
                                    <a href="#">鹰嘴龟</a><span>|</span>
                                    <a href="#">中华草龟</a><span>|</span>
                                    <a href="#">火焰龟</a><span>|</span>
                                    <a href="#">黄头侧颈龟</a><span>|</span>
                                    <a href="#">蛋龟</a><span>|</span>
                                    <a href="#">枫叶龟</a><span>|</span>
                                    <a href="#">红腿陆龟</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>鸟类</h1>
                                <div class="a-box">
                                    <a href="#">八哥</a><span>|</span>
                                    <a href="#">虎皮鹦鹉</a><span>|</span>
                                    <a href="#">鹩哥</a><span>|</span>
                                    <a href="#">画眉</a><span>|</span>
                                    <a href="#">云雀</a><span>|</span>
                                    <a href="#">相思鸟</a><span>|</span>
                                    <a href="#">绣眼鸟</a><span>|</span>
                                    <a href="#">黄雀</a><span>|</span>
                                    <a href="#">金丝雀</a><span>|</span>
                                    <a href="#">乌鸫</a><span>|</span>
                                    <a href="#">亚历山大鹦鹉</a><span>|</span>
                                    <a href="#">百灵</a><span>|</span>
                                    <a href="#">大山雀</a><span>|</span>
                                    <a href="#">金翅雀</a><span>|</span>
                                    <a href="#">红嘴蓝鹊</a><span>|</span>
                                </div>
                            </div>                         
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-4">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>鱼类</h1>
                                <div class="a-box">
                                    <a href="#">鲶鱼</a><span>|</span>
                                    <a href="#">金鱼</a><span>|</span>
                                    <a href="#">热带鱼</a><span>|</span>
                                    <a href="#">鲤鱼</a><span>|</span>
                                    <a href="#">龙鱼</a><span>|</span>
                                    <a href="#">刀鱼</a><span>|</span>
                                    <a href="#">神仙鱼</a><span>|</span>
                                    <a href="#">斗鱼</a><span>|</span>
                                    <a href="#">淡水鱼</a><span>|</span>
                                    <a href="#">河豚鱼</a><span>|</span>
                                    <a href="#">虾虎鱼</a><span>|</span>
                                    <a href="#">恐龙鱼</a><span>|</span>
                                    <a href="#">鲷鱼</a><span>|</span>
                                    <a href="#">海水鱼</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>虾类</h1>
                                <div class="a-box">
                                    <a href="#">青虾</a><span>|</span>
                                    <a href="#">草虾</a><span>|</span>
                                    <a href="#">大龙虾</a><span>|</span>
                                    <a href="#">罗氏虾</a><span>|</span>
                                    <a href="#">喇蛄</a><span>|</span>
                                    <a href="#">巨型淡水龙虾</a><span>|</span>
                                    <a href="#">海虾</a><span>|</span>
                                    <a href="#">沼虾</a><span>|</span>
                                    <a href="#">小龙虾</a><span>|</span>
                                    <a href="#">斑节对虾</a><span>|</span>
                                    <a href="#">皮皮虾</a><span>|</span>
                                    <a href="#">日本对虾</a><span>|</span>
                                    <a href="#">红虾</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>蟹类</h1>
                                <div class="a-box">
                                    <a href="#">帝王蟹</a><span>|</span>
                                    <a href="#">梭子蟹</a><span>|</span>
                                    <a href="#">面包蟹</a><span>|</span>
                                    <a href="#">中华绒螯蟹</a><span>|</span>
                                    <a href="#">青蟹</a><span>|</span>
                                    <a href="#">溪蟹</a><span>|</span>
                                    <a href="#">皇帝蟹</a><span>|</span>
                                    <a href="#">河蟹</a><span>|</span>
                                    <a href="#">巨型螃蟹</a><span>|</span>
                                    <a href="#">锯齿华溪蟹</a><span>|</span>
                                    <a href="#">巨招潮蟹</a><span>|</span>
                                    <a href="#">红星梭子蟹</a><span>|</span>
                                    <a href="#">关公蟹</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>蚌类</h1>
                                <div class="a-box">
                                    <a href="#">象拔蚌</a><span>|</span>
                                    <a href="#">河蚌</a><span>|</span>
                                    <a href="#">圆顶珠蚌</a><span>|</span>
                                    <a href="#">大河蚌</a><span>|</span>
                                    <a href="#">蛤蜊</a><span>|</span>
                                    <a href="#">北极贝</a><span>|</span>
                                    <a href="#">花甲</a><span>|</span>
                                    <a href="#">青口贝</a><span>|</span>
                                    <a href="#">干贝</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-5">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>蜘蛛</h1>
                                <div class="a-box">
                                    <a href="#">幽灵蛛</a><span>|</span>
                                    <a href="#">喜蛛</a><span>|</span>
                                    <a href="#">狼蛛</a><span>|</span>
                                    <a href="#">笑脸蜘蛛</a><span>|</span>
                                    <a href="#">玻利维亚钢铁蓝</a><span>|</span>                                   
                                    <a href="#">智利火</a><span>|</span>
                                    <a href="#">墨西哥金背</a><span>|</span>
                                    <a href="#">巴西巨人金毛</a><span>|</span>
                                    <a href="#">红玫瑰蜘蛛</a><span>|</span>
                                    <a href="#">墨西哥火膝头</a><span>|</span>
                                    <a href="#">泰国金属蓝</a><span>|</span>
                                    <a href="#">委内瑞拉太阳虎</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>蛙类</h1>
                                <div class="a-box">
                                    <a href="#">角蛙</a><span>|</span>
                                    <a href="#">小金蛙</a><span>|</span>
                                    <a href="#">霸王角蛙</a><span>|</span>
                                    <a href="#">魔鬼蛙</a><span>|</span>
                                    <a href="#">黄金箭毒蛙</a><span>|</span>
                                    <a href="#">红眼树蛙</a><span>|</span>
                                    <a href="#">钟角蛙</a><span>|</span>
                                    <a href="#">番茄蛙</a><span>|</span>
                                    <a href="#">金蛙</a><span>|</span>
                                    <a href="#">老爷树蛙</a><span>|</span>
                                    <a href="#">非洲牛蛙</a><span>|</span>
                                    <a href="#">大泛树蛙</a><span>|</span>
                                    <a href="#">牛奶蛙</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>蛇类</h1>
                                <div class="a-box">
                                    <a href="#">乌梢蛇</a><span>|</span>
                                    <a href="#">赤练蛇</a><span>|</span>
                                    <a href="#">球蟒</a><span>|</span>
                                    <a href="#">玉米蛇</a><span>|</span>
                                    <a href="#">黄金蟒</a><span>|</span>
                                    <a href="#">奶蛇</a><span>|</span>
                                    <a href="#">红尾蚺</a><span>|</span>
                                    <a href="#">网纹蟒</a><span>|</span>
                                    <a href="#">翠青蛇</a><span>|</span>
                                    <a href="#">王锦蛇</a><span>|</span>
                                    <a href="#">黑眉锦蛇</a><span>|</span>
                                    <a href="#">缅甸蟒</a><span>|</span>
                                    <a href="#">水蚺</a><span>|</span>
                                    <a href="#">钝尾两头蛇</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>其他</h1>
                                <div class="a-box">
                                    <a href="#">暂无</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-6">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>攻略</h1>
                                <div class="a-box">
                                    <a href="#">宠物百科</a><span>|</span>
                                </div>
                            </div>
                        </div>
                        <div class="sub-nav-left">
                           
                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-7">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>狗</h1>
                                <div class="a-box">
                                    <a href="#">幼犬狗粮</a><span>|</span>
                                    <a href="#">成犬狗粮</a><span>|</span>
                                    <a href="#">全阶段狗粮</a><span>|</span>
                                    <a href="#">狗饼干</a><span>|</span>
                                    <a href="#">狗罐头</a><span>|</span>
                                    <a href="#">训犬套餐</a><span>|</span>
                                    <a href="#">狗零食</a><span>|</span>
                                    <a href="#">肉类</a><span>|</span>
                                    <a href="#">狗零食</a><span>|</span>
                                    <a href="#">磨牙棒</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>猫</h1>
                                <div class="a-box">
                                    <a href="#">幼猫猫粮</a><span>|</span>
                                    <a href="#">成猫猫粮</a><span>|</span>
                                    <a href="#">猫饼干</a><span>|</span>
                                    <a href="#">全阶段猫粮</a><span>|</span>
                                    <a href="#">猫罐头</a><span>|</span>
                                    <a href="#">猫零食</a><span>|</span>
                                    <a href="#">猫薄荷</a><span>|</span>
                                    <a href="#">果冻</a><span>|</span>
                                    <a href="#">猫草</a><span>|</span>
                                    <a href="#">布丁</a><span>|</span>
                                    <a href="#">肉干</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                        <div class="sub-nav-left">                          
                            <div class="cell-box">
                                <h1>常用</h1>
                                <div class="a-box">
                                    <a href="#">鱼食</a><span>|</span>
                                    <a href="#">龟粮</a><span>|</span>
                                    <a href="#">鼠粮</a><span>|</span>   
                                    <a href="#">鸟食</a><span>|</span> 
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>其他</h1>
                                <div class="a-box">
                                    <a href="#">蜘蛛食物</a><span>|</span>
                                    <a href="#">蛙食</a><span>|</span>                                 
                                </div>
                            </div>
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-8">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>狗</h1>
                                <div class="a-box">
                                    <a href="#">肠胃调理</a><span>|</span>
                                    <a href="#">美毛</a><span>|</span>
                                    <a href="#">奶粉</a><span>|</span>
                                    <a href="#">驱虫药</a><span>|</span>
                                    <a href="#">皮肤药</a><span>|</span>
                                    <a href="#">口护理</a><span>|</span>
                                    <a href="#">鼻护理</a><span>|</span>
                                    <a href="#">耳护理</a><span>|</span>
                                    <a href="#">强化免疫</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>猫</h1>
                                <div class="a-box">
                                    <a href="#">肠胃调理</a><span>|</span>
                                    <a href="#">美毛</a><span>|</span>
                                    <a href="#">奶粉</a><span>|</span>
                                    <a href="#">驱虫药</a><span>|</span>
                                    <a href="#">皮肤药</a><span>|</span>
                                    <a href="#">口护理</a><span>|</span>
                                    <a href="#">鼻护理</a><span>|</span>
                                    <a href="#">耳护理</a><span>|</span>
                                    <a href="#">强化免疫</a><span>|</span>
                                </div>
                            </div>                          
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>常用</h1>
                                <div class="a-box">
                                    <a href="#">驱虫药</a><span>|</span>
                                    <a href="#">毛发护理</a><span>|</span>
                                    <a href="#">爪子清洁</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>其他</h1>
                                <div class="a-box">
                                    <a href="#">暂无</a><span>|</span>                                    
                                </div>
                            </div>                            
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-9">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>狗</h1>
                                <div class="a-box">
                                    <a href="#">狗窝</a><span>|</span>
                                    <a href="#">狗笼</a><span>|</span>
                                    <a href="#">狗厕所</a><span>|</span>
                                    <a href="#">狗护具</a><span>|</span>
                                    <a href="#">狗链</a><span>|</span>
                                    <a href="#">尿垫</a><span>|</span>
                                    <a href="#">嘴套</a><span>|</span>
                                    <a href="#">狗玩具</a><span>|</span>
                                    <a href="#">美容电器</a><span>|</span>
                                    <a href="#">航空箱</a><span>|</span>
                                    <a href="#">拾便器</a><span>|</span>
                                    <a href="#">美容用具</a><span>|</span>
                                    <a href="#">鞋子</a><span>|</span>                                 
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>猫</h1>
                                <div class="a-box">
                                    <a href="#">猫窝</a><span>|</span>
                                    <a href="#">猫盆</a><span>|</span>                                   
                                    <a href="#">航空箱</a><span>|</span>
                                    <a href="#">猫爬架</a><span>|</span>
                                    <a href="#">猫抓板</a><span>|</span>   
                                    <a href="#">猫玩具</a><span>|</span>
                                    <a href="#">猫笼</a><span>|</span>
                                    <a href="#">发声玩具</a><span>|</span>
                                    <a href="#">益智玩具</a><span>|</span>
                                    <a href="#">锚链</a><span>|</span>
                                    <a href="#">猫砂</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>常用</h1>
                                <div class="a-box">
                                    <a href="#">鱼缸</a><span>|</span>
                                    <a href="#">兔笼</a><span>|</span>
                                    <a href="#">龟缸</a><span>|</span>
                                    <a href="#">蛇龙</a><span>|</span>
                                    <a href="#">鼠笼</a><span>|</span>
                                    <a href="#">桌面鱼缸</a><span>|</span>
                                    <a href="#">生态鱼缸</a><span>|</span>
                                    <a href="#">地板鱼缸</a><span>|</span>
                                    <a href="#">鸟笼</a><span>|</span>
                                    <a href="#">鸟绳</a><span>|</span>
                                    <a href="#">饲养箱</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>其他</h1>
                                <div class="a-box">
                                    <a href="#">蜘蛛柜</a><span>|</span>
                                    <a href="#">层柜</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-10">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>粮食作物</h1>
                                <div class="a-box">
                                    <a href="#">水稻</a><span>|</span>
                                    <a href="#">玉米</a><span>|</span>
                                    <a href="#">豆类</a><span>|</span>
                                    <a href="#">薯类</a><span>|</span>
                                    <a href="#">青稞</a><span>|</span>
                                    <a href="#">蚕豆</a><span>|</span>
                                    <a href="#">小麦</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>油料作物</h1>
                                <div class="a-box">
                                    <a href="#">油籽</a><span>|</span>
                                    <a href="#">蔓青</a><span>|</span>
                                    <a href="#">大芥</a><span>|</span>
                                    <a href="#">花生</a><span>|</span>
                                    <a href="#">胡麻</a><span>|</span>
                                    <a href="#">大麻</a><span>|</span>
                                    <a href="#">向日葵</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>蔬菜作物</h1>
                                <div class="a-box">
                                    <a href="#">萝卜</a><span>|</span>
                                    <a href="#">白菜</a><span>|</span>
                                    <a href="#">芹菜</a><span>|</span>
                                    <a href="#">韭菜</a><span>|</span>
                                    <a href="#">蒜</a><span>|</span>
                                    <a href="#">葱</a><span>|</span>
                                    <a href="#">胡萝卜</a><span>|</span>
                                    <a href="#">菜瓜</a><span>|</span>
                                    <a href="#">莲花菜</a><span>|</span>
                                    <a href="#">菊芋</a><span>|</span>
                                    <a href="#">刀豆</a><span>|</span>
                                    <a href="#">芫荽芫荽</a><span>|</span>
                                    <a href="#">莴笋莴笋</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>果类</h1>
                                <div class="a-box">
                                    <a href="#">梨</a><span>|</span>
                                    <a href="#">青梅</a><span>|</span>
                                    <a href="#">苹果</a><span>|</span>
                                    <a href="#">桃</a><span>|</span>
                                    <a href="#">杏</a><span>|</span>
                                    <a href="#">核桃</a><span>|</span>
                                    <a href="#">李子</a><span>|</span>
                                    <a href="#">樱桃</a><span>|</span>
                                    <a href="#">草莓</a><span>|</span>
                                    <a href="#">红枣</a><span>|</span>
                                    <a href="#">沙果</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-11">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>春季</h1>
                                <div class="a-box">
                                    <a href="#">风信子</a><span>|</span>
                                    <a href="#">栀子花</a><span>|</span>
                                    <a href="#">桃花</a><span>|</span>
                                    <a href="#">杜鹃花</a><span>|</span>
                                    <a href="#">月季</a><span>|</span>
                                    <a href="#">马蹄莲</a><span>|</span>
                                    <a href="#">康乃馨</a><span>|</span>
                                    <a href="#">迎春花</a><span>|</span>
                                    <a href="#">含笑</a><span>|</span>
                                    <a href="#">牡丹</a><span>|</span>
                                    <a href="#">郁金香</a><span>|</span>
                                    <a href="#">东京樱花</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>夏季</h1>
                                <div class="a-box">
                                    <a href="#">紫罗兰</a><span>|</span>
                                    <a href="#">茉莉花</a><span>|</span>
                                    <a href="#">桔梗</a><span>|</span>
                                    <a href="#">曼陀罗</a><span>|</span>
                                    <a href="#">鸡蛋花</a><span>|</span>
                                    <a href="#">睡莲</a><span>|</span>
                                    <a href="#">米兰花</a><span>|</span>
                                    <a href="#">向日葵</a><span>|</span>
                                    <a href="#">六月雪</a><span>|</span>
                                    <a href="#">荷花</a><span>|</span>
                                    <a href="#">紫薇花</a><span>|</span>
                                    <a href="#">石榴花</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>秋季</h1>
                                <div class="a-box">
                                    <a href="#">桂花</a><span>|</span>
                                    <a href="#">迷迭香</a><span>|</span>
                                    <a href="#">菊花</a><span>|</span>
                                    <a href="#">羊蹄甲</a><span>|</span>
                                    <a href="#">金花茶</a><span>|</span>
                                    <a href="#">木芙蓉</a><span>|</span>
                                    <a href="#">荷兰菊</a><span>|</span>
                                    <a href="#">石蒜</a><span>|</span>
                                    <a href="#">红花羊蹄甲</a><span>|</span>
                                    <a href="#">花烟草</a><span>|</span>
                                    <a href="#">大花蕙兰</a><span>|</span>
                                    <a href="#">番红花</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>冬季</h1>
                                <div class="a-box">
                                    <a href="#">梅花</a><span>|</span>
                                    <a href="#">山茶花</a><span>|</span>
                                    <a href="#">长寿花</a><span>|</span>
                                    <a href="#">虎刺梅</a><span>|</span>
                                    <a href="#">一品红</a><span>|</span>
                                    <a href="#">仙人指</a><span>|</span>
                                    <a href="#">鹿角海棠</a><span>|</span>
                                    <a href="#">水仙</a><span>|</span>
                                    <a href="#">铁兰</a><span>|</span>
                                    <a href="#">荷包花</a><span>|</span>
                                    <a href="#">蜡梅</a><span>|</span>
                                    <a href="#">鹤望兰</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-12">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>景天科</h1>
                                <div class="a-box">
                                    <a href="#">雅乐之舞</a><span>|</span>
                                    <a href="#">火祭</a><span>|</span>
                                    <a href="#">黄丽</a><span>|</span>
                                    <a href="#">桃美人</a><span>|</span>
                                    <a href="#">佛甲草</a><span>|</span>
                                    <a href="#">鹿角海棠</a><span>|</span>
                                    <a href="#">麒麟掌</a><span>|</span>
                                    <a href="#">姬星美人</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>仙人掌科</h1>
                                <div class="a-box">
                                    <a href="#">熊童子</a><span>|</span>
                                    <a href="#">金琥</a><span>|</span>
                                    <a href="#">星美人</a><span>|</span>
                                    <a href="#">令箭荷花</a><span>|</span>
                                    <a href="#">黑法师</a><span>|</span>
                                    <a href="#">玉扇</a><span>|</span>
                                    <a href="#">子持莲华</a><span>|</span>
                                    <a href="#">玉蝶</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>菊科</h1>
                                <div class="a-box">
                                    <a href="#">八宝景天</a><span>|</span>
                                    <a href="#">不夜城芦荟</a><span>|</span>
                                    <a href="#">八千代</a><span>|</span>
                                    <a href="#">宝草</a><span>|</span>
                                    <a href="#">垂盆草</a><span>|</span>
                                    <a href="#">珍珠吊兰</a><span>|</span>
                                    <a href="#">碧光环</a><span>|</span>
                                    <a href="#">乙女心</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>番杏科</h1>
                                <div class="a-box">
                                    <a href="#">假昙花</a><span>|</span>
                                    <a href="#">姬玉露</a><span>|</span>
                                    <a href="#">锦晃星</a><span>|</span>
                                    <a href="#">小球玫瑰</a><span>|</span>
                                    <a href="#">吉娃莲</a><span>|</span>
                                    <a href="#">冬美人</a><span>|</span>
                                    <a href="#">蓝石莲</a><span>|</span>
                                    <a href="#">紫珍珠</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-13">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>单质肥料</h1>
                                <div class="a-box">
                                    <a href="#">磷酸铵类肥料</a><span>|</span>
                                    <a href="#">大量元素水溶性肥料</a><span>|</span>
                                    <a href="#">中量元素肥料</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>复合肥</h1>
                                <div class="a-box">
                                    <a href="#">根瘤菌肥料</a><span>|</span>
                                    <a href="#">解磷微生物肥料</a><span>|</span>
                                    <a href="#">固氮菌类肥料固氮菌类肥料</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>完全肥料</h1>
                                <div class="a-box">
                                    <a href="#">多维场能浓缩有机肥</a><span>|</span>
                                    <a href="#">微生物肥料</a><span>|</span>
                                    <a href="#">真菌类肥料</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>液体肥料</h1>
                                <div class="a-box">
                                    <a href="#">多维场能浓缩有机肥</a><span>|</span>
                                    <a href="#">光合细菌肥料</a><span>|</span>
                                    <a href="#">放线菌肥料</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-14">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>园林剪刀</h1>
                                <div class="a-box">
                                    <a href="#">高枝剪</a><span>|</span>
                                    <a href="#">篱笆剪</a><span>|</span>
                                    <a href="#">剪枝剪</a><span>|</span>
                                    <a href="#">修枝剪</a><span>|</span>
                                    <a href="#">多用剪</a><span>|</span>
                                    <a href="#">摘果剪</a><span>|</span>
                                    <a href="#">剪花剪</a><span>|</span>
                                    <a href="#">剪草剪</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>花卉工具</h1>
                                <div class="a-box">
                                    <a href="#">花锹</a><span>|</span>
                                    <a href="#">花铲</a><span>|</span>
                                    <a href="#">花耙</a><span>|</span>
                                    <a href="#">花锄</a><span>|</span>
                                    <a href="#">花叉</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>园林花具</h1>
                                <div class="a-box">
                                    <a href="#">两头锄</a><span>|</span>
                                    <a href="#">两头花锄</a><span>|</span>
                                    <a href="#">平锄</a><span>|</span>
                                    <a href="#">平耙</a><span>|</span>
                                    <a href="#">齿花锄</a><span>|</span>
                                    <a href="#">三齿花耙</a><span>|</span>
                                    <a href="#">锄耙</a><span>|</span>
                                    <a href="#">锄镐</a><span>|</span>
                                    <a href="#">大花铲</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>小套花具</h1>
                                <div class="a-box">
                                    <a href="#">草坪修剪机</a><span>|</span>
                                    <a href="#">割灌割草机</a><span>|</span>
                                    <a href="#">绿篱修剪机</a><span>|</span>
                                    <a href="#">油锯</a><span>|</span>
                                    <a href="#">水泵</a><span>|</span>
                                    <a href="#">打孔机</a><span>|</span>
                                    <a href="#">起草皮机</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-14">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>园林剪刀</h1>
                                <div class="a-box">
                                    <a href="#">高枝剪</a><span>|</span>
                                    <a href="#">篱笆剪</a><span>|</span>
                                    <a href="#">剪枝剪</a><span>|</span>
                                    <a href="#">修枝剪</a><span>|</span>
                                    <a href="#">多用剪</a><span>|</span>
                                    <a href="#">摘果剪</a><span>|</span>
                                    <a href="#">剪花剪</a><span>|</span>
                                    <a href="#">剪草剪</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>花卉工具</h1>
                                <div class="a-box">
                                    <a href="#">花锹</a><span>|</span>
                                    <a href="#">花铲</a><span>|</span>
                                    <a href="#">花耙</a><span>|</span>
                                    <a href="#">花锄</a><span>|</span>
                                    <a href="#">花叉</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>园林花具</h1>
                                <div class="a-box">
                                    <a href="#">两头锄</a><span>|</span>
                                    <a href="#">两头花锄</a><span>|</span>
                                    <a href="#">平锄</a><span>|</span>
                                    <a href="#">平耙</a><span>|</span>
                                    <a href="#">齿花锄</a><span>|</span>
                                    <a href="#">三齿花耙</a><span>|</span>
                                    <a href="#">锄耙</a><span>|</span>
                                    <a href="#">锄镐</a><span>|</span>
                                    <a href="#">大花铲</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>小套花具</h1>
                                <div class="a-box">
                                    <a href="#">草坪修剪机</a><span>|</span>
                                    <a href="#">割灌割草机</a><span>|</span>
                                    <a href="#">绿篱修剪机</a><span>|</span>
                                    <a href="#">油锯</a><span>|</span>
                                    <a href="#">水泵</a><span>|</span>
                                    <a href="#">打孔机</a><span>|</span>
                                    <a href="#">起草皮机</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>                   
                    <li data-hidden="li" id="hiden-15">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>园林剪刀</h1>
                                <div class="a-box">
                                    <a href="#">高枝剪</a><span>|</span>
                                    <a href="#">篱笆剪</a><span>|</span>
                                    <a href="#">剪枝剪</a><span>|</span>
                                    <a href="#">修枝剪</a><span>|</span>
                                    <a href="#">多用剪</a><span>|</span>
                                    <a href="#">摘果剪</a><span>|</span>
                                    <a href="#">剪花剪</a><span>|</span>
                                    <a href="#">剪草剪</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>花卉工具</h1>
                                <div class="a-box">
                                    <a href="#">花锹</a><span>|</span>
                                    <a href="#">花铲</a><span>|</span>
                                    <a href="#">花耙</a><span>|</span>
                                    <a href="#">花锄</a><span>|</span>
                                    <a href="#">花叉</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>园林花具</h1>
                                <div class="a-box">
                                    <a href="#">两头锄</a><span>|</span>
                                    <a href="#">两头花锄</a><span>|</span>
                                    <a href="#">平锄</a><span>|</span>
                                    <a href="#">平耙</a><span>|</span>
                                    <a href="#">齿花锄</a><span>|</span>
                                    <a href="#">三齿花耙</a><span>|</span>
                                    <a href="#">锄耙</a><span>|</span>
                                    <a href="#">锄镐</a><span>|</span>
                                    <a href="#">大花铲</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>小套花具</h1>
                                <div class="a-box">
                                    <a href="#">草坪修剪机</a><span>|</span>
                                    <a href="#">割灌割草机</a><span>|</span>
                                    <a href="#">绿篱修剪机</a><span>|</span>
                                    <a href="#">油锯</a><span>|</span>
                                    <a href="#">水泵</a><span>|</span>
                                    <a href="#">打孔机</a><span>|</span>
                                    <a href="#">起草皮机</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                    <li data-hidden="li" id="hiden-16">
                        <div class="sub-nav-right">
                            <div class="cell-box">
                                <h1>胃毒剂</h1>
                                <div class="a-box">
                                    <a href="#">敌百虫</a><span>|</span>
                                    <a href="#">砷酸铅</a><span>|</span>
                                    <a href="#">砷酸钙</a><span>|</span>
                                    <a href="#">六六六</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>触杀剂</h1>
                                <div class="a-box">
                                    <a href="#">拟除虫菊酯</a><span>|</span>
                                    <a href="#">矿油乳剂</a><span>|</span>
                                    <a href="#">矿物油剂</a><span>|</span>
                                    <a href="#">惰性粉</a><span>|</span>
                                </div>
                            </div>                            
                        </div>
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>熏蒸剂</h1>
                                <div class="a-box">
                                    <a href="#">溴甲烷</a><span>|</span>
                                    <a href="#">滴滴涕</a><span>|</span>
                                    <a href="#">对硫磷</a><span>|</span>
                                    <a href="#">呋喃丹</a><span>|</span>
                                </div>
                            </div>
                            <div class="cell-box">
                                <h1>内吸杀虫剂</h1>
                                <div class="a-box">
                                    <a href="#">乐果</a><span>|</span>
                                    <a href="#">氰氢酸</a><span>|</span>
                                    <a href="#">拒食剂</a><span>|</span>
                                    <a href="#">氟硅酸钠</a><span>|</span>
                                </div>
                            </div>                           
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!--right-con-->
        <div class="right-con">
            <div class="nav">
                <a id="spe-a1" href="firstindex">狗狗</a>
                <a id="spe-a2" href="#">猫咪</a>
                <a id="spe-a3" href="#">小宠</a>
                <span class="line-a">|</span>
                <a href="#">绿植</a>
                <a href="#">花卉</a>
                <a href="#">苗木</a>
                <a href="#">多肉</a>
                <a href="#">肥料</a>
                <a href="#">工具</a>
                <a href="#">药剂</a>
                <img style="cursor: pointer; width: 115px; height: 40px;" src="img/ad.gif"/>
                <span class="keep-a" href="#"><a href="#">消费者保障</a></span>
            </div>
            <!--show-box-->
            <div class="show-box">
                <!--content-->
                <div class="content">
                    <ul class="imgBox">
                        <li><a href="#"><img src="img/timg.jpg" style="width: 100%;height: 100%;"></a></li>
                        <li><a href="#"><img src="img/timg1.jpg" style="width: 100%;height: 100%;"></a></li>
                        <li><a href="#"><img src="img/timg2.png" style="width: 100%;height: 100%;"></a></li>
                        <li><a href="#"><img src="img/timg1.png" style="width: 100%;height: 100%;"></a></li>
                        <li><a href="#"><img src="img/timg.png" style="width: 100%;height: 100%;"></a></li>
                    </ul>
                    <div class="currentNum">
                        <span class="imgNum mark-color"></span>
                        <span class="imgNum"></span>
                        <span class="imgNum"></span>
                        <span class="imgNum"></span>
                        <span class="imgNum"></span>
                    </div>
                    <div class="control to-left"><i class="fa fa-angle-left"></i></div>
                    <div class="control to-right"><i class="fa fa-angle-right"></i></div>
                </div>
               <a style="float: left" href="#"><img src="img/6.6.png" style="width: 200px;height: 280px;"/></a>
                <!--content-down-->
                <div class="content-down">
                    <ul class="imgBox1">
                        <li>
                            <a href="firstindex"><img src="img/101.png" style="width: 260px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/02.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/03.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/04.png" style="width: 250px;height: 125px;"/></a>
                        </li>
                        <li>
                            <a href="firstindex"><img src="img/101.png" style="width: 260px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/02.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/03.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/04.png" style="width: 250px;height: 125px;"/></a>
                        </li>
                        <li>
                            <a href="firstindex"><img src="img/101.png" style="width: 260px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/02.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/03.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/04.png" style="width: 250px;height: 125px;"/></a>
                        </li>
                        <li>
                            <a href="firstindex"><img src="img/101.png" style="width: 260px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/02.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/03.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/04.png" style="width: 250px;height: 125px;"/></a>
                        </li>
                        <li>
                            <a href="firstindex"><img src="img/101.png" style="width: 260px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/02.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/03.png" style="width: 250px;height: 125px;"/></a>
                            <a href="firstindex"><img src="img/04.png" style="width: 250px;height: 125px;"/></a>
                        </li>
                    </ul>
                    <div class="currentNum-down">
                        <span class="imgNum1 mark-color"></span>
                        <span class="imgNum1"></span>
                        <span class="imgNum1"></span>
                        <span class="imgNum1"></span>
                        <span class="imgNum1"></span>
                    </div>
                    <div class="control1 to-left1"><i class="fa fa-angle-left"></i></div>
                    <div class="control1 to-right1"><i class="fa fa-angle-right"></i></div>
                </div>
                <a style="float: left" href="#"><img src="img/15.png" style="width: 200px;height: 250px;"/></a>
            </div>
            <!--right-sidbar-->
            <div class="right-sidebar">
                <div class="info-box">
                    <ul class="tab-nav">
                        <li id="li-1" class="li-nav li-nav-hover li-border">公告</li>
                        <li id="li-2" class="li-nav">规则</li>
                        <li id="li-3" class="li-nav">论坛</li>
                        <li id="li-4" class="li-nav">安全</li>
                        <li style="border-right: none" id="li-5" class="li-nav">公益</li>
                    </ul>
                    <div id="box-1" style="display: block" class="hiddenBox">
                        <a href="#">震惊！悸沫花不開牛逼&nbsp; </a>
                        <a href="#">震惊！一班四组很牛逼</a>
                        <a href="#">55555，在聪明绝顶的路上遥遥领先？</a>
                    </div>
                    <div id="box-2" class="hiddenBox">

                        <a href="#">[重要] 淘点点规范</a>
                        <a href="#">[重要] 虚假交易新规&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        <a href="#">[重要] 新增认证规则</a>
                        <a href="#">[重要] 购买刀具实名</a>
                    </div>
                    <div id="box-3" class="hiddenBox">
                        <a href="#">[优化] 称谓滥用将整改</a>
                        <a href="#">[热点] 如何赢取新商机</a>
                        <a href="#">[话题] 同城交易避处罚</a>
                        <a href="#">[聚焦] 新消保法全解析</a>
                    </div>
                    <div id="box-4" class="hiddenBox">

                        <a href="#">个人重要信息要管牢！</a>
                        <a href="#">卖家防范红包欺诈提醒</a>
                        <a href="#">更换收货地址的陷阱！</a>
                        <a href="#">注意骗子的技术升级了</a>
                    </div>
                    <div id="box-5" class="hiddenBox">
                        <a href="#">[优化] 称谓滥用将整改</a>
                        <a href="#">[热点] 如何赢取新商机</a>
                        <a href="#">[话题] 同城交易避处罚</a>
                        <a href="#">[聚焦] 新消保法全解析</a>
                    </div>
                </div>
                <!--user-info-->
                <div class="user-info">
                    <div class="gold-top">
                        <img width="62px" height="62px" src="img/user-head.jpg" />
                        <div class="inner-user">
                            <h3><%=currentmember.get("loginname")%></h3>
                            <a class="get-gold" href="#"><span class="glods"></span><span class="get-money">领淘金币抵钱</span></a>
                            <a class="vip-home" href="#">会员俱乐部</a>
                        </div>
                    </div>
                    <!--login-->
                    <div class="login">
                        <a class="login-btn" href="uilogin.jsp"><i class="fa fa-user fa-user-loc"></i>退出</a>
                        <a class="login-btn free" href="reg.jsp">免费注册</a>
                        <a class="login-btn free" href="#">免费开店</a>
                    </div>
                </div>
                <!--service-->
                <div class="service">
                    <h3>便民服务</h3>
                    <div id="service-1" class="service-cell service-z">
                        <h5 class="service-i"><img src="img/phone.png" /></h5>
                        <h6>话费</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div id="service-2" class="service-cell service-z">
                        <h5 class="service-i"><img src="img/game.png" /></h5>
                        <h6>游戏</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div id="service-3" class="service-cell service-z">
                        <h5 class="service-i"><img src="img/plane.png" /></h5>
                        <h6>旅行</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div id="service-4" class="service-cell service-z">
                        <h5 class="service-i"><img src="img/save.png" /></h5>
                        <h6>保险</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/18.png" /></h5>
                        <h6>彩票</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/move.png" /></h5>
                        <h6>电影</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/eat.png" /></h5>
                        <h6>点外卖</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/money.png" /></h5>
                        <h6>理财</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/book.png" /></h5>
                        <h6>电子书</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/miusc.png" /></h5>
                        <h6>音乐</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/bag.png" /></h5>
                        <h6>水电煤</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="img/....png" /></h5>
                        <h6>请期待</h6>
                    </div>
                </div>
                <!--service-box-->
                <div id="service-box-1" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
                <div id="service-box-2" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
                <div id="service-box-3" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
                <div id="service-box-4" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--main-->
    <div class="sub-nav">
        <input type="button" class="more-btn" value="更多"/>
        <!--sub-nav-cell-->
        <div class="sub-nav-cell">
            <h3 class="orange">主题市场</h3>
            <ul class="sub-nav-box">
                <li><a href="firstindex">哈士奇</a></li>
                <li><a href="firstindex">萨摩耶</a></li>
                <li><a href="firstindex">贵宾犬</a></li>
                <li><a href="firstindex">吉娃娃</a></li>
                <li><a href="firstindex">博美犬</a></li>
                <li><a href="firstindex">龙猫</a></li>
                <li><a href="firstindex">布偶猫</a></li>
                <li><a href="firstindex">波斯猫</a></li>
                <li><a href="firstindex">缅因猫</a></li>
                <li><a href="firstindex">埃及猫</a></li>
                <li><a href="firstindex">松狮</a></li>
                <li><a href="firstindex">藏獒</a></li>
                <li><a href="firstindex">牧羊犬</a></li>
            </ul>
        </div>
        <div class="sub-nav-cell">
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
        <div class="sub-nav-cell">
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
    <!--main-->
    <div class="main">
        <div class="main-left">
            <div class="main-title">
                <h1>万能的COSY<span class="show-title">下面有特色市场等你来逛哦！</span></h1>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">藏獒</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/show10.png" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">像它一样威武</a></h1>
                        <span>优雅的武士</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/show11.png" style="width: 70px; height: 70px;"/>
                                <p>小藏獒</p>
                            </a>
                            <a href="#">
                                <img src="img/show12.png" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">加菲猫</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/show14.png" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">像它一样呆萌</a></h1>
                        <span>优雅的绅士</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/show13.png" style="width: 70px; height: 70px;"/>
                                <p>毛色</p>
                            </a>
                            <a href="#">
                                <img src="img/show15.png" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">长耳兔</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/show16.png" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">静默的守候</a></h1>
                        <span>温柔的女士</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/show17.png" style="width: 70px; height: 70px;"/>
                                <p>驯养</p>
                            </a>
                            <a href="#">
                                <img src="img/show18.png" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">绿巨人</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/show19.png" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">斑斓的色彩</a></h1>
                        <span>无限自由</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/show20.png" style="width: 70px; height: 70px;"/>
                                <p>水族</p>
                            </a>
                            <a href="#">
                                <img src="img/show21.png" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">虎皮鹦鹉</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/show22.png" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">空中的色彩</a></h1>
                        <span>自由的飞翔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/show23.png" style="width: 70px; height: 70px;"/>
                                <p>飞翔</p>
                            </a>
                            <a href="#">
                                <img src="img/show24.png" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">风信子</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/show25.png" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">在紫色的海洋</a></h1>
                        <span>清新</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/show26.png" style="width: 70px; height: 70px;"/>
                                <p>种植</p>
                            </a>
                            <a href="#">
                                <img src="img/show27.png" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">生态鱼缸</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/yugang.jpg" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">原生态</a></h1>
                        <span>绿色美化</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/yugang1.jpg" style="width: 70px; height: 70px;"/>
                                <p>小藏獒</p>
                            </a>
                            <a href="#">
                                <img src="img/yugang2.jpg" style="width: 70px; height: 70px;"/>
                                <p>家养</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">宠物笼</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/goulong.jpg" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">结实好用</a></h1>
                        <span>大气</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/goulong1.jpg" style="width: 70px; height: 70px;"/>
                                <p>狗狗</p>
                            </a>
                            <a href="#">
                                <img src="img/goulong2.jpg" style="width: 70px; height: 70px;"/>
                                <p>宠物</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">狗粮</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/gouliang.jpg" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">精致的狗粮</a></h1>
                        <span>好吃不贵价格实惠</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/gouliang1.jpg" style="width: 70px; height: 70px;"/>
                                <p>精致</p>
                            </a>
                            <a href="#">
                                <img src="img/gouliang2.jpg" style="width: 70px; height: 70px;"/>
                                <p>实惠</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">花铲</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="img/huachan2.jpg" style="width: 168px; height: 130px;"/>
                        <h1><a href="#">盆栽利器</a></h1>
                        <span>很牛逼的哦</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="img/huachan1.jpg" style="width: 70px; height: 70px;"/>
                                <p>金属</p>
                            </a>
                            <a href="#">
                                <img src="img/huachan.jpg" style="width: 70px; height: 70px;"/>
                                <p>家用</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">攻略</a></td>
                                <td><a href="#">技巧</a></td>
                            </tr>
                            <tr><td><a href="#">喜好</a></td>
                                <td><a href="#">习性</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-right">
            <div class="time-go">
                <div class="time-cell">
                    <h1><a href="#" class="text_shadow">我收藏的店铺上新</a><span class="now-news">更新<span class="">3</span></span></h1>
                    <div class="inner-show">
                        <a href="#">
                            <img src="img/inner10.png" style="width: 99px; height: 100px;">
                            <p class="price-info">墨西哥金背</p>
                        </a>
                        <a href="#">
                            <img src="img/inner11.png" style="width: 99px; height: 100px;">
                            <p>巴西巨人金毛</p>
                        </a>
                        <a href="#">
                            <img src="img/inner12.png" style="width: 99px; height: 100px;">
                            <p>泰国金属蓝</p>
                        </a>
                        <h3><a href="$">更多店铺上新</a><i class="fa fa-angle-right"></i></h3>
                    </div>
                </div>
                <div class="time-cell">
                    <h1><a href="#" class="text_shadow">你可能新欢的店铺推荐</a></h1>
                    <div class="inner-show">
                        <a href="#">
                            <img src="img/inner13.png"  style="width: 99px; height: 100px;">
                            <p class="price-info">黄金蟒</p>
                        </a>
                        <a href="#">
                            <img src="img/inner14.png"  style="width: 99px; height: 100px;">
                            <p>缅甸蟒</p>
                        </a>
                        <a href="#">
                            <img src="img/inner15.png" style="width: 99px; height: 100px;">
                            <p>黑眉锦蛇</p>
                        </a>
                        <h3><a href="$">更多店铺上新</a><i class="fa fa-angle-right"></i></h3>
                    </div>
                </div>
                <div class="time-cell">
                    <h1><a href="#" class="text_shadow">我的足迹</a></h1>
                    <div class="inner-show">
                        <a href="#">
                            <img src="img/inner16.png" style="width: 99px; height: 100px;">
                            <p class="price-info">霸王角蛙</p>
                        </a>
                        <a href="#">
                            <img src="img/inner17.png" style="width: 99px; height: 100px;">
                            <p>帝王蟹</p>
                        </a>
                        <a href="#">
                            <img src="img/inner18.png" style="width: 99px; height: 100px;">
                            <p>金钱龟</p>
                        </a>
                        <h3><a href="#">更多店铺上新</a><i class="fa fa-angle-right"></i></h3>
                    </div>
                </div>
                <!--goto-see-->
                <h1 class="goto-see text_shadow">cosy动态<a href="#">去广场看看</a></h1>
                <!--dynamic动态-->
                <div class="dynamic">
                    <h3 class="text_shadow">宠物美妆<span>12-09 10:00</span><span class="follow">√&nbsp;<a href="#">已关注</a>&nbsp;|&nbsp;<a href="#">取消</a></span></h3>
                    <p>【美妆课堂】你不知道的宠物美妆真相... <a href="#" style="color: #5684bc;">查看全文</a></p>
                    <a href="#"><img width="80px" height="80px" src="img/beining.jpg"></a>
                    <a href="#"><img width="80px" height="80px" src="img/caiquan.jpg"></a>
                    <a href="#"><img width="80px" height="80px" src="img/maer.jpg"></a>
                    <h6><a href="#">评论(196)</a></h6>
                    <h4><a href="#">更多动态&nbsp;</a><i class="fa fa-angle-right"></i></h4>
                    <div class="arrow"></div>
                </div>
                <div class="dynamic">
                    <h3 class="text_shadow">植物美妆<span>12-09 10:00</span><span class="follow">√&nbsp;<a href="#">已关注</a>&nbsp;|&nbsp;<a href="#">取消</a></span></h3>
                    <p>【美妆课堂】家中一盆栽，清新更自在... <a href="#" style="color: #5684bc;">查看全文</a></p>
                    <a href="#"><img width="80px" height="80px" src="img/show25.png"></a>
                    <a href="#"><img width="80px" height="80px" src="img/show26.png"></a>
                    <a href="#"><img width="80px" height="80px" src="img/show27.png"></a>
                    <h6><a href="#">评论(266)</a></h6>
                    <h4><a href="#">更多动态&nbsp;</a><i class="fa fa-angle-right"></i></h4>
                    <div class="arrow"></div>
                </div>
                <div class="dynamic">
                    <h3 class="text_shadow">宠物生活<span>12-09 10:00</span><span class="follow">√&nbsp;<a href="#">已关注</a>&nbsp;|&nbsp;<a href="#">取消</a></span></h3>
                    <p>【生活课堂】宠物陪伴，不会再孤单... <a href="#" style="color: #5684bc;">查看全文</a></p>
                    <a href="#"><img width="80px" height="80px" src="img/dongwu.png"></a>
                    <a href="#"><img width="80px" height="80px" src="img/dongwu2.png"></a>
                    <a href="#"><img width="80px" height="80px" src="img/dongwu1.png"></a>
                    <h6><a href="#">评论(119)</a></h6>
                    <h4><a href="#">更多动态&nbsp;</a><i class="fa fa-angle-right"></i></h4>
                    <div class="arrow"></div>
                </div>
                <!--circle-big-->
                <div class="circle-new">新</div>
                <div class="circle-go">逛</div>
                <!--time-circle-->
                <div class="time-circle"></div>
                <div class="time-circle bottom-circle"></div>
                <div class="time-circle bottom-circle1"></div>
            </div>
            <!--fix-right-->
            <div class="fix-right-sub">
                <!--gogo-choose-->
                
                <!--last-->

            </div>

        </div>
    </div>
    <!--main-bottom-->

    <!--ad-->
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
    <div class="mui-mbar-tabs">
	<div class="quick_link_mian">
		<div class="quick_links_panel">
			<div id="quick_links" class="quick_links">
				<li>
					<a href="#" class="my_qlinks"><i class="setting"></i></a>
					<div class="ibar_login_box status_login">
						<div class="avatar_box">
							<p class="avatar_imgbox"><img src="images/no-img_mid_.jpg" /></p>
							<ul class="user_info">
								<li>用户名：sl19931003</li>
								<li>级&nbsp;别：普通会员</li>
							</ul>
						</div>
						<div class="login_btnbox">
							<a href="#" class="login_order">我的订单</a>
							<a href="#" class="login_favorite">我的收藏</a>
						</div>
						<i class="icon_arrow_white"></i>
					</div>
				</li>
				<li id="shopCart">
					<a href="uiaddtocar" class="message_list" ><i class="message"></i><div class="span">购物车</div><span class="cart_num">0</span></a>
				</li>
				<li>
					<a href="#" class="history_list"><i class="view"></i></a>
					<div class="mp_tooltip" style=" visibility:hidden;">我的资产<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#" class="mpbtn_histroy"><i class="zuji"></i></a>
					<div class="mp_tooltip">我的足迹<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#" class="mpbtn_wdsc"><i class="wdsc"></i></a>
					<div class="mp_tooltip">我的收藏<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#" class="mpbtn_recharge"><i class="chongzhi"></i></a>
					<div class="mp_tooltip">我要充值<i class="icon_arrow_right_black"></i></div>
				</li>
			</div>
			<div class="quick_toggle">
				<li>
					<a href="#"><i class="kfzx"></i></a>
					<div class="mp_tooltip">客服中心<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#none"><i class="mpbtn_qrcode"></i></a>
					<div class="mp_qrcode" style="display:none;"><img src="images/weixin_code_145.png" width="148" height="175" /><i class="icon_arrow_white"></i></div>
				</li>
				<li><a href="#top" class="return_top"><i class="top"></i></a></li>
			</div>
		</div>
		<div id="quick_links_pop" class="quick_links_pop hide"></div>
	</div>
</div>
    
    <script src="js/jquery_1.9.js"></script>
    <script src="js/main.js"></script>
    <script src="js/img-show.js"></script>


</body>
</html>