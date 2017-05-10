<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->    
    <title>枕边故事——童宝开讲</title>

		<link rel="stylesheet" type="text/css" href="${proPath}/static/css/default.css">
    	<%--<link href="${proPath}/static/css/bootstrap.min.css" rel="stylesheet">--%>
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="${proPath}/static/css/bootstrap.offcanvas.min.css"/>
		<link rel="stylesheet" href="${proPath}/static/css/nav.css">

    <style type="text/css">

    body{
		/*background:#ebebeb;*/
		/*background:#D6DDE1;*/
		/*background:#FFCCCC;*/
		background: #FFCCCC;
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
	}

    .inner{
    	margin-top: 15px;
    	padding-bottom: 20px;
    }

    	
    </style>
    

  	</head>

  	<body>
		<jsp:include page="nav.jsp" flush="true"/>
        <div class="container sections-wrapper">
        	<div class="row">
            	<div class="col-lg-9">
            		<div class="widget">
	                    <h2>${childBabyTaleTellingDetail.title}</h2>
	                    <p>作者：${childBabyTaleTellingDetail.userid} 发布时间：<fmt:formatDate type="date" value="${childBabyTaleTellingDetail.time}"/></p>
	                    <div class="inner">
	                    	<p  style="table-layout: fixed; word-wrap: break-word; word-break: break-all;">故事简介：${childBabyTaleTellingDetail.text}</p>
		                    <%--<audio controls>
								${childBabyTaleTellingDetail.media}
		                        <embed height="50px" width="100px" source src="${childBabyTaleTellingDetail.media}" type="audio/mpeg">
		                    </audio>--%>
							<audio controls="controls">
								<%--<source src="song.ogg" type="audio/ogg">--%>
								<source src="${proPath}/upload/${childBabyTaleTellingDetail.media}" type="audio/mpeg">
								Your browser does not support the audio tag.
							</audio>
		                    <!-- JiaThis Button BEGIN -->
							<div class="jiathis_style_32x32">
								<a class="jiathis_button_qzone"></a>
								<a class="jiathis_button_tsina"></a>
								<a class="jiathis_button_tqq"></a>
								<a class="jiathis_button_weixin"></a>
								<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
							</div>
							<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
							<!-- JiaThis Button END -->
	                    </div>
            		</div>
            	</div>
            	<div class="col-lg-3">
            		<div class="widget">
		                <ul class="nav nav-tabs">
		                    <li class="active"><a>相关童话推荐</a></li>
		                </ul>
		                <div class="inner">
		                    <p>卖火柴的小女孩</p>
		                    <p>海的女儿</p>
		                    <p>灰姑娘</p>
		                    <p>丑小鸭</p>
		                    <p>拇指姑娘</p>
		                    <p>白雪公主</p>
		                </div>
	                </div>
	                <div class="widget">
		                <ul class="nav nav-tabs">
		                    <li class="active"><a>宝宝录音排行耪</a></li>
		                </ul>
		                <div class="inner">
							<c:forEach begin="0" end="5" items="${childBabyTaleTelling}" var="item">
								<p><a href="ChildBabyTaleTelling.jsp?name=${item.issueId}">${item.title}</a></p>
							</c:forEach>
		                </div>
            		</div>
       			</div>
       		</div>
       	</div>
       
        <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
        <script src="${proPath}/js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script src="${proPath}/static/js/bootstrap.offcanvas.js"></script>

        <script type="text/javascript"></script>

   

  
	</body>
</html>