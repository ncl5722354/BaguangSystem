<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newwarningsystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 628px;
        }
        .auto-style2 {
            height: 660px;
        }
        .auto-style3 {
            position: absolute;
            top: 0%;
            left: 0%;
            z-index: 1;
            width: 100%;
            height: 100%;
        }
        .auto-style7 {
            position: absolute;
            top: 39.5%;
            left: 41%;
            z-index:4;
            width:20%;
            height:5%;
        }
        .auto-style8 {
            position: absolute;
            top: 45%;
            left: 41%;
            z-index:4;
            width:20%;
            height:5%;
        }
        
        .auto-style9 {
            position: absolute;
            top: 52%;
            left: 42%;
            z-index: 1;
            width: 15%;
            height: 4%;
            border-radius:10px,10px,10px,10px;
        }
        .auto-style10 {
            position: absolute;
            top: 760px;
            left: 500px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
    <div class="auto-style1">
        
        <asp:Image ID="Image1" runat="server" CssClass="auto-style3" ImageUrl="~/Resource/login_over.png" BorderColor="#FF6600" />
        <asp:TextBox ID="TextBox_username" runat="server" CssClass="auto-style7" Font-Names="黑体" Font-Size="20pt"></asp:TextBox>
        <asp:TextBox ID="TextBox_password" runat="server" CssClass="auto-style8" Font-Names="黑体" Font-Size="20pt" TextMode="Password"></asp:TextBox>
        <input type="button" id="btn_ok" class="auto-style9" value="登录" runat="server"/>
        <asp:Label ID="Label_error" runat="server" CssClass="auto-style10" style="z-index: 1" Text="用户名或密码错误" ForeColor="#990000"></asp:Label>
    </div>
    </form>
</body>
    
</html>
<script type="text/javascript">
    var btn_ok = document.getElementById("btn_ok");
    btn_ok.onclick=function(event)
    {

        var txt_username = document.getElementById("TextBox_username").value;
        var txt_password = document.getElementById("TextBox_password").value;
       
       

       // alert("username:" + txt_username + " password:" + txt_password);

        if (txt_username == 'admin' && txt_password == 'admin') {
            setCookie('userName', txt_username, 7);
            setCookie('password', txt_password, 7);
            window.open('MainMap.aspx', "_self");
        }

        if (txt_username == 'admin' && txt_password == 'adminadmin') {
            setCookie('userName', txt_username, 7);
            setCookie('password', txt_password, 7);
            window.open('MainMap.aspx', "_self");
        }
    }
   

    function click(event)
    {
       

    }

    var setCookie = function (name, value, day) {
        //当设置的时间等于0时，不设置expires属性，cookie在浏览器关闭后删除
        var expires = day * 24 * 60 * 60 * 1000;
        var exp = new Date();
        exp.setTime(exp.getTime() + expires);
        document.cookie = name + "=" + value + ";expires=" + exp.toUTCString();
    };
    //删除cookie
    var delCookie = function (name) {
        setCookie(name, ' ', -1);
    };

</script>