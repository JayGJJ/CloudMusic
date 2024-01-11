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
        table {
            font-size: 16px;
        }

        .table thead th {
            background-color: #f5f5f5;
            border-color: #dee2e6;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }

        .table-striped tbody tr:nth-of-type(even) {
            background-color: #fff;
        }

        .table td, .table th {
            border-color: #dee2e6;
        }
        h2 {
            text-align: center;
            margin-bottom: 4rem;
            color: #ef3171;
            font-size: 2rem;
            font-weight: 400;
            text-transform: uppercase;
            letter-spacing: 0.2rem;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th.index-column {
            font-weight: bold;
            color: #ff0000;
        }

        td.song-column {
            font-style: italic;
        }

        td.singer-column {
            text-transform: uppercase;
        }

        tr:nth-child(-n+3) {
            background-color: #f5f5f5;
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

<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h2 class="text-center mb-4">${albumname}</h2>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">歌曲名称</th>
                    <th scope="col">歌手</th>
                    <th scope="col">专辑</th>
                    <th scope="col">时常</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${songs}" var="song" varStatus="status">
                    <tr>
                        <th sscope="row" class="index-column">${status.index+1}</th>
                        <td><a style="color: black" href="findCommentBySongId?songid=${song.songid}">${song.songname}</a></td>
                        <td class="singer-column">${song.singername}</td>
                        <td class="album-column">${song.album}</td>
                        <td class="time-column">${song.time}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
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
