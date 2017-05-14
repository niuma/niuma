<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->    
    	<title>伴娃笔记</title>

    	<%--<link href="static/css/bootstrap.min.css" rel="stylesheet">--%>
		<link rel="stylesheet" type="text/css" href="${proPath}/static/css/default.css">
		<%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="${proPath}/static/css/bootstrap.offcanvas.min.css"/>
		<link rel="stylesheet" href="${proPath}/static/css/nav.css">

	<style type="text/css">

    body{
		/*background:#ebebeb;*/
		/*background:#D6DDE1;*/
		background: #FFCCCC;
	}

	.row{
		padding-bottom: 10px;

	}

	.main-header {
		padding-top: 200px;
		padding-bottom: 200px;
		background-repeat: no-repeat;
		background-position: center 20%;
		-webkit-background-size: cover;
		background-size: cover;
	}

	.heading
  	{
  		margin:10px;
  		padding-top: 5px;
  		padding-left:15px;
  		padding-right:15px;
  	}

  	.sections-wrapper{
		padding-top: 10px;
		padding-bottom: 10px;
	}

	.widget{
		display:block;
		padding: 21px 30px;
		margin-top:5px;
		margin-bottom: 35px;
		border-radius: 10px;
		background-color: #ffffff;
		padding-top: 10px;
		padding-bottom: 10px;
	}

    .inner{
    	margin-top: 15px;
    	padding-bottom: 20px;
    }

    /*#ad img{*/
    	/*width: 100%;*/
    	/*height: 300px;*/
    /*}*/

    	
    </style>

    

  	</head>

  	<body>
		<jsp:include page="nav.jsp" flush="true"/>

        <div class="container sections-wrapper">
        	<div class="row">
        		<div class="widget">
					<div class="heading">
						<ul class="nav nav-tabs">
							<li class="active"><a>活动召集</a></li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-3">
								<img src="${proPath}/picture/10.jpg" width="280px" height="500px">
						</div>

						<div class="col-md-9">
							<c:forEach items="${activityInfo}" var="item" begin="0" end="2">
								<div class="inner">
									<div class="row">
										<div class="col-md-3">
											<img src="${proPath}/picture/ParentChildTour/6.jpg" class="img-responsive" alt="Responsive image" width="200px" height="200px">
										</div>
										<div class='col-md-9'>
											<p style="table-layout: fixed; word-wrap: break-word; word-break: break-all;">${item.activityTitle}</p>
										</div>
									</div>
									<div class="row">
										<%--<button type="button" style="float:right" class="btn btn-primary">报名</button>--%>
										<a href="${proPath}/activityInfoDetailDisplay/display.action?name=${item.activityId}&area1=activity_youmaylike&area2=activity_recommmend" style="float: right">点击查看详情页</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		    
		<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
		<script src="${proPath}/static/js/bootstrap.min.js"></script>
		<script src="${proPath}/static/js/bootstrap.offcanvas.js"></script>
		<script src="${proPath}/static/js/important.js"></script>

	</body>

</html>

