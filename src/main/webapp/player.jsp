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
        body {
            background-color: #F5F5F5;
        }

        .bg-bg {
            background: url(./img/2.jpg) no-repeat center center;
        }

        .bg-nav {
            background-color: #242424;;
        }

        .gg {
            background: rgba(0, 0, 0, 0) linear-gradient(to left, rgb(195, 20, 50), rgb(36, 11, 54)) repeat scroll 0% 0%;
        }

        .footerpfs {
            display: block;
            width: 176px;
            height: 69px;
            background: url(./img/topbar.png) no-repeat 0 9999px;
            background-position: 0 0;
        }
        .move-down {
            margin-top: 70px;
            margin-left: 20px;
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

<!-- 第二部分 -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-9" style="background-color: #FFFFFF; border-radius: 40px;padding: 40px">
            <div class="row mt-3">
                <div class="col-md-4 col-sm-10 ">
                    <img src="./img/test06.jpg" class="rounded img-fluid move-down">
                </div>
                <div class="pl-4 col-8" style="text-align: center;">
                    <ul class="list-unstyled pt-1">
                        <li class="h3 text-danger">${song.getSongname()}</li>
                        <li class="text-secondary "><a href="#" class="text-info">${song.getSingername()}</a><span
                                class="px-2">所属专辑：${song.getAlbum()}</span></li>
                    </ul>
                    <div style="height: 200px; overflow-y: scroll; margin: 20px">
                        <p>薛之谦擅长写旋律，</p>
                        <p>编曲弱，弦乐很出彩，</p>
                        <p>非常抓耳，让人陶醉。</p>
                        <p>知多少人庸庸碌碌一生，</p>
                        <p>依旧不得梦想两个字的真意。</p>
                        <p>愿薛之谦继续享受音乐，</p>
                        <p>享受追求梦想的过程，</p>
                        <p>用心演绎每一首歌，</p>
                        <p>让我们沉浸在音乐的海洋。</p>
                    </div>
                    <ul>
                        <li style="list-style-type: none;">
                            <iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=360 height=86 src="//music.163.com/outchain/player?type=2&id=1827600686&auto=1&height=66"></iframe>
                        </li>
                        <li class="pt-2" style="list-style-type: none;">
                            <a href="likeSong?songid=${song.getSongid()}"><button type="button" class="btn btn-danger shadow" >点赞</button></a>
                            <button type="button" class="btn btn-light  ml-2"><a href="collectSong?songid=${song.getSongid()}" style="color:black">${isCollected}</a></button>
                        </li>
                        <li class="pt-3" style="list-style-type: none;">点赞数：<span class="text-info">${song.getLike()}</span> &nbsp;播放：<span
                                class="text-info">128</span></li>
                    </ul>
                </div>
            </div>

            <!-- 评论列表 -->
            <div class="mt-5">
                <div class="border-bottom-da">
                    <span class="h3 text-danger my-5">评论列表</span>&nbsp;
                    <small style="font-size: 13px;"><a href="#" class="text-dark">共${number}条评论</a></small>
                </div>
                <div class="media mb-4" style="display: flex; align-items: center;">
                    <div class="media-body"
                         style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                        <form class="w-100" action="addComment?songid=${song.getSongid()}" method="post">
                            <div class="form-group">
                                <textarea class="form-control" rows="3" placeholder="发表评论" name="comment"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">发布</button>
                        </form>
                    </div>
                </div>
                <ul class="list-unstyled mt-4">
                    <c:forEach items="${commentList}" var="comment">
                        <li class="media mb-4" style="display: flex; align-items: center;">
                            <img class="mr-3" src="${pageContext.request.contextPath}/img/user.jpg"
                                 style="height: 60px;width: 60px;padding: 5px" alt="User Image">
                            <div class="media-body"
                                 style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
                                <div>
                                    <h5 class="mt-0 mb-1">${comment.getUname()}</h5>
                                    <p>${comment.getContent()}</p>
                                </div>
                                <p style="margin-left: auto;">${comment.getCreated_at()}</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>

        </div>
        <div class="col-md-3">
            <h4 class="d-flex justify-content-between align-items-center mb-3  border-bottom-da">
                <span class="text-danger text-center px-3"><i class="bi bi-pin h5 text-danger"></i>歌手</span>
                <!-- <span class="badge badge-danger badge-pill">999</span> -->
            </h4>
            <ul class="list-unstyled">
                <li class="media p-2 border my-1">
                    <img class="mr-3" src="./img/text13.jpg" alt="">
                    <div class="media-body text-black-50">
                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>
                        <small>
                            民谣歌手，中国....
                        </small>
                    </div>
                    <i class="bi bi-star"></i>
                </li>
                <li class="media p-2 border my-1">
                    <img class="mr-3" src="./img/test12.jpg" alt="">
                    <div class="media-body text-black-50">
                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>
                        <small>
                            民谣歌手，中国....
                        </small>
                    </div>
                    <i class="bi bi-star"></i>
                </li>
                <li class="media p-2 border my-1">
                    <img class="mr-3" src="./img/text13.jpg" alt="">
                    <div class="media-body text-black-50">
                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>
                        <small>
                            民谣歌手，中国....
                        </small>
                    </div>
                    <i class="bi bi-star"></i>
                </li>
                <li class="media p-2 border my-1">
                    <img class="mr-3" src="./img/text13.jpg" alt="">
                    <div class="media-body text-black-50">
                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>
                        <small>
                            民谣歌手，中国....
                        </small>
                    </div>
                    <i class="bi bi-star"></i>
                </li>
            </ul>
        </div>
    </div>
</div>


<!-- 底部 版权 -->
<div class="bg-break text-white mt-5">

    <footer class="pt-4 pt-md-5 border-top container">
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
<!-- js 部分 jQuery -->
<script src="./js/jQuery.js" type="text/javascript" charset="utf-8"></script>
<script src="./js/bootstrap.bundle.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>