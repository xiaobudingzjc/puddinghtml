<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>pudding</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrit="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!--<link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css" />-->
		<link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/less/modals.less" />
		<script type="text/javascript" src="../lib/jquery/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="../lib/bootstrap/js/bootstrap.js"></script>
<!--	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
	<!--升级使用外部资源，节约个人网站带宽-->
	<!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>-->
	<script type="text/javascript" src="../js/welcome.js">
		/*各组件根据打开窗口大小  初始化响应一次*/
	//	baseOnWindowSizeToChange();
		
		/*窗口宽度高度发生变化时，触发各组件响应函数*/
		$(window).resize(
			function() {
				baseOnWindowSizeToChange();
			}
		);
		
		
	</script>
 	<script >
 	$(document).ready(function()
 			{
 				$("#register1").find("form").submit(function(e)
 				{
 					e.preventDefault();
 					var json={}
 					var username=$(this).find("#username");
 					if(username.val()=="")
 					{
 						username.focus();
 						return;
 					}
 					else
 						json["username"]=username.val();
 					var password=$(this).find("#password");
 					if(password.val()=="")
 					{
 						password.focus();
 						return;
 					}
 					else
 						json["password"]=password.val();
 					var password1=$(this).find("#password1");
 					
 					if(password1.val()=="")
 					{
 						password1.focus();
 						return;
 					}
 					else
 						json["password1"]=password1.val();
 					if(json["password1"]!=json["password"])
 					{
 						alert("两次输入密码不一致，请重新输入！");
 						return;
 					}
 					var email=$(this).find("#email");
 					if(email.val()=="")
 					{
 						email.focus();
 						return;
 					}
 					else
 						json["email"]=email.val();
 					
 					if(confirm("提交后不可修改，请确认是否提交"))
 					{
 						console.log(json);
 						$.post("../js/register.jsp",json);
 						alert("注册成功");
 						location.reload();
 						
 					}
 					});
 				
 				
 				
 				
 				$("#login1").find("form").submit(function(e)
 		 				{
 		 					e.preventDefault();
 		 					var json={}
 		 					var loginid=$(this).find("#loginid");
 		 					
 		 					if(loginid.val()=="")
 		 					{
 		 						loginid.focus();
 		 						return;
 		 					}
 		 					else
 		 						json["loginid"]=loginid.val();
 		 					var loginpassword=$(this).find("#loginpassword");
 		 					if(loginpassword.val()=="")
 		 					{
 		 						loginpassword.focus();
 		 						return;
 		 					}
 		 					else
 		 						json["loginpassword"]=loginpassword.val();
 		 					
 		 				if(confirm("确认信息无误？"))
 		 					{
 		 						console.log(json);
 		 						$.post("../js/login.jsp",json);
 		 						location.reload();
 		 					}
 		 				});
 				
 					
 				
 				
 					
 			});
 	
 	

	</script>
	</head>
	<style>
		.row {
			background-color: #95c4f94d;
			margin: auto 10%;
			border-width: 0 0 0 0;
			box-shadow: #080a0ecc 0px 0px 20px 3px;
			border-radius: 35px 35px 35px 35px;
		}
		/*a链接 在被选中和点击时  的字体颜色，粗度，大小*/
		
		a {
			color: #FFFFFFB3;
			font-weight: bolder;
			text-align: center;
			font-size: 18px;
		}
		
		a:hover {
			color: #FFFFFF;
			text-decoration-line: none;
			font-size: 16px;
		}
		
		a:hover,
		a:focus {
			color: #50ab9bcc;
		}
		/* body相关属性 */
		
		body {
			
			no-repeat;
			list-style: none;
			/*去掉ui和li的 点*/
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
			background-attachment: fixed;
			background-position: center bottom;
			color: #fff;
			background-color: #333;
			font-family: 'microsoft yahei', Arial, sans-serif;
		}
		
		#title {
			width: auto;
			text-align: center;
			font-size: 140px;
			margin-top: 200px;
			transition: font-size 2s;
		}
		#title2 {
			width: auto;
			text-align: center;
			font-size: 50px;
			margin-top: 0px;
			transition: font-size 2s;
		}
		
		#title:hover {
			font-size: 148px;
		}
		
		.aTopAndBottom {
			height: auto;
			text-align: center;
			padding: 10px 0px;
			min-width: 20px;
		}
		
		.netease_Player {
			position: absolute;
			display: none;
		}
		
		.dropdown-menu>li>a:hover,
		.dropdown-menu>li>a:focus {
			color: #fff !important;
			background-color: #fff0 !important;
			font-size: 19px;
		}
		
		.dropup .dropdown-menu {
			background-color: #fff0 !important;
			text-decoration: none;
			margin-bottom: 10px;
			border: 0px;
			border-radius: 16px 16px 0px 0px;
			box-shadow: none;
			margin-bottom: 14px;
		}
		
		.dropdown-menu>li>a {
			color: #fff;
			padding: 12px;
			font-weight: bolder;
		}
		
		.navbar {
			min-height: 46px;
		}
		/*登录框  最大宽度 与上边距 重构*/
		
		.modal-dialog {
			width: 350px;
			margin: 60px auto;
		}
		/*登录框 背景颜色与透明度，边框线粗度，边框弧度，边框阴影 重写*/
		
		.modal-content {
			background-color: #afd2ff66;
			border: 0px solid rgba(0, 0, 0, .2);
			border-radius: 31px;
			box-shadow: 0px 0px 40px 21px rgba(131, 151, 201, 0.5);
			-webkit-box-shadow: 0px 0px 40px 21px rgba(131, 151, 201, 0.5);
			box-shadow: 0px 0px 40px 21px rgba(131, 151, 201, 0.5);
		}
		/* 登录框位置重写 */
		
		.modal-body {
			position: relative;
			padding: 10px 34px;
		}
		/*输入框 背景颜色与透明度重构*/
		
		.form-control {
			background-color: #fffc;
		}
	</style>

	<body background="../img/mainPageImg.jpg" >
		<!-- 顶部半透明容器 -->
		<div class="navbar navbar-fixed-top row">
			<div class="col-xs-1 aTopAndBottom ">
				<a href="../pudding'shome.html"><span class="glyphicon glyphicon-home "></span></a>
			</div>
			<!--登录按钮-->
			<div class="col-xs-1 col-xs-offset-9 aTopAndBottom">
				<a href="" data-toggle="modal" data-target="#login">
					<span class="glyphicon glyphicon-log-in"></span>
					<span id="loginText">登录</span>
				</a>
			</div>
			<!--注册按钮-->
			<div class="col-xs-1 aTopAndBottom">
				<a href="" data-toggle="modal" data-target="#register">
					<span class="glyphicon glyphicon-user"></span>
					<span id="registText">注册</span>
				</a>
			</div>
		</div>
		<!-- 中部容器 -->
		<div class="container">
			<div class="main">
				<h1 id="title">hello world!</h1>
				<h6 id="title2">欢迎来到小布丁的主页</h6> 
			</div>
		</div>
		
		<!-- 外部网易云音乐 插件-->
		<iframe class="netease_Player" frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=300 src="http://music.163.com/m/playlist?id=409889637&userid=296172713">
		</iframe>
		<!-- 底部半透明容器：四选项 -->
		<div class="navbar navbar-fixed-bottom row">
			<!-- 学习分类 -->
			<div class="col-xs-3 aTopAndBottom bottomSelect">
				<a href="http://www.runoob.com/bootstrap/bootstrap-tutorial.html">
					<span class="glyphicon glyphicon-education"></span>
				</a>
			</div>
			<!-- 音乐分类 -->
			<div class="col-xs-3 aTopAndBottom bottomSelect">
				<li class="dropup">

					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						<span class="glyphicon glyphicon-music"></span>
					</a>
					<ul class="dropdown-menu dropdownSelect">
						
						<li>
							<a href="http://music.163.com/m/playlist?id=409889637&userid=296172713" target="_blank"><b>我喜欢的</b></a>
						</li>
						
					</ul>
				</li>

			</div>
			<!-- 视频分类  -->
			<div class="col-xs-3 aTopAndBottom">

				<a href="https://www.iqiyi.com/v_19rrk175js.html?vfm=2008_aldbd&fc=828fb30b722f3164&fv=p_02_01">
					<span class="glyphicon glyphicon-film"></span>
				</a>

			</div>
			<!-- 视频分类 end -->
			<!-- 更多分类  -->
			<div class="col-xs-3 aTopAndBottom bottomSelect">
				<div class="dropup">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						更多
					</a>
					<ul class="dropdown-menu dropdownSelect dropdown-menu-right">
						<li>
							<a href="" data-toggle="modal" data-target="#contact">联系我</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- 更多分类 end -->
		</div>
		
		<!-- 注册 -->
		<div id="register" class="modal fade" tabindex="-1">
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-body">
	                    <button class="close" data-dismiss="modal">
	                        <span>&times;</span>
	                    </button>
	                </div>
	                <div class="modal-title">
	                    <h1 class="text-center">注册</h1>
	                </div>
	                <div class="modal-body" id="register1">
	                    <form class="form-group" action="" method="post">
	                        <div class="form-group">
	                            <label for="">用户名</label>
	                            <input  name="username" id="username" class="form-control" type="text" placeholder="6-15位字母或数字"  value="${param.username}">
	                        </div>
	                        <div class="form-group">
	                            <label for="">密码</label>
	                            <input id="password" class="form-control" type="password" placeholder="至少6位字母或数字" value="${param.password}">
	                        </div>
	                        <div class="form-group">
	                            <label for="">再次输入密码</label>
	                            <input id="password1" class="form-control" type="password" placeholder="至少6位字母或数字" value="${param.password1}">
	                        </div>
	                       <div class="form-group">
	                            <label for="">邮箱</label>
	                            <input  id="email" class="form-control" type="email" placeholder="例如:***@***.com"value="${param.email}">
	                        </div>
	                        <div class="text-right">
	                            <button class="btn btn-primary" type="submit" style="background-color: #3a8cd2b3;border: 0px solid transparent;">提交</button>
	                            <button class="btn btn-danger" data-dismiss="modal" style="background-color: #fb5e5999;border: 0px solid transparent;">取消</button>
	                        </div>
	                        <a href="" data-toggle="modal" data-dismiss="modal" data-target="#login">
	                            <font style="font-size: 13px;">已有账号？点我登录</font>
	                        </a>
	                    </form>
	                </div>
	            </div>
	        </div>
        </div>
        <!-- 注册 end-->
        <!-- 登录 -->
	    <div id="login" class="modal fade">
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-body">
	                    <button class="close" data-dismiss="modal">
	                        <span>&times;</span>
	                    </button>
	                </div>
	                <div class="modal-title">
	                    <h1 class="text-center">登录</h1>
	                </div>
	                <div class="modal-body" id="login1">
	                    <form class="form-group" action="">
                            <div class="form-group">
                                <label for="">用户名</label>
                                <input class="form-control" type="text" placeholder="" id="loginid"  value="${param.loginid}">
                            </div>
                            <div class="form-group">
                                <label for="">密码</label>
                                <input class="form-control" type="password" placeholder="" id="loginpassword"  value="${param.loginpassword}">
                            </div>
                            <div class="text-right">
                                <button class="btn btn-primary" type="submit" style="background-color: #3a8cd2b3; border: 0px solid transparent;">登录</button>
                                <button class="btn btn-danger" data-dismiss="modal" style="background-color: #fb5e5999;border: 0px solid transparent;">取消</button>
                            </div>
                            <a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">
                       			<font style="font-size: 13px;">还没有账号？点我注册</font>
                            </a>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
    <!-- 登录 end -->
	<!-- 联系 -->
	    <div id="contact" class="modal fade">
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-body">
	                    <button class="close" data-dismiss="modal">
	                        <span>&times;</span>
	                    </button>
	                </div>
	                <div class="modal-title">
	                    <h1 class="text-center">联系方式</h1>
	                </div>
	                <div class="modal-body">
	                    <form class="form-group" action="">
                            <div class="form-group">
                                <label for="">QQ</label>
								<input name="qq" type="text" value="1007543242" class="form-control" disabled="disabled">
                         
                            </div>
                            <div class="form-group">
								<label for="">email</label>
                                <input name="email" type="text" value="pudding@nuaa.edu.cn" class="form-control" disabled="disabled">
                                
                            </div>
                         <div class="form-group">
                                <label for="">学号</label>
								<input name="stid" type="text" value="161620310" class="form-control" disabled="disabled">
                         
                            </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
    <!--联系 end -->
	</body>
	

</html>