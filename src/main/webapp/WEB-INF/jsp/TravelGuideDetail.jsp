<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 5/13/2017
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <div class="container sections-wrapper">
        <div class="row">
            <!--活动报名-->
            <div class="col-md-9">
                <div class="widget">
                    <ul class="nav nav-tabs">
                        <li class="active"><a>亲子游</a></li>
                    </ul>
                    <div class="inner">
                        <h2>${pctourDetail.title}</h2>
                        <img src="${proPath}/${pctourDetail.picture}" style="width: 100%"/>
                        <p  style="table-layout: fixed; word-wrap: break-word; word-break: break-all;">${pctourDetail.word}</p>
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
                            <div class="col-xs-4 col-md-4">
                                <a href="https://www.ele.me/"><img src="${proPath}/picture/11.jpg" width="200px" height="150px"></a>
                            </div>
                            <div class="col-xs-4 col-md-4">
                                <a href="http://waimai.meituan.com/"><img src="${proPath}/picture/11.jpg" width="200px" height="150px"></a>
                            </div>
                            <div class="col-xs-4 col-md-4">
                                <a href="http://waimai.baidu.com/"><img src="${proPath}/picture/11.jpg" width="200px" height="150px"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--advertisement umaylike end-->
            </div>

            <!--活动推荐 广告-->
            <div class="col-md-3">
                <div class="widget">
                    <ul class="nav nav-tabs">
                        <li class="active"><a>近期出游</a></li>
                    </ul>
                    <div class="inner">
                        <c:forEach items="${pctour}" var="item" begin="0" end="5">
                            <p><a href="${proPath}/parentChildTourShowMore/detail.action?name=${item.pctourId}">${item.title}</a></p>
                        </c:forEach>
                    </div>
                </div>
                <div class="widget">
                    <ul class="nav nav-tabs">
                        <li class="active"><a>近期活动推荐</a></li>
                    </ul>
                    <div class="inner">
                        <a href="https://www.ele.me/"><img src="${proPath}/picture/11.jpg" width="100%" height="150px"></a>
                        <a href="http://waimai.meituan.com/"><img src="${proPath}/picture/11.jpg" width="100%" height="150px"></a>
                        <a href="http://waimai.baidu.com/"><img src="${proPath}/picture/11.jpg" width="100%" height="150px"></a>
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

</script>

</body>
</html>
