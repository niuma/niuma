<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<%--<!DOCTYPE html>--%>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>出游指南</title>

	  <link rel="stylesheet" type="text/css" href="${proPath}/static/css/default.css">
	  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	  <link rel="stylesheet" href="${proPath}/static/css/bootstrap.offcanvas.min.css"/>

	<style type="text/css">
		.navbar{
			margin-bottom: 0px;
			border: 0px;
		}

		.input-group{
			padding:10px 5px;
		}

		body{
			/*background:#ebebeb;*/
			/*background:#D6DDE1;*/
			background: #FFCCCC;
		}

		/*center{*/
			/*float: none;*/
			/*display: block;*/
			/*margin-left: auto;*/
			/*margin-right: auto;*/
			/*text-align:center*/
		/*}*/
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

		.caritem{
			display:block;
			height: 200px;
			margin-top: 10px;
			margin-bottom: 10px;
			margin-left: 15px;
			margin-right: 15px;
			padding-top:15px;
			padding-bottom: 15px;
			background-color: #9acfea;
		}

		div .image{
			margin-top: 10px;
			margin-bottom: 10px;
		}

		div .image-word{
			margin-top: 10px;
			margin-bottom: 10px;
			width: 25%;
			height: 150px;
			/*padding-top: 75px;*/
			/*padding-bottom: 75px;*/
		}
		p{
			word-wrap:break-word;
			word-break:normal;
		}
	</style>



  </head>
  <body>
  	<!-- 顶部导航栏 -->
		<jsp:include page="nav.jsp" flush="true" />
	<!--heading end-->

	<div class="container sections-wrapper">
  	<!-- 亲子出游 -->
		<div class="row">
			<div class="widget">
				<div class="heading">
					<ul class="nav nav-tabs">
						<li class="active"><a>亲子出游</a></li>
					</ul>
					<div class="row vertical-center" id="pctour">

					</div>
					<center>
						<button id="load1" type="button" class="btn btn-default btn-xs" onclick="DisplayMore(this.id)" value="1">加载更多</button>
					</center>
				</div>
			</div>
	<!--亲子出游结束-->
	<%--<hr style="margin: 20px;">--%>
	<!--运动汇-->
	  		<div class="widget">
		  		<div class="heading">
			  		<ul class="nav nav-tabs">
						<li class="active"><a>运动汇</a></li>
			  		</ul>
					<div class="row" style="padding-top: 15px">
						<div id="sportCarousel" class="carousel slide">
							<!-- 轮播（Carousel）指标 -->
							<ol class="carousel-indicators">
								<li data-target="#sportCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#sportCarousel" data-slide-to="1"></li>
								<li data-target="#sportCarousel" data-slide-to="2"></li>
							</ol>
							<!-- 轮播（Carousel）项目 -->
							<div class="carousel-inner">
								<div class="item active">
									<%--<div class="row">--%>
										<img src="${proPath}/picture/Sport/1.jpg" alt="First slide" class="img-responsive center-block" width="500px" height="200px">
									<%--</div>--%>
								</div>
								<div class="item">
									<%--<div class="row">--%>
										<img src="${proPath}/picture/Sport/2.jpg" alt="Second slide" class="img-responsive center-block" width="500px" height="200px">
									<%--</div>--%>
								</div>
								<div class="item">
									<%--<div class="row">--%>
										<img src="${proPath}/picture/Sport/5.jpg" alt="First slide" class="img-responsive center-block" width="500px" height="200px">
									<%--</div>--%>
								</div>
							</div>
							<!-- 轮播（Carousel）导航 -->
							<a class="carousel-control left" href="#sportCarousel"
							   data-slide="prev" style="width: 5%;"><span class="glyphicon glyphicon-chevron-left"></span></a>
							<a class="carousel-control right" href="#sportCarousel"
							   data-slide="next" style="width: 5%";><span class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
					</div>
				</div>
	  		</div>
	<!--运动汇end-->
	<%--<hr style="margin: 20px;">--%>
	<!--博物馆-->
		  	<div class="widget">
			  	<div class="heading">
					<ul class="nav nav-tabs">
					  <li class="active"><a>博物馆</a></li>
				  	</ul>
				  	<!--博物馆轮播1-->
				  	<div class="row" style="padding-top: 10px">
					  	<div id="museumCarousel_1" class="carousel slide">
							<!-- 轮播（Carousel）指标 -->
						  	<ol class="carousel-indicators">
								<li data-target="#museumCarousel_1" data-slide-to="0" class="active"></li>
							  	<li data-target="#museumCarousel_1" data-slide-to="1"></li>
							  	<li data-target="#museumCarousel_1" data-slide-to="2"></li>
						  	</ol>

							<div class="carousel-inner">
						  		<div class="item active">
								  	<div class="caritem">
									  	<div class="col-xs-3">
										  	<img src="${proPath}/picture/Museum/m_1.jpg" class="img-responsive" alt="Responsive image" width="200px" height="200px">
									  	</div>
									  	<div class='col-xs-9'>
										  	<p>地发展变化之中。博物馆的新职能、新形态、新方法、新的收藏对象也不断地出现。因此，国际公认的博物馆定义也在不断修改之中。国际博物馆协会为了给博物馆下一个各国都能接受的定义，进行了很多工作，花了很长时间，曾经作过多次讨论和修改。</p>
									  	</div>
									</div>
							  	</div>
							  	<div class="item">
								  	<div class="caritem">
									  	<div class="col-xs-3">
										  	<img src="${proPath}/picture/Museum/m_1.jpg" class="img-responsive" alt="Responsive image" width="200px" height="200px">
									  	</div>
									  	<div class='col-xs-9'>
										  	<p>地发展变化之中。博物馆的新职能、新形态、新方法、新的收藏对象也不断地出现。因此，国际公认的博物馆定义也在不断修改之中。国际博物馆协会为了给博物馆下一个各国都能接受的定义，进行了很多工作，花了很长时间，曾经作过多次讨论和修改。</p>
									  	</div>
								  	</div>
							  	</div>
							  	<a class="carousel-control left" href="#museumCarousel_1"
								 data-slide="prev" style="width: 5%;"><span class="glyphicon glyphicon-chevron-left"></span></a>
							  	<a class="carousel-control right" href="#museumCarousel_1"
								 data-slide="next" style="width: 5%;"><span class="glyphicon glyphicon-chevron-right"></span></a>
						  	</div>
					  	</div>
				  	</div>
				  	<!--博物馆轮播1end-->
				  	<!--博物馆轮播2-->
				  	<div class="row">
						<div id="museumCarousel_2" class="carousel slide">
							<!-- 轮播（Carousel）指标 -->
							<ol class="carousel-indicators">
								<li data-target="#museumCarousel_2" data-slide-to="0" class="active"></li>
								<li data-target="#museumCarousel_2" data-slide-to="1"></li>
								<li data-target="#museumCarousel_2" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<div class="caritem">
										<div class='col-xs-9'>
											<p>与我们今天见到的博物馆不同，缪斯神庙其实是一个专门的研究机构，里面设大厅研究室，陈列天文、医学和文化艺术藏品，学者们聚集在这里，从事研究工作。传说在洗澡时发现了浮力定律的著名物理学家阿基米德以及著名数学家欧几里德都是在这里从事研究工作的。</p>
										</div>
										<div class="col-xs-3">
											<img src="${proPath}/picture/Museum/m_2.jpg" class="img-responsive" alt="Responsive image" width="200px" height="200px">
										</div>
									</div>
								</div>
								<div class="item">
									<div class="caritem">
										<div class='col-xs-9'>
											<p>与我们今天见到的博物馆不同，缪斯神庙其实是一个专门的研究机构，里面设大厅研究室，陈列天文、医学和文化艺术藏品，学者们聚集在这里，从事研究工作。传说在洗澡时发现了浮力定律的著名物理学家阿基米德以及著名数学家欧几里德都是在这里从事研究工作的。</p>
										</div>
										<div class="col-xs-3">
											<img src="${proPath}/picture/Museum/m_2.jpg" class="img-responsive" alt="Responsive image" width="200px" height="200px">
										</div>
									</div>
								</div>
								<a class="carousel-control left" href="#museumCarousel_2"
									 data-slide="prev" style="width: 5%;"><span class="glyphicon glyphicon-chevron-left"></span></a>
								<a class="carousel-control right" href="#museumCarousel_2"
									 data-slide="next" style="width: 5%;"><span class="glyphicon glyphicon-chevron-right"></span></a>
							</div>
						</div>
				  	</div>
					<!--博物馆轮播2end-->
		  		</div>
		  	</div>
	<!--博物馆end-->
	<%--<hr style="margin: 20px;">--%>
	<!--装备馆-->

			<div class="widget">
				<div class="heading">
					<ul class="nav nav-tabs">
						<li class="active"><a>装备馆</a></li>
					</ul>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-3">
						<img src="${proPath}/picture/Equipment/e_1.jpg" alt="First slide" class="img-responsive center-block" width="200px" height="200px">
					</div>
					<div class="col-xs-6 col-md-3">
						<img src="${proPath}/picture/Equipment/e_2.jpg" alt="First slide" class="img-responsive center-block" width="200px" height="200px">
					</div>
					<div class="col-xs-6 col-md-3">
						<img src="${proPath}/picture/Equipment/e_3.jpg" alt="Second slide" class="img-responsive center-block" width="200px" height="200px">
					</div>
					<div class="col-xs-6 col-md-3">
						<img src="${proPath}/picture/Equipment/e_4.jpg" alt="Third slide" class="img-responsive center-block" width="200px" height="200px">
					</div>
				</div>
			</div>
	<!--装备馆end-->
		</div>
	</div>
	


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="${proPath}/static/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${proPath}/static/js/bootstrap.min.js"></script>
	<%--<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>--%>
	<%--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>--%>
	<script src="${proPath}/static/js/bootstrap.offcanvas.js"></script>
    <script>
    	var json = "";
        var jsLength = 0;

    	$(document).ready(function(){
            loadJson();
        });

        function loadJson(){
            $.ajax({
                type: "POST",
                url: "${proPath}/parentChildTourShowMore/show.action",
                contentType: "application/json; charset=utf-8",
                data: "{}",
                success: function (result) {
                    json = result;
                    jsLength = getJsonLength(json);
                    DisplayFirst();
                },
                error: function() {
                    alert("网页信息加载失败，请联系网站管理员！");
                }
            });
        }


        function getJsonLength(jsonData){
            var jsonLength = 0;
            for(var item in jsonData){
                jsonLength++;
            }
           	return jsonLength;
        }

        function DisplayFirst(){
            var imageHtml = "";
            for (var i = 0; i < 2 && i < jsLength; i++) {
                imageHtml += "<div class='col-md-3 image'>"
                    +"<img src='${proPath}/"+json[i].picture+"' width='200px' height='150px'>"
                    +"</div>"
                    +"<div class='col-md-3 image-word'>"
                    +"<p>"+json[i].word+"</p>"
                	+"</div>";
            }
            document.getElementById("pctour").innerHTML = imageHtml;
        }

        /*function DisplaySport(){
            var sportHtml ="";
            for	(var i = 0;i < 4 && i<jsLength; i++){
            	sportHtml +="<div class='container'>"
            		+"<div class='col-xs-3'>"
                	+"<img src='"+json[i].picture+"'alt='First slide'"
					+"class='img-responsive center-block' width='200px' height='200px'>"
                	+"</div>"
                +<div class="col-xs-3">
                <img src="images\Sport\s_2.jpg" alt="Second slide" class="img-responsive center-block" width="200px" height="200px">
                </div>
                <div class="col-xs-3">
                <img src="images\Sport\s_3.jpg" alt="Third slide" class="img-responsive center-block" width="200px" height="200px">
                </div>
                <div class="col-xs-3">
                <img src="images\Sport\s_4.jpg" alt="Fourth slide" class="img-responsive center-block" width="200px" height="200px">
                </div>"
			}

		}
		*/

        function DisplayMore(buttonId){
			var display = document.getElementById(buttonId).value;
			var displayHtml="";
			for (var i = display*2;i < display*2+2&&i<jsLength;i++) {
				displayHtml += "<div class='col-md-3 image'>"
                        +"<img src='${proPath}/"+json[i].picture+"' width='200px' height='150px'>"
						+"</div>"
                    	+"<div class='col-md-3 image-word'>"
						+"<p>"+json[i].word+"</p>"
                        +"</div>";
			}
			document.getElementById("pctour").innerHTML += displayHtml;
            if(2*display >= jsLength)
                document.getElementById(buttonId).innerHTML = "加载完了>.<";
            else
                document.getElementById(buttonId).value ++;

		}

    </script>
  </body>
</html>