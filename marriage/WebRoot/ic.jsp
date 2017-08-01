<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="img/favicon.ico" />
		<title>智能查询</title>
		<link rel="stylesheet" type="text/css" href="css/top.css"/>
		<link rel="stylesheet" type="text/css" href="css/ic.css"/>
		<link rel="stylesheet" href="css/zebra_tooltips.css" type="text/css">
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/ic.js" ></script>
		<script src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/zebra_tooltips.js"></script>
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
			$(document).ready(function() {
					new $.Zebra_Tooltips($('.zebra_tips1'));
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
				法兜婚姻
			</div>
			
			<!--导航栏-->
			<div class="top_right">
					<span class="tr_1">|&nbsp;<a href="index.jsp">首页</a>&nbsp;
						|&nbsp;<a href="login.jsp">登录</a>&nbsp;
						|&nbsp;<a href="register.html">注册</a>&nbsp;|
					</span>
					<span class="tr_2">
						 |&nbsp;<a href="index.jsp">首页</a>&nbsp;|
						欢迎你，<a href="edit_userinfo.jsp?id=6" class="zebra_tips1" title="点击查看/修改个人资料"><strong>${username}</strong></a>
						<a href="logout">退出登录</a>
					</span>
					<input type="button" name="input1" value="${username}" class="input1"/>
			</div>
		</div>
		
		<!--<hr style="border: 1px solid black;"/>-->
		
		<!--智能查询框-->
		<div id="ic">
		<div id="icf">
			
			<!--标题栏-->
			<div class="icf_nav">
				&nbsp;&nbsp;智能查询
			</div>
			
			<div id="ic_1">
			<!--高级选项-->
			<div class="ao">
				<p>嗨！您好，我是机器人，欢迎使用智能婚姻咨询系统,为您提供的智能咨询服务。</p>
				<p>我为您提供了下列关键字：</p>
				<div class="ao_select">高级选项 <div class="ao_select_1"></div></div>
			</div>
			
			<!--高级选项隐藏框-->
			<form>
			<table cellspacing="13px" cellpadding="0px" class="aohb">
				<tr>
					<td>
						法院层级:&nbsp;
						<select id="ch">
							<option value="">全部</option>
							<option value="最高法院">最高法院</option>
							<option value="高级法院">高级法院</option>
							<option value="中级法院">中级法院</option>
							<option value="基层法院">基层法院</option>
						</select>
					</td>
					<td>
						文书类型:&nbsp;
						<select id="dt">
							<option value="">全部</option>
							<option value="判决书">判决书</option>
							<option value="裁定书">裁定书</option>
							<option value="调解书">调解书</option>
							<option value="决定书">决定书</option>
							<option value="通知书">通知书</option>
							<option value="批复">批复</option>
							<option value="答复">答复</option>
							<option value="涵">涵</option>
							<option value="其他">其他</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<input class="input_1" type="text" placeholder="法院名称" name="noc"/>
					</td>
					<td>
						<input class="input_2" type="text" placeholder="裁判日期-格式：如2017-03-01" name="rd"/>
					</td>
				</tr>
				<tr>
					<td><input class="sure" type="button" value="确定" onclick="print()"/></td>
					<td><input class="reset" type="button" value="重置"/></td>
				</tr>
			</table>
			</form>
			
			<!--高级选项展示栏-->
			<div id="ao_show">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您想咨询的是：
				<span id="as"></span>
			</div>
			
			<!--咨询按钮-->
			<!--婚姻家庭纠纷类-->
			<form>
			<div class="title">•婚姻家庭纠纷类</div>
			<div class="ab">
				<div class="ab_button"><button><a href="talk.jsp?name=婚约财产纠纷&number=1" target="_blank">婚约财产纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.jsp?name=离婚纠纷&number=2" target="_blank">离婚纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">离婚后财产纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">离婚后损害财产纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">离婚后损害责任纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">婚约无效纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">撤销婚约纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">夫妻财产约定纠纷</a></button></div>
				<div class="ab_buttons"><button><a href="talk.html">同居关系纠纷+</a></button>
				
					<!--隐藏二级菜单栏-->
					<div class="two_show_1">
						<div class="ab_button1"><button><a href="talk.html">同居关系析产纠纷</a></button></div>
						<div class="ab_button1"><button><a href="talk.jsp?name=同居关系子女抚养纠纷&number=9.2" target="_blank">同居关系子女抚养纠纷</a></button></div>
					</div>
				</div>
				
				<div class="ab_buttons"><button><a href="talk.html">抚养纠纷+</a></button>
					<!--隐藏二级菜单栏-->
					<div class="two_show_2">
						<div class="ab_button2"><button><a href="talk.html">抚养费纠纷</a></button></div>
						<div class="ab_button2"><button><a href="talk.html">变更抚养关系纠纷</a></button></div>
					</div>
				</div>
				
				<div class="ab_buttons"><button><a href="talk.html">赡养纠纷+</a></button>
					<!--隐藏二级菜单栏-->
					<div class="two_show_3">
						<div class="ab_button3"><button><a href="talk.html">赡养费纠纷</a></button></div>
						<div class="ab_button3"><button><a href="talk.html">变更赡养关系纠纷</a></button></div>
					</div>
				</div>
				
				<div class="ab_buttons"><button><a href="talk.html">收养关系纠纷+</a></button>
					<!--隐藏二级菜单栏-->
					<div class="two_show_4">
						<div class="ab_button4"><button><a href="talk.html">确认收养关系纠纷</a></button></div>
						<div class="ab_button4"><button><a href="talk.html">解除收养关系纠纷</a></button></div>
					</div>
				</div>
				<div class="ab_button"><button><a href="talk.html">监护权纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">探望权纠纷</a></button></div>
				<div class="ab_button"><button><a href="talk.html">分家析产纠纷</a></button></div>
				
			</div>
			
			<!--继承纠纷类-->
			<div class="title">•继承纠纷类</div>
			<div class="sd">
				<div class="sd_buttons"><button><a href="talk.html">法定继承纠纷+</a></button>
					<!--隐藏二级菜单栏-->
					<div class="two_show_1">
						<div class="sd_button1"><button><a href="talk.html">同居关系析产纠纷</a></button></div>
						<div class="sd_button1"><button><a href="talk.jsp">同居关系子女抚养纠纷</a></button></div>
					</div>
				</div>
				<div class="sd_button"><button><a href="talk.html">遗嘱继承纠纷</a></button></div>
				<div class="sd_button"><button><a href="talk.html">被继承人债务清偿纠纷</a></button></div>
				<div class="sd_button"><button><a href="talk.html">遗赠纠纷</a></button></div>
				<div class="sd_button"><button><a href="talk.html">遗赠扶养协议纠纷</a></button></div>
				
			</div>
			</form>
			</div>
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
	</body>
</html>