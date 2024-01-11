<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta property="og:image" content="img/logo.png"/>
    <link href="img/logo.png" rel="shortcut icon" type="image/x-icon" style="border-radius: 50%;">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>我们的音乐 · 网易云</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"/>
    <style>
        body {
            background: url(./img/4.jpg) no-repeat;
            background-size: 100% 100%;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .logo {
            width: 176px;
            height: 69px;
            background: url(./img/topbar.png) no-repeat;
            transform: scale(1.5)
        }
    </style>
    <link href="./css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
<form class="form-signin" action="register" method="post">
    <h1 class="logo ml-5"></h1>

    <label for="inputEmail" class="sr-only">账号</label>
    <input type="text" id="inputEmail" name="uname" class="form-control" value="admin" placeholder="您的账号..." required autofocus>
    <label for="inputPassword" class="sr-only">密码</label>
    <input type="password" id="inputPassword" name="pwd" class="form-control" value="123123" placeholder="您的密码..." required>
    <button class="btn btn-lg btn-danger btn-block" type="submit">注 &nbsp; 册</button>
    <p class="mt-5 mb-3 text-muted">&copy; 网易云音乐有限</p>
</form>
</body>
</html>
