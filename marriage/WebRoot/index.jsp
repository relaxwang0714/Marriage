<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <link rel="shortcut icon" href="img/favicon.ico" />
		<title>小凤梨法律咨询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/index.css"/>
	<link rel="stylesheet" type="text/css" href="css/back_top.css"/>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/top.js"></script>
		<script type="text/javascript">
			$(function() {
				var a=$('#top .top_right .input1').val();
				if(a==""){
					$('#top .top_right .tr_2').hide();
					$('#top .top_right .tr_1').show();
					$('#top .top_right .input1').hide();
				}else{
					$('#top .top_right .tr_1').hide();
					$('#top .top_right .tr_2').show();
					$('#top .top_right .input1').hide();
				}
				
			});
		</script>
	
  </head>
  
  <body>
    <!--最顶部-->
		<div id="head">
			
		</div>
		
		<!--顶部-->
		<div id="top">
			
			<!--logo站名-->
			<div class="top_left">
				<img src="img/logo f6.png" />
			</div>
			
			<!--导航栏-->
			<div class="top_right">
					<span class="tr_1">|&nbsp;<a href="index.jsp">首页</a>&nbsp;
						|&nbsp;<a href="login.jsp">登录</a>&nbsp;
						|&nbsp;<a href="register.html">注册</a>&nbsp;|
					</span>
					<span class="tr_2">
						 
						欢迎你，<a href="edit_userinfo.jsp?id=${id}"><strong>${username}</strong></a>
						<a href="logout">退出登陆</a>
					</span>
					<input type="button" name="input1" value="${username}" class="input1"/>
			</div>
		</div>
		
		<!--展示栏-->
		<div id="show">
			<!--<img src="img/bg.png"/>-->
			<div class="s_center">
				<div class="div1"><div class="d1">律兜婚姻<br />在线智能咨詢</div></div>
				<div class="div2"><div class="d2">捍卫你的权利&nbsp;&nbsp;保障你的利益</div></div>
				<a href="ic.jsp">
					<div class="ic">
						立即查询
						<div class="ic_1"></div>
					</div>
				</a>
			</div>
			<!--二维码-->
			<!--<div class="saosao">
				
			</div>-->
		</div>
		<div style="width: 100%;height: 10px;background-color: #403F40;"></div>
		
		<!--咨询平台-->
		<div id="consult">
			
			<div class="title_1">
				<img src="img/title_1.gif"/>
			</div>
			<p></p>
			
			<div class="con">
				<a href="di.jsp">
					<img src="img/di.gif" class="pic1"/>
				</a>
				<div class="scon2">文书查询</div>
			</div>
			
			<div class="fcon">
				<a href="ic.jsp">
					<img src="img/ic.gif" class="fpic1"/>
				</a>
				<div class="fscon2">智能咨询</div>
			</div>
			
			<div class="con">
				<a href="articleConsulting.jsp">
					<img src="img/articleConsulting.gif" class="pic1"/>
				</a>
				<div class="scon2">法条查询</div>
			</div>
		</div>
		
		<!--婚姻新闻-->
		<div id="news">
			
			<div class="title_2"><img src="img/title_2.jpg" style="width: 680px;"/></div>
			<div class="news_title">
				新闻栏
			</div>
			<div class="title_3"><img src="img/title_3.jpg" style="width: 637px;"/></div>
			
			<!--婚姻新闻展示栏-->
			<div class="news_show">
				<div class="ns_pic">
					<img src="img/logo_3.jpg" />
				</div>
				<div class="ns_con">
					<a href="#">
					我国《婚姻法》第四十七条规定：“离婚时，一方隐藏、转移、变卖、毁损夫妻共同财产，
					或伪造债务企图侵占另一方财产的，分割夫妻共同财产时，对隐藏、转移、变卖、毁损夫
					妻共同财产或伪造债务的一方，可以少分或不分。离婚后，另一方发现有上述行为的，可以
					向人民法院提起诉讼，请求再次分割夫妻共同财产。”...
					</a>
				</div>
				<div class="ns_pic">
					<img src="img/logo_4.jpg" />
				</div>
				<div class="ns_con">
					<a href="#">
					最高人民法院公报：精神病人伤害了配偶，配偶提起损害赔偿诉讼的，法院是否支持？
					妻同为一体，家暴是法律明文禁止的，但若是配偶不具有刑事责任能力，伤害了另一方，
					另一方提起损害赔偿诉讼的，法院是不予支持的,但不意味着配偶可以随意伤害对方《中
					华人民法...
					</a>
				</div>
				
			</div>
			
			<!--更多婚姻新闻-->
				<div class="n_bottom_left">
						<hr style="width: 1290px;height:1px;border:none;border-top: 2px solid gainsboro;" />
				</div>
			
				<div class="n_bottom_right">
					<a href="news.html" target="_blank"><div class="more">MORE>></div></a>
				</div>
			
		</div>
    <!--底部开发者信息-->
		<div id="f">
		<div id="foot">
			<div class="footer">
				<div class="foot_left">
					<div class="fi"><div class="fi_pic"><img src="img/foot_1.png"></div></div>
					<div class="fi"><div class="fi_pic"><img src="img/foot_2.png"></div></div>
					<div class="fi"><div class="fi_pic"><img src="img/foot_3.png"></div></div>
				</div>
				<div class="foot_middle">
					<div class="font_1">公司地址:&nbsp;无锡梁溪区新惠路18号</div>
					<div class="font_1">客服电话:&nbsp;4008591580</div>
					<div class="font_1"><pre>邮箱: hr@ilvdo.com  新浪微博: @ 律兜</pre></div>
				</div>
				<div class="font_2">
					<pre>		COPYRIGHT © 2009-2017 ilvdo.com, All Rights Reserved 苏ICP备12060410号-1  经营许可证编号：苏B2-20162058</pre>
				</div>
			</div>
		</div>
		<div id="fr">
				<div class="fr_pic">
					<img src="img/foot_4.png"><br />
					<center><span class="fr_font">律兜</span></center>
				</div>
		</div>
		<div id="body_bottom">
			<ul>
				<li class="shouye">首页</li>
				<li>关于我们</li>
				<li>网页版</li>
				<li>企业版</li>
				<li>新闻中心</li>
			</ul>
		</div>
		</div>
		<div class="floating_ck">
			<dl>
		    	<dt></dt>
		        <dd class="qrcord">
		        	<span>扫一扫</span>
		            <div class="floating_left floating_ewm">
		            	<i></i>
		                <p class="qrcord_p01">扫一扫<br>律兜咨询</p>
		                <p class="qrcord_p02">全国服务热线<br><b>4008591580<b></p>
		            </div>
		        </dd>
		        <dd class="return">
		        	<span onClick="gotoTop();return false;">返回顶部</span>
		        </dd>
		    </dl>
		</div>
  </body>
</html>
