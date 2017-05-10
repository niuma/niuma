<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-default clearfix" role="navigation" style="margin-bottom: 10px;">
			<div class="container-fluid">
				<button type="button" class="navbar-toggle offcanvas-toggle" data-toggle="offcanvas" data-target="#SLR" style="float: left;margin-left: 15px;">
					<span class="sr-only">SLR</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<button type="button" class="navbar-toggle offcanvas-toggle" data-toggle="offcanvas" data-target="#Menu">
					<span class="sr-only">Menu</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<div class="navbar navbar-default navbar-offcanvas navbar-offcanvas-touch navbar-offcanvas-fade" id="SLR" role="navigation">
					<a class="navbar-brand" href="${proPath}/toIndex.action">
						<img src="${proPath}/picture/logo.png" alt="牛妈宝典" height="38px" width="100px">
						牛妈宝典
						<small>-妈妈的好帮手</small>
					</a>


					<div class="col-md-6 col-sm-7">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="请输入关键字……">
							<span class="input-group-addon btn btn-default" id="home_search">
                                     <span class="glyphicon glyphicon-search" ></span>
                                </span>
						</div>
					</div>

					<ul id="loginAndRegister" class="nav navbar-nav navbar-form navbar-right" role="Login&Register">
						<c:choose>
							<c:when test="${not empty user}">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
										${user.username}<span class="caret"></span>
									</a>
									<ul class="dropdown-menu">
										<li><a href="#">我的主页</a></li>
                                        <li><a href="${proPath}/getBaby/Baby.action">宝宝信息</a></li>
										<li><a href="#">私信</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="${proPath}/user/logout.action">注销</a></li>
									</ul>
								</li>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#login">登录</button>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#register">注册</button>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

				<div class="row navbar navbar-default navbar-offcanvas navbar-offcanvas-right navbar-offcanvas-touch navbar-offcanvas-fade" role="navigation-list" id="Menu">
					<ul class="nav nav-pills nav-justified">
						<li><a href="${proPath}/toIndex.action"><span class="glyphicon glyphicon-home"></span>&nbsp首页</a></li>
						<li><a href="${proPath}/toIndex2.action"><span class="glyphicon glyphicon-headphones"></span>&nbsp童话行动</a></li>
						<li><a href="${proPath}/toIndex3.action"><span class="glyphicon glyphicon-book"></span>&nbsp枕边故事</a></li>
						<li><a href="${proPath}/toIndex4.action"><span class="glyphicon glyphicon-tasks"></span>&nbsp健儿宝典</a></li>
						<li><a href="${proPath}/toIndex5.action"><span class="glyphicon glyphicon-comment"></span>&nbsp妈咪沙龙</a></li>
						<li><a href="${proPath}/toIndex6.action"><span class="glyphicon glyphicon-plane"></span>&nbsp出游指南</a></li>
						<li><a href="${proPath}/toIndex7.action"><span class="glyphicon glyphicon-list-alt"></span>&nbsp伴娃笔记</a></li>
						<li><a href="${proPath}/toIndex8.action"><span class="glyphicon glyphicon-map-marker"></span>&nbsp我的校园</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- end of 顶部导航栏 -->

		<!-- 注册窗口 -->
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
					<div class="modal-body">
						<div class="form-group">
							<label>用户名</label>
							<input id="username1" class="form-control" type="text" placeholder="支持输入中文、英文、数字等">
						</div>
						<div class="form-group">
							<label>密码</label>
							<input id="password1" class="form-control" type="password" placeholder="至少6位字母或数字">
						</div>
						<div class="form-group">
							<label>再次输入密码</label>
							<input id="password2" class="form-control" type="password" placeholder="至少6位字母或数字">
						</div>
						<div class="form-group">
							<label>手机</label>
							<input id="phone" class="form-control" type="text" placeholder="请输入11位手机号">
						</div>
						<div class="form-group">
							<label>邮箱</label>
							<input id="mail" class="form-control" type="email" placeholder="例如:123@123.com">
						</div>

						<i id="registerErrorInfo" style="color: red;"></i>
						<div class="text-right">
							<button class="btn btn-primary" onclick="register()">确认</button>
							<button type="reset" class="btn btn-danger" data-dismiss="modal">取消</button>
						</div>
						<a href="" data-toggle="modal" data-dismiss="modal" data-target="#login">已有账号？点我登录</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end of 注册窗口 -->

		<!-- 登录窗口 -->
		<div id="login" class="modal fade">
			<div class="modal-dialog" style="width: 400px;">
				<div class="modal-content">
					<div class="modal-body">
						<button class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-title">
						<h1 class="text-center">登录</h1>
					</div>
					<div class="modal-body">
						<%--<form action="${proPath}/user/loginByUsername.action" method="post" onsubmit="">--%>
							<div class="form-group">
								<label>用户名</label>
								<input id="username" class="form-control" type="text" name="username" placeholder="" required="required">
							</div>
							<div class="form-group">
								<label>密码</label>
								<input id="password" class="form-control" type="password" name="password" placeholder="" required="required">
							</div>
							<div class="checkbox">
								<label>
									<input id="remember" type="checkbox" name="rememberMe" value="true" checked="">记住我
								</label>
							</div>

							<i id="loginErrorInfo" style="color: red;"></i>
							<div class="text-right">
								<button class="btn btn-primary" onclick="login()">登录</button>
								<%--<button type="submit" class="btn btn-primary">登录</button>--%>
								<button class="btn btn-danger" data-dismiss="modal">取消</button>
							</div>
						<%--</form>--%>
						<a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end of 登录窗口 -->
		<!-- end of 顶部导航栏 -->