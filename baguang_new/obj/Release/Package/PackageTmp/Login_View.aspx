<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_View.aspx.cs" Inherits="baguang_new.Login_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>坝光收费站边坡健康监测系统登录</title>
    <style type="text/css">
        .bg_image
        {
            position:absolute;
            top:0%;
            left:0%;
            width:100%;
            height:100%;
            z-index:2;
        }     
        .input_username 
        {
            position:absolute;
            top:34%;
            left:49.3%;
            width:25%;
            height:6%;
            z-index:2;
            font-size:x-large;
            background-color:transparent;
            color:white;
            border:none;
        }
        .input_password
        {
            position:absolute;
            top:43%;
            left:49.3%;
            width:25%;
            height:6%;
            z-index:2;
            font-size:x-large;
            background-color:transparent;
            color:white;
            border:none;
        }
        .button_ok{
            position:absolute;
            top:57.3%;
            left:49.2%;
            width:25.5%;
            height:6.6%;
            z-index:2;
        }
        .title
        {
            position:absolute;
            top:10%;
            left:45%;
            width:40%;
            height:8%;
            z-index:3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    </div>
       <img id="img_gb" src="image/login_over3.png" class="bg_image"/>
        <input id="username" type="text" class="input_username"/>
        <input id="password" type="password" class="input_password"/>
        <input id="button_ok" type="button" value="登陆" class="button_ok" />
        <img id="title" class="title" src="image/坝光收费站边坡健康监测系统-文字效果.png"/>
    </form>
</body>
</html>
<script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript">
    var username = document.getElementById("username");
    var password = document.getElementById("password");

    var button_ok = document.getElementById("button_ok");

    button_ok.onclick = function (event) {
        if (username.value == "admin" && password.value == "admin") {

            setCookie("user", "admin", 7);
            window.open("MainView.aspx", "", "", true);
            window.close();
            return;
        }

        $.ajax({
            url: "/mywebserver.asmx/user_limit",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{username:'" + username.value.toString() + "',password:'"+password.value.toString()+"'}",
            success: function (data) {
                // 得到的结果是data
                //alert($.parseJSON(data) );
                if (data == "{\"d\":\"user\"}")
                {
                    setCookie("user", "user", 7);
                    window.open("MainView.aspx", "", "", true);
                    window.close();
                    return;
                }
                if(data=="{\"d\":\"admin\"}")
                {
                    setCookie("user", "admin", 7);
                    window.open("MainView.aspx", "", "", true);
                    window.close();
                    return;
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                return $.parseJSON(data.responseText).Message;
            },
            complete: function (data) {

            }
        });



    }


    var setCookie = function (name, value, day) {
        //当设置的时间等于0时，不设置expires属性，cookie在浏览器关闭后删除
        var expires = day * 24 * 60 * 60 * 1000;
        var exp = new Date();
        exp.setTime(exp.getTime() + expires);
        document.cookie = name + "=" + value + ";expires=" + exp.toUTCString();
    };

 </script>