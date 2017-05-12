<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="proPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
			<link href="${proPath}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link href="${proPath}/static/css/froala_editor.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="${proPath}/static/css/default.css">
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="${proPath}/static/css/bootstrap.offcanvas.min.css"/>
		<link href="${proPath}/static/css/jquery.filer.css" type="text/css" rel="stylesheet" />
	   <link href="${proPath}/static/css/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />
		<style type="text/css">

        section {
            width: 80%;
            margin: auto;
            text-align: left;
        }
			.navbar{
				margin-bottom: 0px;
				border: 0px;
			}

			.input-group{
                padding:10px 5px;
            }

			.carousel-caption p {
				margin-bottom: 20px;
				font-size: 20px;
				line-height: 1.8;
			}
			
			.story-recommend{
				margin: 40px;
				padding-top: 10px;
				padding-right: 15px;
				padding-left: 15px;
			}

			.story-recommend .col-md-3{
				margin-bottom: 20px;
				text-align: center;
			}

			#left{
				
				height: 1000px;
			}
			#right{
				
				height: 1000px;
			}
			.container{float: left;}

			#title{
				padding: 0px 20px;
				font-size: 20px;
				/*font-style:;*/

			}
		</style>
	</head>

   	<body>
   		<!-- 顶部导航栏 -->
		<jsp:include page="nav.jsp" flush="true"></jsp:include>
		<%--<nav class="navbar navbar-default clearfix" role="navigation" style="margin-bottom: 10px;">
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
						<img src="${proPath}/picture/牛妈宝典.png" alt="牛妈宝典">
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
		
					<form class="navbar-form navbar-right" role="Login&Register">
							<img scr="" alt="头像" style="width: 50px;">&nbsp
							<button type="button" class="btn btn-default">登录</button>
					</form>
				</div>
		
				<div class="row navbar navbar-default navbar-offcanvas navbar-offcanvas-right navbar-offcanvas-touch navbar-offcanvas-fade" role="navigation-list" id="Menu">
					<ul class="nav nav-pills nav-justified">
						<li><a href="/toIndex.action"><span class="glyphicon glyphicon-home"></span>&nbsp首页</a></li>
						<li><a href="tonghuagushi.html"><span class="glyphicon glyphicon-headphones"></span>&nbsp童话行动</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-book"></span>&nbsp枕边故事</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-tasks"></span>&nbsp健儿宝典</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-comment"></span>&nbsp妈咪沙龙</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-plane"></span>&nbsp出游指南</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-list-alt"></span>&nbsp伴娃笔记</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-map-marker"></span>&nbsp我的校园</a></li>
					</ul>
				</div>
			</div>
		</nav>--%>
		<!-- end of 顶部导航栏 -->

		

	
		<div class="story-recommend">
			<ul class="nav nav-tabs">
				<li class="active"><a>编辑----保健秘方</a></li>
			</ul>
			<div class="container">
				<!-- 添加辅助图片实现不同尺寸图片的垂直居中 -->
				<div class="" id="story-container">
					<div class="col-xs-6 col-md-3 " id="left" >
					<br><br><br>
					<button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">宝贝开讲</button>
					<br><br><br><br><br>
					<button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">原创故事</button>
					<br><br><br><br><br>
					<button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">萌娃食谱</button>
					<br><br><br><br><br>
					<button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">保健秘方</button>
					<br><br><br><br><br>

					<button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">实录集</button>
					<br><br><br><br><br>
					<a href="${proPath}/toIndex11.action"><button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">乐活集</button></a>
					<br><br><br><br><br>
					<button type="button" class="btn btn-default" style="width:300px;background-color: #ECECEC">搔头集</button>
						
					</div>
				<form method="post" action="${proPath}/setIssue/Issue1.action" name="bianji">
					<div class="col-md-9 col-md-push-2" id="right" >
					<div style="margin-top: 25px">
						<span  id ="title" style="  border-bottom:solid 2px #000;border-left:solid 2px #000;border-top:solid 2px #000;
						border-right:  solid 2px #000 ">秘方标题</span>
						<br><br><input type="text-center" class="form-control" name="title" style="width: 300px;vertical-align:middle;background-color: #ECECEC" ></div>
						<br><br><br><br>
						       <ul class="nav nav-tabs">
				                <li class="active" ><a>秘方内容</a></li>
			                   </ul>
			                   
			                   
                                   <section id="editor" name="text" style="height:500px;width:900px;overflow-x:hidden;overflow:auto; position: relative;">
      <div id='edit' style="margin-top: 0px;">
      </div>
  </section>
   
                   
						
					<div id="content">
        <h4>上传图片</h4>
         <br>
               <br>
        <%--<form action="${proPath}/static/php/upload.php" method="post" enctype="multipart/form-data">--%>
              <input type="file" name="files[]" id="filer_input" multiple  >
              <br>
               <br>
              <div> <button type="button" class="btn btn-success" style="width: 150px" >发表</button> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              <button type="submit"  style="width: 150px"  class="btn btn-info">保存到我的秘方</button> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              <button type="reset" style="width: 150px ;" class="btn btn-warning" >舍弃</button>
              
			  </div>
		</form>
        

					</div>
					
				</div>
				<%--</form>--%>
			</div>
		</div>
		<!-- end of 故事推荐 -->
		
		<!-- 分割线 -->
		<hr style="margin: 40px;">
		
		

		<script type="text/javascript">
			function mouseOver(){
				document.getElementById("testQrcode").style.display="block";
			}

			function mouseOut(){
				document.getElementById("testQrcode").style.display="none";
			}

		</script>

		<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script src="${proPath}/static/js/bootstrap.offcanvas.js"></script>


	<!--jQuery-->
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="${proPath}/static/js2/jquery.filer.min.js"></script>
	<script type="text/javascript" src="${proPath}/static/js2/custom.js"></script>
	  <script src="${proPath}/static/js2/libs/jquery-1.11.1.min.js"></script>
  <script src="${proPath}/static/js2/froala_editor.min.js"></script>
  <!--[if lt IE 9]>
    <script src="${proPath}/static/js2/froala_editor_ie8.min.js"></script>
  <![endif]-->
  <script src="${proPath}/static/js2/plugins/tables.min.js"></script>
  <script src="${proPath}/static/js2/plugins/lists.min.js"></script>
  <script src="${proPath}/static/js2/plugins/colors.min.js"></script>
  <script src="${proPath}/static/js2/plugins/media_manager.min.js"></script>
  <script src="${proPath}/static/js2/plugins/font_family.min.js"></script>
  <script src="${proPath}/static/js2/plugins/font_size.min.js"></script>
  <script src="${proPath}/static/js2/plugins/block_styles.min.js"></script>
  <script src="${proPath}/static/js2/plugins/video.min.js"></script>

  <script>
      $(function(){
          $('#edit').editable({inlineMode: false, alwaysBlank: true})
      });
  </script>
	</body>
</html>