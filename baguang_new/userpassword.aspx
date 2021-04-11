<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userpassword.aspx.cs" Inherits="baguang_new.userpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link rel="stylesheet" type="text/css" href="jsgrid/demos/demos.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'/>

    <link rel="stylesheet" type="text/css" href="jsgrid/css/jsgrid.css"/>
    <link rel="stylesheet" type="text/css" href="jsgrid/css/theme.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="datapicket/css/datepicker.css"/>
   
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'/>


     <link rel="stylesheet" type="text/css" href="jsgrid/demos/demos.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="jsgrid/css/jsgrid.css" />
    <link rel="stylesheet" type="text/css" href="jsgrid/css/theme.css" />

    <script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
    <script src="db.js"></script>

    <script src="jsgrid/src/jsgrid.core.js"></script>
    <script src="jsgrid/src/jsgrid.load-indicator.js"></script>
    <script src="jsgrid/src/jsgrid.load-strategies.js"></script>
    <script src="jsgrid/src/jsgrid.sort-strategies.js"></script>
    <script src="jsgrid/src/jsgrid.field.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.number.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.text.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.select.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.checkbox.js"></script>

    <title></title>
    <style type="text/css">
        .div1
        {
            position:absolute;
            top:0%;
            width:100%;
            left:0%;
            height:100%;
            background-image:url("image//bg.png")
        }
       .Label_Add_Admin_User_Password{
           position:absolute;
           left:10px;
           top:100px;
           width:150px;
           height:20px;
           z-index:1;
           color:white;
       }
       .Label_Add_User_User_Password
       {
           position:absolute;
           left:10px;
           top:450px;
           width:150px;
           height:20px;
           z-index:1;
           color:white;
       }

       .TextBox_Admin_UserName
       {
           position:absolute;
           left:300px;
           top:100px;
           width:200px;
           height:20px;
           z-index:1;
       }
       .TextBox_User_UserName
       {
           position:absolute;
           left:300px;
           top:450px;
           width:200px;
           height:20px;
           z-index:1;
       }
       .Label_Admin_UserName
       {
           position:absolute;
           left:180px;
           top:100px;
           width:100px;
           height:20px;
           z-index:1;
           color:white;
       }
       .Label_User_UserName
       {
           position:absolute;
           left:180px;
           top:450px;
           width:100px;
           height:20px;
           z-index:1;
           color:white;
       }
       .Label_Admin_PassWord
       {
           position:absolute;
           left:550px;
           top:100px;
           width:100px;
           height:20px;
           z-index:1;
           color:white;
       }
       .Label_User_PassWord
       {
           position:absolute;
           left:550px;
           top:450px;
           width:100px;
           height:20px;
           z-index:1;
           color:white;
       }
       .TextBox_Admin_PassWord
       {
           position:absolute;
           left:670px;
           top:100px;
           width:200px;
           height:20px;
           z-index:1;
       }
       .TextBox_User_PassWord
       {
           position:absolute;
           left:670px;
           top:450px;
           width:200px;
           height:20px;
           z-index:1;
       }
       .Button_Admin_UserName_PassWord
       {
           position:absolute;
           left:900px;
           top:100px;
           width:100px;
           height:20px;
           z-index:1;
       }
        .Button_User_UserName_PassWord {
            position:absolute;
           left:900px;
           top:450px;
           width:100px;
           height:20px;
           z-index:1;
        }

       body {
            font-family: 'Roboto Condensed';
            background: #fafafa;
            background-color:lightblue;
        }
        .p20 {
            padding: 20px;
            background-color:lightblue;
        }

        .mt20 {
            margin-top: 20px;
            background-color:lightblue;
        }

        .mt40 {
            position:absolute;
            top: 0%;
            margin-left:5%;
           height:90%;
           width:100%;
           background-color:lightblue;


        }

        .mt10 {
            margin-top: 10px;
            background-color:lightblue;
        }

        .hide {
            display: none;
            background-color:lightblue;
        }

        body {
            height: 100%;
            background-color:lightblue;
        }

        .c999 {
            color: #999;
            background-color:lightblue;
            font-size: 12px;
        }

         .datagrid_div
        {
            position:absolute;
            top:140px;
            width:100%;
            height:400px;
            background-color:lightblue;
            color:black;
        }
        .datagrid_div1 {
             position:absolute;
            top:230px;
            width:100%;
            height:400px;
             background-color:lightblue;
           color:black;
        }

        .label_yuzhi {
             position:absolute;
             left:10px;
            top:90%;
            width:120px;
            height:20px;
            color:white;
        }
        
        .input_yuzhi {
             position:absolute;
             left:100px;
            top:90%;
            width:200px;
            height:20px;
        }

        .btn_ok{
            position:absolute;
             left:350px;
            top:90%;
            width:50px;
            height:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div1">

        <!--添加管理员用户名密码-->
        <label id ="Label_Add_Admin_User_Password" class="Label_Add_Admin_User_Password">添加管理员用户</label>
        <label id="Label_Admin_UserName" class="Label_Admin_UserName">用户名</label>
        <input id="TextBox_Admin_UserName" type="text" class="TextBox_Admin_UserName"/>
        <label id="Label_Admin_PassWord" class="Label_Admin_PassWord">密码</label>
        <input id="TextBox_Admin_PassWord" type="text" class="TextBox_Admin_PassWord"/>
        <input id="Button_Admin_UserName_PassWord" type="button" value="添加" class="Button_Admin_UserName_PassWord"/>
        <div id="jsGrid" class="datagrid_div">
        </div>
        <!--添加普通用户名和密码-->
        <label id="Label_Add_User_User_Password" class="Label_Add_User_User_Password">添加普通用户名密码</label>
        <label id="Label_User_UserName" class="Label_User_UserName">用户名</label>
         <input id="TextBox_User_UserName" type="text" class="TextBox_User_UserName"/>
        <label id="Label_User_PassWord" class="Label_User_PassWord">密码</label>
        <input id="TextBox_User_PassWord" type="text" class="TextBox_User_PassWord"/>
        <input id="Button_User_UserName_PassWord" type="button" value="添加" class="Button_User_UserName_PassWord"/>
        <div id="jsGrid1" class="datagrid_div1">
    </div>

        <label id="yuzhishezhi" class="label_yuzhi" runat="server">报警阈值设置</label>
        <input  id="input_baojing" class="input_yuzhi" runat="server" type="text" value="2.0"/>
        <input id="btn_yuzhi" class="btn_ok" runat="server" type="button" value="确定"/>
        </div>
    </form>
    
    <script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
    <script src="jsgrid/demos/db.js"></script>

    <script src="jsgrid/src/jsgrid.core.js"></script>
    <script src="jsgrid/src/jsgrid.load-indicator.js"></script>
    <script src="jsgrid/src/jsgrid.load-strategies.js"></script>
    <script src="jsgrid/src/jsgrid.sort-strategies.js"></script>
    <script src="jsgrid/src/jsgrid.field.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.text.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.number.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.select.js"></script>
    <script src="jsgrid/src/fields/jsgrid.field.checkbox.js"></script>

   
    <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="datapicket/js/datepicker.all.js"></script>
    <script src="datapicket/js/datepicker.en.js"></script>
     <script type="text/javascript">
         // 确定管理员用户名密码


         var yuzhhi = "<%=Get_Yuzhi()%>";


         var input_yuzhi = document.getElementById("input_baojing");

         input_yuzhi.value = yuzhhi;

       

         var button_admin_username_password = document.getElementById("Button_Admin_UserName_PassWord");
         var button_user_username_password = document.getElementById("Button_User_UserName_PassWord");
         var button_ok = document.getElementById("btn_yuzhi");



         Reflush_Admin_Grid();
         Reflush_User_Grid();
         button_admin_username_password.onclick=function(event)
         {
             //alert("1");
             var admin_username = document.getElementById("TextBox_Admin_UserName");
             //alert("2");
             var admin_password = document.getElementById("TextBox_Admin_PassWord");
             //alert("3");
             $.ajax({
                 type: "POST",
                 async: false,
                 url: '/userpassword.aspx/Insert_Admin_UserName_PassWord',
                 data: '{"username":"'+admin_username.value+'","password":"'+admin_password.value+'"}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "text",
                 
                 success: function (response) {
                    
                 },
                
                 
                 error: function (XMLHttpRequest, textStatus, errorThrown) {
                 
             }
             });
             Reflush_Admin_Grid();
             Reflush_User_Grid();
             //alert("4");
         }
         button_user_username_password.onclick = function (event) {
             //alert("1");
             var admin_username = document.getElementById("TextBox_User_UserName");
             //alert("2");
             var admin_password = document.getElementById("TextBox_User_PassWord");
             //alert("3");
             $.ajax({
                 type: "POST",
                 async: false,
                 url: '/userpassword.aspx/Insert_User_UserName_PassWord',
                 data: '{"username":"' + admin_username.value + '","password":"' + admin_password.value + '"}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "text",

                 success: function (response) {
                     //alert(response);
                 },


                 error: function (XMLHttpRequest, textStatus, errorThrown) {
                     //$("#p_test").innerHTML = "there is something wrong!";

                     // alert(XMLHttpRequest.error);
                     //alert(textStatus);
                 }
             });
             //Reflush_Admin_Grid();
             Reflush_User_Grid();
             Reflush_Admin_Grid();
             //alert("4");
         }


         button_ok.onclick=function(event)
         {
             var yuzhi_text = document.getElementById("input_baojing");
             $.ajax({
                 type: "POST",
                 async: false,
                 url: '/mywebserver.asmx/Set_Yuzhi',
                 data: '{"yuzhi":"' + yuzhi_text.value.toString() + '"}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "text",

                 success: function (response) {
                     //alert(response);
                 },


                 error: function (XMLHttpRequest, textStatus, errorThrown) {
                     //$("#p_test").innerHTML = "there is something wrong!";

                     // alert(XMLHttpRequest.error);
                     //alert(textStatus);
                 }
             });
         }

         function  Reflush_Admin_Grid()
         {
             // 从ini里读取admin的用户名密码
             $.ajax({
                 type: "POST",
                 async: false,
                 url: '/userpassword.aspx/Return_Admin_UserName_Password',
                 data: '{}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "text",

                 success: function (response) {
                     //alert(response);
                     read_admin_json_value(response);
                 },


                 error: function (XMLHttpRequest, textStatus, errorThrown) {
                     
                 }
             });
             
         }
         function Reflush_User_Grid() {
             // 从ini里读取admin的用户名密码
             $.ajax({
                 type: "POST",
                 async: false,
                 url: '/userpassword.aspx/Return_User_UserName_Password',
                 data: '{}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "text",

                 success: function (response) {
                     //alert(response);
                     read_user_json_value(response);
                 },


                 error: function (XMLHttpRequest, textStatus, errorThrown) {

                 }
             });

         }

         function read_admin_json_value(string) {

             var length = string.length;
             //alert(string);
             // 数量读出来之后
             //jubu_time_list = [];
             //jubu_value_list = [];
            

             var pos_is = true;
             var mycount = 0;
             var mylist = new Array();
             for (var i = 0; i < length - 1; i++) {

                 if (string.substr(i, 2) == '":') {


                     for (var j = i; j < length; j++) {
                         var username;
                         var password;
                         if (string.substr(j, 1) == ',') {
                            
                             username = string.substr(i + 3, j - i - 4);
                             break;
                         }
                         if (string.substr(j, 1) == '[') {
                             // alert("引导");
                             break;
                             //
                         }
                         if (string.substr(j, 1) == '}') {
                             // 位移
                             //alert("value");
                             // alert(string.substr(i + 2, j - i - 2));
                             //alert()
                             //var weiyi = string.substr(i + 2, j - i - 2);
                             //alert("位移2："+ weiyi);
                             //  chauxn_weiyi2.push(weiyi);
                             password = string.substr(i + 3, j - i - 4);
                             mylist.push({ "用户名": username, "密码": password });

                             break;
                         }
                     }
                 }
             }
             $(function () {

                 $("#jsGrid").jsGrid({
                     height: "260px",
                     width: "100%",
                     sorting: true,
                     paging: false,

                     fields: [
                         { name: "用户名", type: "text", width: 250 },
                         { name: "密码", type: "text", width: 150 }
                         
                     ],
                     data:mylist
                 });

             });

             //alert(mylist);
         }
         function read_user_json_value(string) {

             var length = string.length;
             //alert(string);
             // 数量读出来之后
             //jubu_time_list = [];
             //jubu_value_list = [];


             var pos_is = true;
             var mycount = 0;
             var mylist = new Array();
             for (var i = 0; i < length - 1; i++) {

                 if (string.substr(i, 2) == '":') {


                     for (var j = i; j < length; j++) {
                         var username;
                         var password;
                         if (string.substr(j, 1) == ',') {

                             username = string.substr(i + 3, j - i - 4);
                             break;
                         }
                         if (string.substr(j, 1) == '[') {
                             // alert("引导");
                             break;
                             //
                         }
                         if (string.substr(j, 1) == '}') {
                             // 位移
                             //alert("value");
                             // alert(string.substr(i + 2, j - i - 2));
                             //alert()
                             //var weiyi = string.substr(i + 2, j - i - 2);
                             //alert("位移2："+ weiyi);
                             //  chauxn_weiyi2.push(weiyi);
                             password = string.substr(i + 3, j - i - 4);
                             mylist.push({ "用户名": username, "密码": password });

                             break;
                         }
                     }
                 }
             }
             $(function () {

                 $("#jsGrid1").jsGrid({
                     height: "260px",
                     width: "100%",
                     sorting: true,
                     paging: false,

                     fields: [
                         { name: "用户名", type: "text", width: 250 },
                         { name: "密码", type: "text", width: 150 }

                     ],
                     data: mylist
                 });

             });

             //alert(mylist);
         }
     </script>
</body>
</html>
