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
        .ellipsis-container {
            height: 3em; /* 设置容器的高度，可以根据需要调整 */
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2; /* 设置显示的行数 */
            -webkit-box-orient: vertical;
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
<!-- 网易轮播图   轮播效果图 -->
<div class="gg">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <div class="carousel slide show w-100 carousel-fade" id="sample" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#sample" data-slide-to="0" class="active"></li>
                        <li data-target="#sample" data-slide-to="1"></li>
                        <li data-target="#sample" data-slide-to="2"></li>
                        <li data-target="#sample" data-slide-to="3"></li>
                        <li data-target="#sample" data-slide-to="4"></li>
                        <li data-target="#sample" data-slide-to="5"></li>
                    </ol>
                    <!-- 1. 轮播的内容 -->
                    <div class="carousel-inner ml-sm-5">
                        <!-- 第1页 -->
                        <div class="carousel-item active">
                            <img src="./img/lb_01.jpg" class="w-100">
                        </div>
                        <!-- 第2页 -->
                        <div class="carousel-item">
                            <img src="./img/lb_02.jpg" class="w-100">
                        </div>
                        <!-- 第3页 -->
                        <div class="carousel-item">
                            <img src="./img/lb_03.jpg" class="w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/lb_04.jpg" class="w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/lb_05.jpg" class="w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="./img/lb_07.jpg" class="w-100">
                        </div>
                    </div>
                    <!-- 版权所有 -->
                    <a href="#sample" class="carousel-control-prev" data-slide="prev"><span
                            class="carousel-control-prev-icon"></span></a>
                    <a href="#sample" class="carousel-control-next" data-slide="next"><span
                            class="carousel-control-next-icon"></span></a>
                </div>
            </div>
            <!-- col-5  点击部分-->
            <div class="col-sm-5  d-sm-block d-none">
                <div class="carousel slide show w-100" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#sample" data-slide-to="0" class="active sr-only"></li>
                        <li data-target="#sample" data-slide-to="1" class="sr-only"></li>
                    </ol>
                    <!-- 1. 轮播的内容 -->
                    <div class="carousel-inner">
                        <!-- 第1页 -->
                        <div class="carousel-item active ml-sm-5">
                            <img src="./img/lb_tities.png" class="w-50">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 轮播结束 -->



<%--霸屏--%>
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

<!-- 第二部分 -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-9">
            <div class="border-bottom-da">
                <span class="h3 text-danger my-5">歌曲列表</span>&nbsp;
                <small style="font-size: 13px;"><a href="#" class="text-dark">共999+条评论</a></small>
            </div>
            <div class="row mt-3">
                <div class="col-md-4 col-sm-10 ">
                    <img src="./img/test06.jpg" class="rounded img-fluid">
                </div>
                <div class="pl-4 col-8">
                    <ul class="list-unstyled pt-1">
                        <li class="h3 text-danger"><a href="findMySong?uname=<%= ((User) session.getAttribute("user")).getUname() %>" style="color: black">我的歌单</a></li>
                        <li class="text-secondary "><a href="#" class="text-info"><%= ((User) session.getAttribute("user")).getUname() %></a><span
                                class="px-2">---------</span></li>
                        <li class="pt-2">
                            <button type="button" class="btn btn-danger shadow">播放全部</button>
                            <button type="button" class="btn btn-light  ml-2">分享</button>
                            <button type="button" class="btn btn-light  ml-2">下载全部</button>
                        </li>
                        <li class="pt-3">歌曲：<span class="text-info">161</span> &nbsp;播放：<span
                                class="text-info">128</span></li>
                    </ul>
                    <small class="h6">薛之谦擅长写旋律，但是编曲弱，弦乐很出彩，非常抓耳。知多少人庸庸碌碌一生，依旧不得梦想两个字的真意。愿薛之谦继续享受音乐，享受追求梦想的过程。</small>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <h4 class="d-flex justify-content-between align-items-center mb-3  border-bottom-da">
                <span class="text-danger text-center px-3"><i class="bi bi-pin h5 text-danger"></i>歌手</span>
                <!-- <span class="badge badge-danger badge-pill">999</span> -->
            </h4>
            <ul class="list-unstyled">
                <c:forEach items="${singerList}" var="singer">
                    <li class="media p-2 border my-1">
                        <img class="mr-3" src="./img/text13.jpg" alt="">
                        <div class="media-body text-black-50">
                            <h6 class="mt-0 mb-1">${singer.getName()}</h6>
                            <div class="ellipsis-container">
                                <small>
                                        ${singer.getIntro()}
                                </small>
                            </div>
                        </div>
                        <i class="bi bi-star"></i>
                    </li>
                </c:forEach>
<%--                <li class="media p-2 border my-1">--%>
<%--                    <img class="mr-3" src="./img/test12.jpg" alt="">--%>
<%--                    <div class="media-body text-black-50">--%>
<%--                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>--%>
<%--                        <small>--%>
<%--                            民谣歌手，中国....--%>
<%--                        </small>--%>
<%--                    </div>--%>
<%--                    <i class="bi bi-star"></i>--%>
<%--                </li>--%>
<%--                <li class="media p-2 border my-1">--%>
<%--                    <img class="mr-3" src="./img/text13.jpg" alt="">--%>
<%--                    <div class="media-body text-black-50">--%>
<%--                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>--%>
<%--                        <small>--%>
<%--                            民谣歌手，中国....--%>
<%--                        </small>--%>
<%--                    </div>--%>
<%--                    <i class="bi bi-star"></i>--%>
<%--                </li>--%>
<%--                <li class="media p-2 border my-1">--%>
<%--                    <img class="mr-3" src="./img/text13.jpg" alt="">--%>
<%--                    <div class="media-body text-black-50">--%>
<%--                        <h6 class="mt-0 mb-1">音乐人赵雷</h6>--%>
<%--                        <small>--%>
<%--                            民谣歌手，中国....--%>
<%--                        </small>--%>
<%--                    </div>--%>
<%--                    <i class="bi bi-star"></i>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</div>


<!-- <%--查找歌曲--%> -->
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="border-bottom-da">
                <span class="h3 text-danger my-5">发现歌曲</span>&nbsp;
                <small style="font-size: 13px;"><a href="#" class="text-dark">更多金曲等你发现</a></small>
            </div>
            <ul class="nav nav-tabs bg-break  mt-4  pl-5">
                <!-- 歌名 -->
                <li class="nav-item ">
                    <a class="nav-link active ml-5" data-toggle="tab" href="#geming">发布歌名查询</a>
                </li>
                <!-- 单曲 -->
                <li class="nav-item sr-only">
                    <a class="nav-link " data-toggle="tab" href="#ID">上传歌曲ID查询</a>
                </li>

                <!-- 歌手 -->
                <li class="nav-item">
                    <a class="nav-link " data-toggle="tab" href="#geshou">网易歌手查询</a>
                </li>
                <!-- 专辑 -->
                <li class="nav-item">
                    <a class="nav-link " data-toggle="tab" href="#zhuangji">网易专辑查询</a>
                </li>
                <!-- MV视频 -->
                <li class="nav-item ">
                    <a class="nav-link " data-toggle="tab" href="#MV">版权MV查询</a>
                </li>
                <!-- 歌曲时长查询 -->
                <li class="nav-item ">
                    <a class="nav-link " data-toggle="tab" href="#time">歌曲时长查询</a>
                </li>

            </ul>
            <form action="findSong" class="form-inline container text-center w-50 py-5">
                <div class="form-group tab-content">
                    <!-- 歌曲名  songname-->
                    <div class="tab-pane active text-center" id="geming">
                        <div class="form-inline ">
                            <div class="input-group input-group-lg">
                                <input type=" text" class="form-control" name="songname">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark border border-dark">搜 索</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ID  songid-->
                    <div class="tab-pane" id="ID">
                        <div class="form-inline">
                            <div class="input-group input-group-lg">
                                <input type=" text" class="form-control" name="songid">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark border border-dark">搜 索(songid)</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 歌手  singername-->
                    <div class="tab-pane" id="geshou">
                        <div class="form-inline">
                            <div class="input-group input-group-lg">
                                <input type=" text" class="form-control" name="singername">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark border border-dark">搜 索(singername)
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 专辑:  album-->
                    <div class="tab-pane" id="zhuangji">
                        <div class="form-inline">
                            <div class="input-group input-group-lg">
                                <input type=" text" class="form-control" name="album">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark border border-dark">搜 索(album)</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- MV -->
                    <div class="tab-pane" id="MV">
                        <div class="form-inline">
                            <div class="input-group input-group-lg">
                                <input type=" text" class="form-control" name="mv">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark border border-dark">搜 索(MV)</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 歌曲时长  time-->
                    <div class="tab-pane" id="time">
                        <div class="form-inline">
                            <div class="input-group input-group-lg">
                                <input type=" text" class="form-control" name="time">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark border border-dark">搜 索(time)</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <input type="submit" value="查询" class="form-control"><br> -->
                </div>
            </form>
<%--            <c:if test="${not empty songs}">--%>
            <div class="container">
                <table class="table table-striped text-center">
                    <tr class="bg-danger">
                        <td class="sr-only">歌曲ID</td>
                        <td>歌曲名</td>
                        <td>歌手</td>
                        <td>专辑</td>
                        <td>歌曲时长</td>
                        <td>MV</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${datas.list}" var="song">
                        <tr>
                            <td class="sr-only">${song.songid}</td>
                            <td><a style="color: black" href="findCommentBySongId?songid=${song.songid}">${song.songname}</a></td>
                            <td>${song.singername}</td>
                            <td>${song.album}</td>
                            <td>${song.time}</td>
                            <td>${song.mv}</td>
                            <td><a href="deleteSongById?songid=${song.songid}&pageNum=${datas.pageNum}"
                                   class="text-black-50 btn btn-danger btn-sm">删除</a>
                                <a href="findSongById?songid=${song.songid}"
                                   class="text-black-50 btn btn-secondary btn-sm" >修改</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <div class="text-center">
<%--                当前页${datas.pageNum} 总页数${datas.pages} 总记录数${datas.total}--%>
                <button type="button" class="btn mr-auto border btn-sm">
                    <a href="findSong?pageNum=${datas.prePage}" class="text-black-50">上一页</a></button>
                <button type="button" class="btn btn-sm border">总共${datas.pages}页，当前第${datas.pageNum}页 总记录数${datas.total}</button>
                <button type="button" class="btn ml-auto btn-sm border">
                    <a href="findSong?pageNum=${datas.nextPage}" class="text-black-50">下一页</a></button>
                 </div>
<%--                </c:if>--%>
                <div class="text-center">
                    ${shanchu}
                </div>
            </div>


        </div>


        <div class="col-md-3">
            <h4 class="d-flex justify-content-between align-items-center mb-3 border-bottom-da">
                <span class="text-danger text-center px-3"><i class="bi bi-pin h5 text-danger"></i>编辑|发布金曲</span>
                <!-- <span class="badge badge-danger badge-pill">999</span> -->
            </h4>
            <form action="updateSongById" method="post">
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">ID</label>
                    <div class="col-sm-8"><input type="text" name="songid" value="${song1.songid}" class="form-control"
                                                 readonly/></div>
                </div>
                <div class=" form-group row">
                    <label class="col-sm-4 col-form-label">歌名</label>
                    <div class="col-sm-8"><input type="text" class="form-control" name="songname" value="${song1.songname}"/></div>
                </div>
                <div class=" form-group row">
                    <label class="col-sm-4 col-form-label">歌手</label>
                    <div class="col-sm-8"> <input type="text"class="form-control"  name="singername" value="${song1.singername}"/></div>
                </div>
                <div class=" form-group row">
                    <label class="col-sm-4 col-form-label">专辑</label>
                    <div class="col-sm-8"><input type="text" class="form-control" name="album" value="${song1.album}"/></div>
                </div>
                <div class=" form-group row">
                    <label class="col-sm-4 col-form-label">时长</label>
                    <div class="col-sm-8"><input type="text" class="form-control" name="time" value="${song1.time}"/></div>
                </div>
                <div class=" form-group row">
                    <label class="col-sm-4 col-form-label">MV</label>
                    <div class="col-sm-8"><input type="text" class="form-control" name="mv" value="${song1.mv}"/></div>
                </div>
                <div class="text-center">
                <input type="submit" class="btn btn-danger ml-4" value="确认修改">
                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#pfs">+发布歌曲</button>
                </div>
            </form>

        </div>
    </div>
</div>

</div>
<!-- 模态框 -->
<div class="modal" id="pfs">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- 模态框的头部（一般要写） -->
            <div class="modal-header">
                <h4 class="modal-title"> 发 布 歌 曲</h4>
                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
            </div>
            <!-- 模态框的主体（必选项） -->
            <div class="modal-body">
                <form action="addSong" method="post" class="text-right">
                    <!-- 歌名 -->
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">歌名：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="songname">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">歌手：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="singername">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">专辑：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="album">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">时长：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="time">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">MV：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="mv">
                        </div>
                    </div>
                    <div class="modal-footer border">
                        <input type="submit" class="btn btn-primary" value="上 传"/>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">取 消</button>
                    </div>

                </form>
            </div>
            <!-- 模态框的底部（可选项） -->

        </div>
    </div>
</div>
<!-- 修改模态框 -->
<div class="modal" id="XG">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- 模态框的头部（一般要写） -->
            <div class="modal-header">
                <h4 class="modal-title"> 修 改 歌 曲</h4>
                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
            </div>
            <!-- 模态框的主体（必选项） -->
            <div class="modal-body">
                <form action="updateSongById" method="post" class="text-right">
                    <!-- 歌名 -->
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">歌名：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="songname" value="${song1.songname}" readonly/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">歌手：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="singername" value="${song1.singername}"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">专辑：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="album" value="${song1.album}"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">时长：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="time" value="${song1.time}"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-md-4 text-md-right">MV：</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control " name="mv" value="${song1.mv}"/>
                        </div>
                    </div>
                    <!-- 模态框的底部（可选项） -->
                    <div class="modal-footer border">
                        <input type="submit" class="btn btn-primary" value="修改"/>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">取 消</button>
                    </div>

                </form>
            </div>

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
