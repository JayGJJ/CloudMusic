<%@ page import="com.ssm.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>网易云音乐首页</title>
    <meta charset="utf-8">
    <meta property="og:image" content="img/logo.png"/>
    <link href="img/logo.png" rel="shortcut icon" type="image/x-icon" style="border-radius: 50%;">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="./css/index.css"/>

    <style type="text/css">
        .bg-bg {
            background: url(./img/2.jpg) no-repeat center center;
        }

        .bg-nav {
            background-color: #242424;;
        }
        .gg {
            background: rgba(0, 0, 0, 0) linear-gradient(to left, rgb(195, 20, 50), rgb(36, 11, 54)) repeat scroll 0% 0%;
        }
        .footerpfs{
            display: block;
            width: 176px;
            height: 69px;
            background: url(./img/topbar.png) no-repeat 0 9999px;
            background-position: 0 0;
        }
    </style>
</head>


<body>
<!-- 导航栏 -->
<div class="bg-nav text-white">
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4  shadow-sm">
        <div class="container d-flex">
            <h4 class="mt-1 mr-md-auto font-weight-normal text-danger">网易云音乐</h4>
            <nav class="my-2 pt-1 my-md-0 mr-md-3">
                <a class="p-2 " href="findSingerRandom">发现音乐</a>
                <a class="p-2 " href="findMySong?uname=<%= ((User) session.getAttribute("user")).getUname() %>">我的歌单</a>
                <a class="p-2 " href="#">下载客户端</a>
            </nav>
            <a class="btn btn-outline-danger px-3" href="logout">退 出</a>
        </div>
    </div>
</div>


<!-- banner -->

<!-- 小导航栏 红背景 -->
<div class="herad">
    <div class="container">
        <div class="row">
            <ul class="text-center">
                <li class="list-inline-item pl-5"></li>
                <li class="list-inline-item pl-5"></li>
                <li class="list-inline-item pl-4"></li>
                <li class="list-inline-item px-3"><a href="findSingerRandom" class="p-1">推荐</a></li>
                <li class="list-inline-item px-3 "><a href="findSongByCount" class="p-1">排行榜<i
                        class="bi bi-bar-chart-fill"></i></a></li>
                <li class="list-inline-item px-3 "><a href="findAllAlbum" class="p-1">专辑</a></li>
                <li class="list-inline-item px-3 "><a href="findAllSinger" class="p-1">歌手</a></li>
            </ul>
        </div>
    </div>
</div>

<%--<div class="jumbotron bg-bg text-center text-white">--%>
<%--    <div class="container">--%>
<%--        <h2 class="jumbotron-heading">在网易云遇见另外一个自己</h2>--%>
<%--        <p class="lead  py-5">--%>
<%--            我等，等一个到最后还在我身边的人，我坚持或者偏执的相信有一个人会看穿我假装的冷漠，真正的靠近我留在我身边，爱着我也给我一个机会去爱她。如果最后能在一起，那么晚点也没关系。</p>--%>
<%--        <p>--%>
<%--            <a href="#" class="btn-lg btn-danger my-5">网易云热评文案</a>--%>
<%--            <a href="#" class="btn-lg btn-secondary my-5 ml-3">更多网易云生活</a>--%>
<%--        </p>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container">
    <div class="row">
        <c:forEach items="${allAlbum}" var="album">
            <div class="col-md-3">
                <div class="card">
                    <img src="img/test06.jpg" class="card-img-top" alt="Album 1" style="border-radius: 30px;width: 220px;height: 220px;margin: 10px">
                    <div class="card-body">
                        <h5 class="card-title">${album.getTitle()}</h5>
                        <p class="card-text">${album.getArtist()}</p>
                        <a href="findAlbumByName?albumname=${album.getTitle()}" class="btn btn-primary">专辑详情</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>




<!-- 底部 版权 -->
<div class="bg-break text-white mt-5">

    <footer class="pt-4 pt-md-5 border-top container" >
        <div class="row">
            <div class="col-12 col-md">
                <div class="footerpfs"></div>
                <small class="d-block mb-3 text-muted">&copy; 2017-2018</small>
            </div>
            <div class="col-6 col-md">
                <h5>版权投诉指引</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-black-60" href="#">法律相关条约</a></li>
                    <li><a class="text-black-60" href="#">版权条约</a></li>
                    <li><a class="text-black-60" href="#">网易云相关问题</a></li>
                    <li><a class="text-black-60" href="#">投诉指引</a></li>
                    <li><a class="text-black-60" href="#">腾讯公司赞助</a></li>
                    <li><a class="text-black-60" href="#">保护未成年人隐私</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>服务条款</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-black-60" href="#">网易云条约</a></li>
                    <li><a class="text-black-60" href="#">网络安全条约</a></li>
                    <li><a class="text-black-60" href="#">歌曲所有权</a></li>
                    <li><a class="text-black-60" href="#">服务</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>隐私政策</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-black-60" href="#">相关协议隐私政策</a></li>
                    <li><a class="text-black-60" href="#">网易云隐私</a></li>
                    <li><a class="text-black-60" href="#">网易云公司版权</a></li>
                    <li><a class="text-black-60" href="#">意见反馈</a></li>
                </ul>
            </div>
        </div>
    </footer>
</div>
</div>
<!-- js 部分 jQuery -->
<script src="./js/jQuery.js" type="text/javascript" charset="utf-8"></script>
<script src="./js/bootstrap.bundle.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>