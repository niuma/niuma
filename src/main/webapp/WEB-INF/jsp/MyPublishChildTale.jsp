<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 5/10/2017
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>我的发布-童宝开讲</title>
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
    </style>
</head>
<body>
<jsp:include page="nav.jsp" flush="true"/>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="widget">
                <p>童宝开讲</p>
                <p>原创故事</p>
                <p>萌娃食谱</p>
                <p>保健秘方</p>
                <p>实录集</p>
                <p>乐活集</p>
                <p>搔头集</p>
            </div>
        </div>
        <div class="col-md-9">
            <div class="widget">
                <c:forEach items="${issue}" var="item" begin="0" end="12">
                    <p>${item.text}</p>
                </c:forEach>

            </div>
        </div>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="${proPath}/static/js/bootstrap.offcanvas.js"></script>

</body>
</html>
