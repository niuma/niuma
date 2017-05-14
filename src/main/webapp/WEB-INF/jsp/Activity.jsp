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
    <title>活动召集</title>

	

    <%--<link href="static/css/bootstrap.min.css" rel="stylesheet">--%>

	<%--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
		<link rel="stylesheet" type="text/css" href="${proPath}/static/css/default.css">
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="${proPath}/static/css/bootstrap.offcanvas.min.css"/>
		<link rel="stylesheet" href="${proPath}/static/css/nav.css" />
	<style type="text/css">

    body{
		/*background:#ebebeb;*/
		/*background:#D6DDE1;*/
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
    	
/*   	p{
    		width: 100%;
    		white-space:nowrap;// 不换行
    		overflow:hidden;// 内容超出宽度时隐藏超出部分的内容
    		text-overflow:ellipsis;
    	}*/

    </style>

	</head>


	<body>
		<jsp:include page="nav.jsp" flush="true" />

		<%--<header class="main-header" style="background-image: url(images/cover.jpeg)"></header>--%>
  		<div class="container sections-wrapper">
  			<div class="row">
  				<!--活动报名-->
  				<div class="col-md-9">
	  				<div class="widget">
						<ul class="nav nav-tabs">
							<li class="active"><a>活动报名</a></li>
						</ul>
						<div class="inner">
							<h2>${activityInfoDetail.activityTitle}</h2>
					        <p>作者：${activityInfoDetail.userid} 活动时间：<fmt:formatDate type="date" value="${activityInfoDetail.activityDate}"/></p>
				            <p  style="table-layout: fixed; word-wrap: break-word; word-break: break-all;">活动简介：${activityInfoDetail.activityContent}</p>

							<c:choose>
								<c:when test="${part}">
									<a href="${proPath}/activityInfoDetailDisplay/quxiao.action?aid=${activityInfoDetail.activityId}"><button type="button" style="float:right; margin-left: 10px; margin-right: 10px;" class="btn btn-success">取消报名</button></a>
								</c:when>
								<c:otherwise>
									<a href="${proPath}/activityInfoDetailDisplay/baoming.action?aid=${activityInfoDetail.activityId}"><button type="button" style="float:right; margin-left: 10px; margin-right: 10px;" class="btn btn-primary">点击报名</button></a>
								</c:otherwise>
							</c:choose>


					    </div>
					</div>
					<!--活动报名end-->
					<!--你可能喜欢 广告-->
			   		<div class="widget">
			        	<ul class="nav nav-tabs">
							<li class="active"><a>你可能喜欢</a></li>
						</ul>
						<div class="inner">
							<div class="row">
								<c:forEach items="${ad1}" var="ad1" begin="0" end="2">
									<div class="col-xs-4 col-md-4">
										<a href="${ad1.adLink}"><img src="${proPath}${ad1.adPicture}" width="200px" height="150px"></a>
									</div>
								</c:forEach>

									<%--<a href="https://www.ele.me/"><img src="${proPath}/picture/11.jpg" width="200px" height="150px"></a>--%>
								<%----%>
								<%--<div class="col-xs-4 col-md-4">--%>
									<%--<a href="http://waimai.meituan.com/"><img src="${proPath}/picture/11.jpg" width="200px" height="150px"></a>--%>
								<%--</div>--%>
								<%--<div class="col-xs-4 col-md-4">--%>
									<%--<a href="http://waimai.baidu.com/"><img src="${proPath}/picture/11.jpg" width="200px" height="150px"></a>--%>
								<%--</div>--%>
							</div>
						</div>
					</div>
					<!--advertisement umaylike end-->
				</div>
				
		    	<!--活动推荐 广告-->
		    	<div class="col-md-3">
		    		<div class="widget">
				    	<ul class="nav nav-tabs">
							<li class="active"><a>近期活动</a></li>
						</ul>
						<div class="inner">
							<c:forEach items="${activityInfo}" var="item" begin="0" end="5">
								<p><a href="/activityInfoDetailDisplay/display.action?name=${item.activityId}">${item.activityTitle}</a></p>
							</c:forEach>
						</div>
					</div>
					<div class="widget">
						<ul class="nav nav-tabs">
							<li class="active"><a>近期活动推荐</a></li>
						</ul>
						<div class="inner">
							<c:forEach items="${ad2}" var="ad2" begin="0" end="2">
								<a href="${ad2.adLink}"><img src="${proPath}${ad2.adPicture}" width="200px" height="150px"></a>
							</c:forEach>
						</div>
					</div>
				</div>

		    </div>
		</div>







		<%--<script src="static/js/bootstrap.min.js"></script>--%>
		<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script src="${proPath}/static/js/bootstrap.offcanvas.js"></script>
		<script src="${proPath}/static/js/important.js"></script>

		<script type="text/javascript">

			function enroll(obj){
				if(obj.value=="false"){
                    window.location.replace("/activityParticipating/participating.action?id1=35&id2=${activityInfoDetail.activityId}")
                    alert("报名成功");
                    obj.value="true";
                    obj.innerHTML="已报名"
                    obj.setAttribute("class", "btn btn-success");
                    obj.attr('disabled',"true");
                    <%--window.location.href="redirect:/activityParticipating/participating.action?id1=15&id2=${activityInfoDetail.activityId}"--%>
				}

				else if(obj.value=="true"){
				    window.location.replace("/activityParticipating/cancel.action?id1=35&id2=${activityInfoDetail.activityId}")
                    <%--window.location.href="redirect:/activityParticipating/cancel.action?id1=15&id2=${activityInfoDetail.activityId}"--%>
					alert("取消报名成功");
					obj.value="false";
					obj.innerHTML="未报名";
					obj.setAttribute("class","btn btn-primary");
				}



			}
		</script>
		
	</body>
</html>
