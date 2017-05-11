<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 5/11/2017
  Time: 6:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>乐活集-编辑器</title>

    <link rel="stylesheet" type="text/css" href="${proPath}/static/css/default.css">
    <link rel="stylesheet" type="text/css" href="${proPath}/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${proPath}/static/css/bootstrap.offcanvas.min.css"/>
    <%--<link rel="stylesheet" href="${proPath}/static/css/bootstrap-combined.min.css"/>--%>
    <link rel="stylesheet" href="${proPath}/static/css/nav.css" />

    <style type="text/css">
        body{
            background:#FFCCCC;
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
            padding-top: 60px;
            padding-bottom: 60px;
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

        .textarea{
            width: 100%;
            height: 300px;
            max-height: 400px;
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
                    <%
                        Date date = new Date();
                        date.toString();
                    %>
                    <form class="form-horizontal" action="${proPath}/editor/lehuoji.action?date=<%=date%>" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <div class="control-group">
                                <!-- Text input-->
                                <label class="control-label">乐活集标题</label>
                                <div class="controls">
                                    <input type="text" name="title" placeholder="请输入标题" class="input-xlarge">
                                </div>
                            </div>
                            <div class="control-group">
                                <!-- Textarea -->
                                <label class="control-label">乐活集内容</label>
                                <div class="controls">
                                    <div class="textarea">
                                        <textarea name="text" placeholder="请输入内容" class="textarea"> </textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <!--Image-->
                                <label class="control-label">乐活集图片</label>
                                <div class="controls">
                                    <input type="file" name="image"  />
                                    <p class="help-block">支持jpg、jpeg、png、gif格式，大小不超过2.0M</p>
                                </div>
                            </div>
                            <div class="control-group">
                                <!-- Button -->
                                <div class="controls">
                                    <%--<input type="submit">--%>
                                    <button class="btn btn-success" type="submit" onclick="submitSucceed()">发表</button>
                                    <button class="btn btn-success" type="reset">重置</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function submitSucceed() {
            alert("上传成功");
        }
    </script>
</body>
</html>
