<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baobiaotongji.aspx.cs" Inherits="baguang_new.Baobiaotongji" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>报表统计</title>
    <style type="text/css">
        .selectecd_title_div
        {
            position:absolute;
            left:0%;
            top:0%;
            width:100%;
            height:10%;
        }

        .title_img
        {
            position:absolute;
            left:0%;
            top:0%;
            width:100%;
            height:100%;
            z-index:1;
        }

        .title_text
        {
            position:absolute;
            left:10%;
            top:20%;
            width:30%;
            height:60%;
            z-index:1;
        }

        .btn_zhuye
        {
            position:absolute;
            left:50%;
            top:10%;
            width:3%;
            height:45%;
            z-index:2;
            
        }

        .btn_baobiao
        {
            position:absolute;
            left:55%;
            top:10%;
            width:3%;
            height:45%;
            z-index:2;
        }

        .btn_chaxun
        {
            position:absolute;
            left:60%;
            top:10%;
            width:3%;
            height:45%;
            z-index:2;
        }

        .label_zhuye
        {
            position:absolute;
            left:50%;
            top:65%;
            width:3%;
            height:20%;
            z-index:2;
            color:white;
        }

        .label_baobiao
        {
            position:absolute;
            left:55%;
            top:65%;
            width:3%;
            height:20%;
            z-index:2;
            color:white;
        }

        .main_map{
            position:absolute;
            left:0%;
            top:10%;
            width:100%;
            height:90%;
            z-index:2;

        }

        .map_bg{
             position:absolute;
            left:0%;
            top:0%;
            width:100%;
            height:100%;
            z-index:2;
        }

        .label_time{
            position:absolute;
            left:80%;
            top:20%;
            width:20%;
            height:60%;
            z-index:3;
        }

        .icon
        {
            position:absolute;
            left:3%;
            top:3%;
            width:5%;
            height:97%;
            z-index:2;
        }

        .pos1_button
        {
            position:absolute;
            left:30%;
            top:35%;
            width:30px;
            height:30px;
            z-index:3;

        }

        .pos2_button
        {
            position:absolute;
            left:60%;
            top:30%;
            width:30px;
            height:30px;
            z-index:3;

        }

        .pos3_button
        {
            position:absolute;
            left:60%;
            top:40%;
            width:30px;
            height:30px;
            z-index:3;

        }

        .pos4_button
        {
            position:absolute;
            left:20%;
            top:43%;
            width:30px;
            height:30px;
            z-index:3;

        }

        .pos5_button
        {
            position:absolute;
            left:40%;
            top:43%;
            width:30px;
            height:30px;
            z-index:3;

        }

        .pos6_button
        {
            position:absolute;
            left:52%;
            top:43%;
            width:30px;
            height:30px;
            z-index:3;

        }

        .pos7_button
        {
            position:absolute;
            left:75%;
            top:43%;
            width:30px;
            height:30px;
            z-index:3;

        }


        .circle1 {
            position: absolute;
            top: 35%;
            left: 27%;
            z-index: 2;
             width: 9%;
            height: 5%;
            border-radius:100%;
             border-color:red;
             border-width:3px;
             opacity:0.5;    
        }

        .circle2 {
            position: absolute;
            top: 30%;
            left: 57%;
            z-index: 2;
             width: 9%;
            height: 5%;
            border-radius:100%;
             border-color:red;
             border-width:3px;
             opacity:0.5;    
        }

        .circle3 {
            position: absolute;
            top: 40%;
            left: 57%;
            z-index: 2;
             width: 9%;
            height: 5%;
            border-radius:100%;
             border-color:red;
             border-width:3px;
             opacity:0.5;    
        }

        .circle4{
            position:absolute;
            top:43%;
            left:17%;
            z-index:2;
            width:9%;
            height:5%;
            border-radius:100%;
            border-color:red;
            border-width:3px;
            opacity:0.5;
        }

        .circle5{
            position:absolute;
            top:43%;
            left:37%;
            z-index:2;
            width:9%;
            height:5%;
            border-radius:100%;
            border-color:red;
            border-width:3px;
            opacity:0.5;
        }
        
        .circle6{
            position:absolute;
            top:43%;
            left:49%;
            z-index:2;
            width:9%;
            height:5%;
            border-radius:100%;
            border-color:red;
            border-width:3px;
            opacity:0.5;
        }

        .circle7{
            position:absolute;
            top:43%;
            left:72%;
            z-index:2;
            width:9%;
            height:5%;
            border-radius:100%;
            border-color:red;
            border-width:3px;
            opacity:0.5;
        }

        .biaochi_panel{
                position:absolute;
                top:15%;
                left:0%;
                width:13%;
                height:75%;
                z-index:2;
                opacity:0.5;
            }

        .panel_baobiao{
            position:absolute;
            top:15%;
            left:35%;
            width:50%;
            height:75%;
            z-index:1;

        }
        .div_reading
        {
            position:absolute;
            top:0%;
            left:0%;
            width:100%;
            height:100%;
            z-index:10;
            opacity:0.5;
            background-color:white;
            visibility:hidden;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager>  <!--实现界面的异步更新-->

    <div id="selected_title" class="selectecd_title_div">
        <img id="title_bg_img" class="title_img" runat="server" src="~/image/title_bg.png"/>
        <img  id="title_text" class="title_text" runat="server" src="~/image/坝光收费站边坡健康监测系统-文字效果.png"/>
        <input id="btn_zhuye" class="btn_zhuye" runat="server" type="image"  src="~/image/主页.png"/>
        <label id="label_zhuye" class="label_zhuye">主页</label>
        <input id="btn_baobiao" class="btn_baobiao" runat="server" type="image" src="~/image/报表.png"/>
        <label id="label_baobiao" class="label_baobiao">报表</label>
        <img  id="icon" class="icon" src="image/LOGO.png"/>
        <input  id="btn_qushi" style="position:absolute;left:45%;top:10%;height:45%;width:3%;z-index:3" type="image" src="image/查询.png"/>
        <label id="label_qushi" style="position:absolute;left:45%;top:65%;height:20%;width:3%;z-index:3;text-align:center;color:white">趋势</label>
       

        <!--异步更新的部分-->
        <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label_Time" CssClass="label_time" runat="server" Text="当前时间" ForeColor="White"></asp:Label>
                <asp:Timer ID="Timer_Label" runat="server" Interval="1000"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>

    <div id="main_map" class="main_map">
        <div id="div_reading" class="div_reading"></div>
        <label id="title_label" style="position:absolute;left:20%;top:6%;width:60%;height:4%;text-align:center;vertical-align:central;font-size:x-large;">坝光收费站边坡健康变化情况报表</label>
         <!--开始时间与结束时间标记-->
        <label id="select_kaishi" style="position:absolute;left:1%;top:12%;width:10%;height:2%;text-align:center;vertical-align:central;">开始时间</label>
        <label id="select_jieshu" style="position:absolute;left:1%;top:25%;width:10%;height:2%;text-align:center;vertical-align:central;">结束时间</label>
        
        <label id="start_year" style="position:absolute;left:12%;top:12%;width:3%;height:2%;text-align:center;vertical-align:central;">2020</label>
        <label id="start_year_" style="position:absolute;left:15%;top:12%;width:1%;height:2%;text-align:center;vertical-align:central;">-</label>
        <label id="start_month" style="position:absolute;left:16%;top:12%;width:2%;height:2%;text-align:center;vertical-align:central;">06</label>
        <label id="start_month_" style="position:absolute;left:18%;top:12%;width:1%;height:2%;text-align:center;vertical-align:central;">-</label>
        <label id="start_day" style="position:absolute;left:19%;top:12%;width:2%;height:2%;text-align:center;vertical-align:central;">01</label>

        <label id="start_hour" style="position:absolute;left:22%;top:12%;width:2%;height:2%;text-align:center;vertical-align:central;">00</label>
        <label id="start_hour_" style="position:absolute;left:24%;top:12%;width:1%;height:2%;text-align:center;vertical-align:central;">:</label>
        <label id="start_min" style="position:absolute;left:25%;top:12%;width:2%;height:2%;text-align:center;vertical-align:central;">00</label>
        <label id="start_min_" style="position:absolute;left:27%;top:12%;width:1%;height:2%;text-align:center;vertical-align:central;">:</label>
        <label id="start_sec" style="position:absolute;left:28%;top:12%;width:2%;height:2%;text-align:center;vertical-align:central;">00</label>


        <label id="end_year" style="position:absolute;left:12%;top:25%;width:3%;height:2%;text-align:center;vertical-align:central;">2020</label>
        <label id="end_year_" style="position:absolute;left:15%;top:25%;width:1%;height:2%;text-align:center;vertical-align:central;">-</label>
        <label id="end_month" style="position:absolute;left:16%;top:25%;width:2%;height:2%;text-align:center;vertical-align:central;">06</label>
        <label id="end_month_" style="position:absolute;left:18%;top:25%;width:1%;height:2%;text-align:center;vertical-align:central;">-</label>
        <label id="end_day" style="position:absolute;left:19%;top:25%;width:2%;height:2%;text-align:center;vertical-align:central;">01</label>

        <label id="end_hour" style="position:absolute;left:22%;top:25%;width:2%;height:2%;text-align:center;vertical-align:central;">00</label>
        <label id="end_hour_" style="position:absolute;left:24%;top:25%;width:1%;height:2%;text-align:center;vertical-align:central;">:</label>
        <label id="end_min" style="position:absolute;left:25%;top:25%;width:2%;height:2%;text-align:center;vertical-align:central;">00</label>
        <label id="end_min_" style="position:absolute;left:27%;top:25%;width:1%;height:2%;text-align:center;vertical-align:central;">:</label>
        <label id="end_sec" style="position:absolute;left:28%;top:25%;width:2%;height:2%;text-align:center;vertical-align:central;">00</label>
        
        <img id="year_start_up"  style="position:absolute;left:12%;top:7%;width:3%;height:5%;" src="image/up.png" /> 
        <img id="month_start_up"  style="position:absolute;left:16%;top:7%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="day_start_up"  style="position:absolute;left:19%;top:7%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="hour_start_up"  style="position:absolute;left:22%;top:7%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="min_start_up"  style="position:absolute;left:25%;top:7%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="sec_start_up"  style="position:absolute;left:28%;top:7%;width:2%;height:5%;" src="image/up.png" /> 

        <img id="year_start_donw"  style="position:absolute;left:12%;top:15%;width:3%;height:5%;" src="image/down.png" /> 
        <img id="month_start_down"  style="position:absolute;left:16%;top:15%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="day_start_down"  style="position:absolute;left:19%;top:15%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="hour_start_down"  style="position:absolute;left:22%;top:15%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="min_start_down"  style="position:absolute;left:25%;top:15%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="sec_start_down"  style="position:absolute;left:28%;top:15%;width:2%;height:5%;" src="image/down.png" /> 
        
        <img id="year_end_up"  style="position:absolute;left:12%;top:20%;width:3%;height:5%;" src="image/up.png" /> 
        <img id="month_end_up"  style="position:absolute;left:16%;top:20%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="day_end_up"  style="position:absolute;left:19%;top:20%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="hour_end_up"  style="position:absolute;left:22%;top:20%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="min_end_up"  style="position:absolute;left:25%;top:20%;width:2%;height:5%;" src="image/up.png" /> 
        <img id="sec_end_up"  style="position:absolute;left:28%;top:20%;width:2%;height:5%;" src="image/up.png" /> 

        <img id="year_end_donw"  style="position:absolute;left:12%;top:28%;width:3%;height:5%;" src="image/down.png" /> 
        <img id="month_end_down"  style="position:absolute;left:16%;top:28%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="day_end_down"  style="position:absolute;left:19%;top:28%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="hour_end_down"  style="position:absolute;left:22%;top:28%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="min_end_down"  style="position:absolute;left:25%;top:28%;width:2%;height:5%;" src="image/down.png" /> 
        <img id="sec_end_down"  style="position:absolute;left:28%;top:28%;width:2%;height:5%;" src="image/down.png" /> 

        <input id="button_ok" type="button" style="position:absolute;left:10%;top:40%;width:10%;height:7%;" value="确  定"/>

        <!--用来放报表的位置-->
        <asp:Panel ID="baobiao_panel" runat="server" CssClass="panel_baobiao" BackColor="LightGray" ScrollBars="Auto">
            <label id="baobiao_title" style="position:absolute;top:2%;left:10%;width:80%;height:5%;text-align:center;font-size:larger;">标题</label>
            
            <!--坡道1相关-->
            <label id="po1_start_title" ></label>
            <canvas id="pos1_start_canvas"  ></canvas>
             <label id="po1_end_title" ></label>
            <canvas id="pos1_end_canvas" ></canvas>
            <label id="po1_cha_title" style="position:absolute;top:10%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">坡道1标题 </label>
            <canvas id="pos1_cha_canvas" style="position:absolute; left:0%;top:20%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
             <label id="x_axis" style="position:absolute;left:0%;top:10%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
             <label id="y_axis" style="position:absolute;left:50%;top:95%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>

            <!--坡道2相关-->
            <label id="po2_start_title"  ></label>
            <canvas id="pos2_start_canvas"   ></canvas>
             <label id="po2_end_title" ></label>
            <canvas id="pos2_end_canvas" ></canvas>
            <label id="po2_cha_title" style="position:absolute;top:105%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">坡道2标题 </label>
            <canvas id="pos2_cha_canvas" style="position:absolute; left:0%;top:115%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
             <label id="x_axis1" style="position:absolute;left:0%;top:105%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
             <label id="y_axis1" style="position:absolute;left:50%;top:190%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>

            <!--坡道3相关-->
            <label id="po3_start_title" ></label>
            <canvas id="pos3_start_canvas"  ></canvas>
             <label id="po3_end_title" ></label>
            <canvas id="pos3_end_canvas" ></canvas>
            <label id="po3_cha_title" style="position:absolute;top:200%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">坡道3标题 </label>
            <canvas id="pos3_cha_canvas" style="position:absolute; left:0%;top:210%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
             <label id="x_axis2" style="position:absolute;left:0%;top:200%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
             <label id="y_axis2" style="position:absolute;left:50%;top:285%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>

            <!--管道1相关-->
            <label id="guan1_start_title"  ></label>
            <canvas id="guan1_start_canvas"   ></canvas>
             <label id="guan1_end_title"></label>
            <canvas id="guan1_end_canvas" ></canvas>
            <label id="guan1_cha_title" style="position:absolute;top:295%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">管道1标题 </label>
            <canvas id="guan1_cha_canvas" style="position:absolute; left:0%;top:305%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
            <label id="x_axis3" style="position:absolute;left:0%;top:295%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
             <label id="y_axis3" style="position:absolute;left:50%;top:380%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>

             <!--管道2相关-->
            <label id="guan2_start_title"  ></label>
            <canvas id="guan2_start_canvas"   ></canvas>
             <label id="guan2_end_title" ></label>
            <canvas id="guan2_end_canvas" ></canvas>
            <label id="guan2_cha_title" style="position:absolute;top:385%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">管道1标题 </label>
            <canvas id="guan2_cha_canvas" style="position:absolute; left:0%;top:395%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
            <label id="x_axis4" style="position:absolute;left:0%;top:385%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
             <label id="y_axis4" style="position:absolute;left:50%;top:470%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>

            <!--管道3相关-->
            <label id="guan3_start_title"  ></label>
            <canvas id="guan3_start_canvas"   ></canvas>
             <label id="guan3_end_title" ></label>
            <canvas id="guan3_end_canvas" ></canvas>
            <label id="guan3_cha_title" style="position:absolute;top:480%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">管道1标题 </label>
            <canvas id="guan3_cha_canvas" style="position:absolute; left:0%;top:490%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
            <label id="x_axis5" style="position:absolute;left:0%;top:480%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
            <label id="y_axis5" style="position:absolute;left:50%;top:565%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>


            <!--管道4相关-->
            <label id="guan4_start_title"  ></label>
            <canvas id="guan4_start_canvas"   ></canvas>
             <label id="guan4_end_title" ></label>
            <canvas id="guan4_end_canvas" ></canvas>
            <label id="guan4_cha_title" style="position:absolute;top:575%;left:10%;width:80%;height:5%;text-align:center;font-size:large;">管道1标题 </label>
            <canvas id="guan4_cha_canvas" style="position:absolute; left:0%;top:585%;width:100%;height:75%;z-index:4;background-color:white;"></canvas>
            <label id="x_axis6" style="position:absolute;left:0%;top:575%;width:10%;height:10%;z-index:5;text-align:center;"> 应变/位移(mm)</label>
            <label id="y_axis6" style="position:absolute;left:50%;top:660%;width:10%;height:5%;z-index:4;text-align:center;">位置(M)</label>


           

        </asp:Panel>
    </div>
    </form>
</body>
</html>
<script src="chart/dist/Chart.js"></script>
<script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript">


    var year_up = document.getElementById("year_up");

    var button_ok = document.getElementById("button_ok");

    // 几个

    var button_zhuye = document.getElementById("btn_zhuye");

    var button_baobiao = document.getElementById("btn_baobiao");
    button_zhuye.onclick = function (event) {
        window.open("MainView.aspx", null, null, true);
    }

     
    var btn_qushi = document.getElementById("btn_qushi");
    btn_qushi.onclick = function (event) {
        window.open("Show_bianhua_yuefen.aspx");
    }

    // 时间相关
    var start_year = document.getElementById("start_year");
    var start_month = document.getElementById("start_month");
    var start_day = document.getElementById("start_day");

    var start_hour = document.getElementById("start_hour");
    var start_min = document.getElementById("start_min");
    var start_sec = document.getElementById("start_sec");

    var end_year = document.getElementById("end_year");
    var end_month = document.getElementById("end_month");
    var end_day = document.getElementById("end_day");

    var end_hour = document.getElementById("end_hour");
    var end_min = document.getElementById("end_min");
    var end_sec = document.getElementById("end_sec");

    // 控制时间的按钮

    var start_year_up = document.getElementById("year_start_up");
    var start_year_down = document.getElementById("year_start_donw");

    var start_month_up = document.getElementById("month_start_up");
    var start_month_down = document.getElementById("month_start_down");

    var start_day_up = document.getElementById("day_start_up");
    var start_day_down = document.getElementById("day_start_down");

    var start_hour_up = document.getElementById("hour_start_up");
    var start_hour_down = document.getElementById("hour_start_down");

    var start_min_up = document.getElementById("min_start_up");
    var start_min_down = document.getElementById("min_start_down");

    var start_sec_up = document.getElementById("sec_start_up");
    var start_sec_down = document.getElementById("sec_start_down");


    var end_year_up = document.getElementById("year_end_up");
    var end_year_down = document.getElementById("year_end_donw");

    var end_month_up = document.getElementById("month_end_up");
    var end_month_down = document.getElementById("month_end_down");

    var end_day_up = document.getElementById("day_end_up");
    var end_day_down = document.getElementById("day_end_down");

    var end_hour_up = document.getElementById("hour_end_up");
    var end_hour_down = document.getElementById("hour_end_down");

    var end_min_up = document.getElementById("min_end_up");
    var end_min_down = document.getElementById("min_end_down");

    var end_sec_up = document.getElementById("sec_end_up");
    var end_sec_down = document.getElementById("sec_end_down");

    // 坡道1 相关
    var po1_pos = new Array();
    var po1_value_start = new Array();
    var po1_value_end = new Array();

    var po2_pos = new Array();
    var po2_value_start = new Array();
    var po2_value_end = new Array();

    var po3_pos = new Array();
    var po3_value_start = new Array();
    var po3_value_end = new Array();

    var guan1_pos = new Array();
    var guan1_value_start = new Array();
    var guan1_value_end = new Array();

    var guan2_pos = new Array();
    var guan2_value_start = new Array();
    var guan2_value_end = new Array();

    var guan3_pos = new Array();
    var guan3_value_start = new Array();
    var guan3_value_end = new Array();

    var guan4_pos = new Array();
    var guan4_value_start = new Array();
    var guan4_value_end = new Array();

    var pos_array = new Array();
    var value_array = new Array();


    // 测试用标签
    var label_test = document.getElementById("read_baobiao");

    // 函数

    // 图表相关
    var radar_chart_po1_start;
    var radar_chart_po1_end;
    var radar_chart_po1_cha;

    var radar_chart_po2_start;
    var radar_chart_po2_end;
    var radar_chart_po2_cha;

    var radar_chart_po3_start;
    var radar_chart_po3_end;
    var radar_chart_po3_cha;

    var radar_chart_guan1_start;
    var radar_chart_guan1_end;
    var radar_chart_guan1_cha;


    var radar_chart_guan2_start;
    var radar_chart_guan2_end;
    var radar_chart_guan2_cha;


    var radar_chart_guan3_start;
    var radar_chart_guan3_end;
    var radar_chart_guan3_cha;

    var radar_chart_guan4_start;
    var radar_chart_guan4_end;
    var radar_chart_guan4_cha;

    var div_reading = document.getElementById("div_reading");
    
    start_year_up.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setFullYear(nowtime.getFullYear() + 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }
    start_year_down.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setFullYear(nowtime.getFullYear() - 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }

    start_month_up.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setMonth(nowtime.getMonth() + 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }
    start_month_down.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setMonth(nowtime.getMonth() - 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }

    start_day_up.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setDate(nowtime.getDate() + 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }
    start_day_down.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setDate(nowtime.getDate() - 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }


    start_hour_up.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setHours(nowtime.getHours() + 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }
    start_hour_down.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setHours(nowtime.getHours() - 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }

    start_min_up.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setMinutes(nowtime.getMinutes() + 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }
    start_min_down.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setMinutes(nowtime.getMinutes() - 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }


    start_sec_up.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setSeconds(nowtime.getSeconds() + 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }
    start_sec_down.onclick = function (event) {
        var nowtime = new Date(start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent);
        nowtime.setSeconds(nowtime.getSeconds() - 1);
        start_year.textContent = nowtime.getFullYear().toString();
        start_month.textContent = (nowtime.getMonth() + 1).toString();
        start_day.textContent = nowtime.getDate().toString();

        start_hour.textContent = nowtime.getHours().toString();
        start_min.textContent = nowtime.getMinutes().toString();
        start_sec.textContent = nowtime.getSeconds().toString();

    }



    //////
    end_year_up.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setFullYear(nowtime.getFullYear() + 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    end_year_down.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setFullYear(nowtime.getFullYear() - 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }

    end_month_up.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setMonth(nowtime.getMonth() + 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    end_month_down.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setMonth(nowtime.getMonth() - 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }

    end_day_up.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setDate(nowtime.getDate() + 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    end_day_down.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setDate(nowtime.getDate() - 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }


    end_hour_up.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setHours(nowtime.getHours() + 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    end_hour_down.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setHours(nowtime.getHours() - 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }

    end_min_up.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setMinutes(nowtime.getMinutes() + 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    end_min_down.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setMinutes(nowtime.getMinutes() - 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }


    end_sec_up.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setSeconds(nowtime.getSeconds() + 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    end_sec_down.onclick = function (event) {
        var nowtime = new Date(end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent);
        nowtime.setSeconds(nowtime.getSeconds() - 1);
        end_year.textContent = nowtime.getFullYear().toString();
        end_month.textContent = (nowtime.getMonth() + 1).toString();
        end_day.textContent = nowtime.getDate().toString();

        end_hour.textContent = nowtime.getHours().toString();
        end_min.textContent = nowtime.getMinutes().toString();
        end_sec.textContent = nowtime.getSeconds().toString();

    }
    //////
    //year_up.onclick=function(event)
    //{
       
    //}

   // var datetime = new datetime();
   
    init_view();
    
    function init_view()
    {
        var datetime = new Date(Date.now());   // 当前时间

        

        start_year.textContent = datetime.getFullYear().toString();
        start_month.textContent = (datetime.getMonth()+1).toString();
        start_day.textContent = datetime.getDate().toString();

        start_hour.textContent = datetime.getHours().toString();
        start_min.textContent = datetime.getMinutes().toString();
        start_sec.textContent = datetime.getSeconds().toString();


        end_year.textContent = datetime.getFullYear().toString();
        end_month.textContent = (datetime.getMonth() + 1).toString();
        end_day.textContent = datetime.getDate().toString();

        end_hour.textContent = datetime.getHours().toString();
        end_min.textContent = datetime.getMinutes().toString();
        end_sec.textContent = datetime.getSeconds().toString();

    }



   


    button_ok.onclick=function(event)
    {
        // 向服务器请求服务


        div_reading.style.visibility = "visible";
        
        


        
        var start_date = start_year.textContent + "-" + start_month.textContent + "-" + start_day.textContent + " " + start_hour.textContent + ":" + start_min.textContent + ":" + start_sec.textContent;
        var end_date = end_year.textContent + "-" + end_month.textContent + "-" + end_day.textContent + " " + end_hour.textContent + ":" + end_min.textContent + ":" + end_sec.textContent;


        var date_start = new Date(start_date);
        var date_end = new Date(end_date);

        if (date_start >= date_end)
        {
            alert("'开始时间'不能晚于'结束时间'!");
            return;
        }


        var label_title = document.getElementById("baobiao_title");
        label_title.textContent = start_date +"  到  "+ end_date + "   坝体健康情况分析报表";
        

        get_value(start_date, end_date);

        
    }

    function get_value(start_date_time,end_date_time)
    {
        var start_value_pos;
        var end_value_pos;

        $.ajax({
            url: "/mywebserver.asmx/Update_Time_Value",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{data_time:'" + end_date_time + "'}",
            async: false,
            success: function (data) {
                end_value_pos = data;
               
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });


        $.ajax({
            url: "/mywebserver.asmx/Update_Time_Value",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{data_time:'" + start_date_time + "'}",
            async:false,
            success: function (data) {
                //label_test.textContent = "开始读取";

                po1_pos = [];
                po1_value_start = [];

                po2_pos = [];
                po2_value_start = [];

                po3_pos = [];
                po3_value_start = [];

                guan1_pos = [];
                guan1_value_start = [];

                guan2_pos = [];
                guan2_value_start = [];


                guan3_pos = [];
                guan3_value_start = [];

                guan4_pos = [];
                guan4_value_start = [];

                po1_pos = [];
                po1_value_end = [];

                po2_pos = [];
                po2_value_end = [];

                po3_pos = [];
                po3_value_end = [];

                guan1_pos = [];
                guan1_value_end = [];

                guan2_pos = [];
                guan2_value_end = [];


                guan3_pos = [];
                guan3_value_end = [];

                guan4_pos = [];
                guan4_value_end = [];


                start_value_pos = data;

                // 最后执行的是这里，这里就有了
                // start_value_pos   就可以当作

                // 标题
                red_json_start(start_value_pos);
                
                red_json_end(end_value_pos);

                try
                {
                    radar_chart_po1_start.destroy();
                    radar_chart_po1_end.destroy();
                    radar_chart_po1_cha.destroy();

                    radar_chart_po2_start.destroy();
                    radar_chart_po2_end.destroy();
                    radar_chart_po2_cha.destroy();

                    radar_chart_po3_start.destroy();
                    radar_chart_po3_end.destroy();
                    radar_chart_po3_cha.destroy();

                    radar_chart_guan1_start.destroy();
                    radar_chart_guan1_end.destroy();
                    radar_chart_guan1_cha.destroy();

                    radar_chart_guan2_start.destroy();
                    radar_chart_guan2_end.destroy();
                    radar_chart_guan2_cha.destroy();

                    radar_chart_guan3_start.destroy();
                    radar_chart_guan3_end.destroy();
                    radar_chart_guan3_cha.destroy();

                    radar_chart_guan4_start.destroy();
                    radar_chart_guan4_end.destroy();
                    radar_chart_guan4_cha.destroy();
                }
                catch(error)
                {
                    
                }

                //***************** 执行坡道1********************
                // 坡道1开始的图表
                var label_po1_start = document.getElementById("po1_start_title");
                //label_po1_start.textContent = "坡道1在 " + start_date_time + " 的位移图";
                // show_chart("pos1_start_canvas", label_po1_start.textContent, po1_pos, po1_value_start, "po1_start");
                

                //**************** 坡道1结束的图表  **********************
                var label_po1_end = document.getElementById("po1_end_title");
                //label_po1_end.textContent = "坡道1在 " + end_date_time + " 的位移图";
               // show_chart("pos1_end_canvas", label_po1_end.textContent, po1_pos, po1_value_end,"po1_end");


                // *************** 坡道1的比较图表 ************************
                var label_po1_cha = document.getElementById("po1_cha_title");
                label_po1_cha.textContent = "坡道1从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var po1_cha_array = new Array();
                po1_cha_array = [];
                //for(var i=0;i<po1_value_start.length;i++)
                //{
                //    try
                //    {
                //        po1_cha_array.push ((Math.abs(po1_value_start[i] - po1_value_end[i])).toFixed(2));
                //    }
                //    catch(error)
                //    {
                //        alert(error);
                //    }
                //}

                show_chart("pos1_cha_canvas", label_po1_cha.textContent, po1_pos, po1_value_start,po1_value_end, "po1_cha",start_date_time,end_date_time);
                



                //***************** 执行坡道2********************
                // 坡道2开始的图表
                var label_po2_start = document.getElementById("po2_start_title");
               // label_po2_start.textContent = "坡道2在 " + start_date_time + " 的位移图";
              //  show_chart("pos2_start_canvas", label_po2_start.textContent, po2_pos, po2_value_start, "po2_start");

                //**************** 坡道2结束的图表  **********************
                var label_po2_end = document.getElementById("po2_end_title");
               // label_po2_end.textContent = "坡道2在 " + end_date_time + " 的位移图";
               // show_chart("pos2_end_canvas", label_po2_end.textContent, po2_pos, po2_value_end, "po2_end");


                // *************** 坡道2的比较图表 ************************
                var label_po2_cha = document.getElementById("po2_cha_title");
                label_po2_cha.textContent = "坡道2从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var po2_cha_array = new Array();
                po2_cha_array = [];
                //for (var i = 0; i < po2_value_start.length; i++) {
                //    try {
                //        po2_cha_array.push((Math.abs(po2_value_start[i] - po2_value_end[i])).toFixed(2));
                //    }
                //    catch (error) {
                //        alert(error);
                //    }
                //}
                
                show_chart("pos2_cha_canvas", label_po2_cha.textContent, po2_pos, po2_value_start, po2_value_end, "po2_cha", start_date_time, end_date_time);




                //***************** 执行坡道3********************
                // 坡道3开始的图表
                var label_po3_start = document.getElementById("po3_start_title");
              //  label_po3_start.textContent = "坡道3在 " + start_date_time + " 的位移图";
              //   show_chart("pos3_start_canvas", label_po3_start.textContent, po3_pos, po3_value_start, "po3_start");

                //**************** 坡道3结束的图表  **********************
                var label_po3_end = document.getElementById("po3_end_title");
               // label_po3_end.textContent = "坡道3在 " + end_date_time + " 的位移图";
               //   show_chart("pos3_end_canvas", label_po3_end.textContent, po3_pos, po3_value_end, "po3_end");


                // *************** 坡道3的比较图表 ************************
                var label_po3_cha = document.getElementById("po3_cha_title");
                label_po3_cha.textContent = "坡道3从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var po3_cha_array = new Array();
                po3_cha_array = [];
                //for (var i = 0; i < po3_value_start.length; i++) {
                //    try {
                //        po3_cha_array.push((Math.abs(po3_value_start[i] - po3_value_end[i])).toFixed(2));
                //    }
                //    catch (error) {
                //        alert(error);
                //    }
                //}
                

                show_chart("pos3_cha_canvas", label_po3_cha.textContent, po3_pos, po3_value_start, po3_value_end, "po3_cha", start_date_time, end_date_time);




                //***************** 执行管道1********************
                // 管道1开始的图表
                var label_guan1_start = document.getElementById("guan1_start_title");
               // label_guan1_start.textContent = "管道1在 " + start_date_time + " 的位移图";
              //  show_chart("guan1_start_canvas", label_guan1_start.textContent, guan1_pos, guan1_value_start, "guan1_start");

                //**************** 管道1结束的图表  **********************
                var label_guan1_end = document.getElementById("guan1_end_title");
               // label_guan1_end.textContent = "管道1在 " + end_date_time + " 的位移图";
              //  show_chart("guan1_end_canvas", label_guan1_end.textContent, guan1_pos, guan1_value_end, "guan1_end");


                // *************** 管道1的比较图表 ************************
                var label_guan1_cha = document.getElementById("guan1_cha_title");
                label_guan1_cha.textContent = "管道1从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var guan1_cha_array = new Array();
                guan1_cha_array = [];
                //for (var i = 0; i < guan1_value_start.length; i++) {
                //    try {
                //        guan1_cha_array.push((Math.abs(guan1_value_start[i] - guan1_value_end[i])).toFixed(2));
                //    }
                //    catch (error) {
                //        alert(error);
                //    }
                //}

                show_chart("guan1_cha_canvas", label_guan1_cha.textContent, guan1_pos, guan1_value_start, guan1_value_end, "guan1_cha", start_date_time, end_date_time);
                

                //***************** 执行管道2********************
                // 管道1开始的图表
                var label_guan2_start = document.getElementById("guan2_start_title");
               // label_guan2_start.textContent = "管道2在 " + start_date_time + " 的位移图";
                //show_chart("guan2_start_canvas", label_guan2_start.textContent, guan2_pos, guan2_value_start, "guan2_start");

                //**************** 管道2结束的图表  **********************
                var label_guan2_end = document.getElementById("guan2_end_title");
               // label_guan2_end.textContent = "管道2在 " + end_date_time + " 的位移图";
            //    show_chart("guan2_end_canvas", label_guan2_end.textContent, guan2_pos, guan2_value_end, "guan2_end");


                // *************** 管道2的比较图表 ************************
                var label_guan2_cha = document.getElementById("guan2_cha_title");
                label_guan2_cha.textContent = "管道2从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var guan2_cha_array = new Array();
                guan2_cha_array = [];
                //for (var i = 0; i < guan2_value_start.length; i++) {
                //    try {
                //        guan2_cha_array.push((Math.abs(guan2_value_start[i] - guan2_value_end[i])).toFixed(2));
                //    }
                //    catch (error) {
                //        alert(error);
                //    }
                //}

                show_chart("guan2_cha_canvas", label_guan2_cha.textContent, guan2_pos, guan2_value_start, guan2_value_end, "guan2_cha", start_date_time, end_date_time);

                
                //***************** 执行管道3********************
                // 管道3开始的图表
                var label_guan3_start = document.getElementById("guan3_start_title");
              //  label_guan3_start.textContent = "管道3在 " + start_date_time + " 的位移图";
              //  show_chart("guan3_start_canvas", label_guan3_start.textContent, guan3_pos, guan3_value_start, "guan3_start");

                //**************** 管道2结束的图表  **********************
                var label_guan3_end = document.getElementById("guan3_end_title");
               // label_guan3_end.textContent = "管道3在 " + end_date_time + " 的位移图";
              //  show_chart("guan3_end_canvas", label_guan3_end.textContent, guan3_pos, guan3_value_end, "guan3_end");


                // *************** 管道2的比较图表 ************************
                var label_guan3_cha = document.getElementById("guan3_cha_title");
                label_guan3_cha.textContent = "管道3从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var guan3_cha_array = new Array();
                //guan3_cha_array = [];
                //for (var i = 0; i < guan3_value_start.length; i++) {
                //    try {
                //        guan3_cha_array.push((Math.abs(guan3_value_start[i] - guan3_value_end[i])).toFixed(2));
                //    }
                //    catch (error) {
                //        alert(error);
                //    }
                //}
                

                show_chart("guan3_cha_canvas", label_guan3_cha.textContent, guan3_pos, guan3_value_start, guan3_value_end, "guan3_cha", start_date_time, end_date_time);

                //***************** 执行管道4********************
                // 管道4开始的图表
                var label_guan4_start = document.getElementById("guan4_start_title");
               //   label_guan4_start.textContent = "管道4在 " + start_date_time + " 的位移图";
               // show_chart("guan4_start_canvas", label_guan4_start.textContent, guan4_pos, guan4_value_start, "guan4_start");

                //**************** 管道4结束的图表  **********************
                var label_guan4_end = document.getElementById("guan4_end_title");
               // label_guan4_end.textContent = "管道4在 " + end_date_time + " 的位移图";
               // show_chart("guan4_end_canvas", label_guan4_end.textContent, guan4_pos, guan4_value_end, "guan4_end");


                // *************** 管道4的比较图表 ************************
                var label_guan4_cha = document.getElementById("guan4_cha_title");
                label_guan4_cha.textContent = "管道4从 " + start_date_time + " 到 " + end_date_time + " 位移之差";
                var guan4_cha_array = new Array();
                guan4_cha_array = [];
                //for (var i = 0; i < guan4_value_start.length; i++) {
                //    try {
                //        guan4_cha_array.push((Math.abs(guan4_value_start[i] - guan4_value_end[i])).toFixed(2));
                //    }
                //    catch (error) {
                //        alert(error);
                //    }
                //}

                show_chart("guan4_cha_canvas", label_guan4_cha.textContent, guan4_pos, guan4_value_start, guan4_value_end, "guan4_cha", start_date_time, end_date_time);
                div_reading.style.visibility = "hidden";
                
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
               alert( $.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });


        
    }

    // 读取开始的位置与位移

    function red_json_start(string) {

        var length = string.length;
        //alert(string);
        // 数量读出来之后
        

        


        var mycount = 0;
        for (var i = 0; i < length - 1; i++) {
            //label_test.textContent = i.toString() + "//" + length.toString();
            var sub_string_pos = string.substr(i, 6);
            if (sub_string_pos == "\"pos\":") {
                
                // 寻找  ,
                for (var j = i+6; j < length - 1; j++) {
                    var sub_string_douhao = string.substr(j, 1);
                    if(sub_string_douhao==",")
                    {
                        // 找到位置
                        var pos_string = string.substr(i + 6, j - 6 - i);
                        try
                        {
                            // 一个位置
                            // 2164 - 2317
                            // 2361 - 2558
                            // 2934 - 3074
                            // 602 - 636
                            // 742 - 774
                            // 875 - 907
                            // 994- 1026
                            var pos_double = parseFloat(pos_string);
                            // 坡道1
                            if (pos_double >= 2164 && pos_double < 2317) {
                                po1_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if(string.substr(k,7)=="\"weiyi\"")
                                    {
                                        for(var x=k+7;x<length-1;x++)
                                        {
                                            if(string.substr(x,1)=="}")
                                            {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                po1_value_start.push(weiyi_double);
                                                i = x;
                                                 break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }

                            
                           
                            // 坡道2
                            if (pos_double >= 2361 && pos_double < 2558) {
                                po2_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                po2_value_start.push(weiyi_double);
                                                i = x;
                                                break;

                                            }
                                        }
                                        break;
                                    }
                                }
                            }

                            // 坡道3
                            if (pos_double >= 2361 && pos_double < 3074) {
                                po3_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                po3_value_start.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }

                            // 管道1
                            if (pos_double >= 602 && pos_double < 636) {
                                guan1_pos.push((pos_double-602).toFixed(2));
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan1_value_start.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                            // 管道2
                            if (pos_double >= 742 && pos_double < 774) {
                                guan2_pos.push((pos_double-742).toFixed(2));
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan2_value_start.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                            // 管道3
                            if (pos_double >= 875 && pos_double < 907) {
                                guan3_pos.push((pos_double-875).toFixed(2));
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan3_value_start.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                            // 管道4
                            if (pos_double >= 994 && pos_double < 1026) {
                                guan4_pos.push((pos_double-994).toFixed(2));
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan4_value_start.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                        }
                        catch(error)
                        {
                            alert("数据格式有错误！");
                            return;
                        }
                    }
                }

                
                
                continue;
            }



            // alert(string.substr(i, 1));
            //if (string.substr(i, 2) == '":') {
            //    //mycount++;

            //    for (var j = i; j < length; j++) {
            //        if (string.substr(j, 2) == '",') {
            //            // 日期
            //            //alert("date");
            //            //alert(string.substr(i + 3, j - i - 3));
            //            jubu_time_list.push(string.substr(i + 3, j - i - 3));
            //            // alert(jubu_time_list.length.toString());
            //            break;
            //        }
            //        if (string.substr(j, 1) == '[') {
            //            // alert("引导");
            //            break;
            //            //
            //        }
            //        if (string.substr(j, 1) == '}') {
            //            // 位移
            //            //alert("value");
            //            //alert(string.substr(i + 2, j - i - 2));

            //            var weiyi = string.substr(i + 2, j - i - 2);
            //            // alter(weiyi);
            //            //var xiaoshu = weiyi.toFixed(2);
            //            //alter(xiaoshu);

            //            var weiyi_float = parseFloat(weiyi);
            //            var weiyi_cut = weiyi_float.toFixed(4);
            //            jubu_value_list.push(weiyi_cut);
            //            break;
            //        }
            //    }
            //}
        }
    }

    // 读取结束的位置与位移

    function red_json_end(string) {

        var length = string.length;
        //alert(string);
        // 数量读出来之后
       




        var mycount = 0;
        for (var i = 0; i < length - 1; i++) {

            var sub_string_pos = string.substr(i, 6);
            if (sub_string_pos == "\"pos\":") {

                // 寻找  ,
                for (var j = i + 6; j < length - 1; j++) {
                    var sub_string_douhao = string.substr(j, 1);
                    if (sub_string_douhao == ",") {
                        // 找到位置
                        var pos_string = string.substr(i + 6, j - 6 - i);
                        try {
                            // 一个位置
                            // 2164 - 2317
                            // 2361 - 2558
                            // 2934 - 3074
                            // 602 - 636
                            // 742 - 774
                            // 875 - 907
                            // 994- 1026
                            var pos_double = parseFloat(pos_string);
                            // 坡道1
                            if (pos_double >= 2164 && pos_double < 2317) {
                               // po1_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                po1_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }



                            // 坡道2
                            if (pos_double >= 2361 && pos_double < 2558) {
                              //  po2_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                po2_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }

                            // 坡道3
                            if (pos_double >= 2361 && pos_double < 3074) {
                               // po3_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                po3_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }

                            // 管道1
                            if (pos_double >= 602 && pos_double < 636) {
                            //    guan1_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan1_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                            // 管道2
                            if (pos_double >= 742 && pos_double < 774) {
                             //   guan2_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan2_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                            // 管道3
                            if (pos_double >= 875 && pos_double < 907) {
                              //  guan3_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan3_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                            // 管道4
                            if (pos_double >= 994 && pos_double < 1026) {
                              //  guan4_pos.push(pos_double);
                                for (var k = j; k < length - 1; k++) {
                                    if (string.substr(k, 7) == "\"weiyi\"") {
                                        for (var x = k + 7; x < length - 1; x++) {
                                            if (string.substr(x, 1) == "}") {
                                                var weiyi = string.substr(k + 8, x - 8 - k);
                                                var weiyi_double = parseFloat(weiyi);
                                                guan4_value_end.push(weiyi_double);
                                                i = x;
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                }
                            }


                        }
                        catch (error) {
                            alert("数据格式有错误！");
                            return;
                        }
                    }
                }

              
                continue;

            }



            // alert(string.substr(i, 1));
            //if (string.substr(i, 2) == '":') {
            //    //mycount++;

            //    for (var j = i; j < length; j++) {
            //        if (string.substr(j, 2) == '",') {
            //            // 日期
            //            //alert("date");
            //            //alert(string.substr(i + 3, j - i - 3));
            //            jubu_time_list.push(string.substr(i + 3, j - i - 3));
            //            // alert(jubu_time_list.length.toString());
            //            break;
            //        }
            //        if (string.substr(j, 1) == '[') {
            //            // alert("引导");
            //            break;
            //            //
            //        }
            //        if (string.substr(j, 1) == '}') {
            //            // 位移
            //            //alert("value");
            //            //alert(string.substr(i + 2, j - i - 2));

            //            var weiyi = string.substr(i + 2, j - i - 2);
            //            // alter(weiyi);
            //            //var xiaoshu = weiyi.toFixed(2);
            //            //alter(xiaoshu);

            //            var weiyi_float = parseFloat(weiyi);
            //            var weiyi_cut = weiyi_float.toFixed(4);
            //            jubu_value_list.push(weiyi_cut);
            //            break;
            //        }
            //    }
            //}
        }
    }


    //Chart.defaults.global = {
    //    // Boolean - Whether to animate the chart
    //    animation: true,

    //    // Number - Number of animation steps
    //    animationSteps: 60,

    //    // String - Animation easing effect
    //    // Possible effects are:
    //    // [easeInOutQuart, linear, easeOutBounce, easeInBack, easeInOutQuad,
    //    //  easeOutQuart, easeOutQuad, easeInOutBounce, easeOutSine, easeInOutCubic,
    //    //  easeInExpo, easeInOutBack, easeInCirc, easeInOutElastic, easeOutBack,
    //    //  easeInQuad, easeInOutExpo, easeInQuart, easeOutQuint, easeInOutCirc,
    //    //  easeInSine, easeOutExpo, easeOutCirc, easeOutCubic, easeInQuint,
    //    //  easeInElastic, easeInOutSine, easeInOutQuint, easeInBounce,
    //    //  easeOutElastic, easeInCubic]
    //    animationEasing: "easeOutQuart",

    //    // Boolean - If we should show the scale at all
    //    showScale: true,

    //    // Boolean - If we want to override with a hard coded scale
    //    scaleOverride: false,

    //    // ** Required if scaleOverride is true **
    //    // Number - The number of steps in a hard coded scale
    //    scaleSteps: null,
    //    // Number - The value jump in the hard coded scale
    //    scaleStepWidth: null,
    //    // Number - The scale starting value
    //    scaleStartValue: null,

    //    // String - Colour of the scale line
    //    scaleLineColor: "rgba(0,0,0,.1)",

    //    // Number - Pixel width of the scale line
    //    scaleLineWidth: 1,

    //    // Boolean - Whether to show labels on the scale
    //    scaleShowLabels: true,

    //    // Interpolated JS string - can access value
    //    scaleLabel: "",

    //    // Boolean - Whether the scale should stick to integers, not floats even if drawing space is there
    //    scaleIntegersOnly: true,

    //    // Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
    //    scaleBeginAtZero: false,

    //    // String - Scale label font declaration for the scale label
    //    scaleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

    //    // Number - Scale label font size in pixels
    //    scaleFontSize: 12,

    //    // String - Scale label font weight style
    //    scaleFontStyle: "normal",

    //    // String - Scale label font colour
    //    scaleFontColor: "#666",

    //    // Boolean - whether or not the chart should be responsive and resize when the browser does.
    //    responsive: false,

    //    // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
    //    maintainAspectRatio: true,

    //    // Boolean - Determines whether to draw tooltips on the canvas or not
    //    showTooltips: true,

    //    // Function - Determines whether to execute the customTooltips function instead of drawing the built in tooltips (See [Advanced - External Tooltips](#advanced-usage-custom-tooltips))
    //    customTooltips: false,

    //    // Array - Array of string names to attach tooltip events
    //    tooltipEvents: ["mousemove", "touchstart", "touchmove"],

    //    // String - Tooltip background colour
    //    tooltipFillColor: "rgba(0,0,0,0.8)",

    //    // String - Tooltip label font declaration for the scale label
    //    tooltipFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

    //    // Number - Tooltip label font size in pixels
    //    tooltipFontSize: 14,

    //    // String - Tooltip font weight style
    //    tooltipFontStyle: "normal",

    //    // String - Tooltip label font colour
    //    tooltipFontColor: "#fff",

    //    // String - Tooltip title font declaration for the scale label
    //    tooltipTitleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

    //    // Number - Tooltip title font size in pixels
    //    tooltipTitleFontSize: 14,

    //    // String - Tooltip title font weight style
    //    tooltipTitleFontStyle: "bold",

    //    // String - Tooltip title font colour
    //    tooltipTitleFontColor: "#fff",

    //    // Number - pixel width of padding around tooltip text
    //    tooltipYPadding: 6,

    //    // Number - pixel width of padding around tooltip text
    //    tooltipXPadding: 6,

    //    // Number - Size of the caret on the tooltip
    //    tooltipCaretSize: 8,

    //    // Number - Pixel radius of the tooltip border
    //    tooltipCornerRadius: 6,

    //    // Number - Pixel offset from point x to tooltip edge
    //    tooltipXOffset: 10,

    //    // String - Template string for single tooltips
    //    tooltipTemplate: "",

    //    // String - Template string for multiple tooltips
    //    multiTooltipTemplate: "",

    //    // Function - Will fire on animation progression.
    //    onAnimationProgress: function () { },

    //    // Function - Will fire on animation completion.
    //    onAnimationComplete: function () { }
    //}



    // 画板名称，标题，横坐标，纵坐标
    function show_chart(canvas_name,mylabel,label_array,data_array,data_array1,po_name,start_time,end_time)
    {
        //if (po_name == "po1_start")
        //{
        //    try
        //    {
        //        radar_chart_po1_start.destroy();
        //        radar_chart_po1_start = null;
        //    }
        //    catch(error)
        //    {

        //    }
        //}

        //if (po_name == "po1_end") {
        //    try {
        //        radar_chart_po1_end.destroy();
        //        radar_chart_po1_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "po1_cha") {
            try {
                radar_chart_po1_cha.destroy();
                radar_chart_po1_cha = null;
            }
            catch (error) {

            }
        }
        


        //if (po_name == "po2_start") {
        //    try {
        //        radar_chart_po2_start.destroy();
        //        radar_chart_po2_start = null;
        //    }
        //    catch (error) {

        //    }
        //}

        //if (po_name == "po2_end") {
        //    try {
        //        radar_chart_po2_end.destroy();
        //        radar_chart_po2_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "po2_cha") {
            try {
                radar_chart_po2_cha.destroy();
                radar_chart_po2_cha = null;
            }
            catch (error) {

            }
        }

        //if (po_name == "po3_start") {
        //    try {
        //        radar_chart_po3_start.destroy();
        //        radar_chart_po3_start = null;
        //    }
        //    catch (error) {

        //    }
        //}

        //if (po_name == "po3_end") {
        //    try {
        //        radar_chart_po3_end.destroy();
        //        radar_chart_po3_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "po3_cha") {
            try {
                radar_chart_po3_cha.destroy();
                radar_chart_po3_cha = null;
            }
            catch (error) {

            }
        }


        //if (po_name == "guan1_start") {
        //    try {
        //        radar_chart_guan1_start.destroy();
        //        radar_chart_guan1_start = null;
        //    }
        //    catch (error) {

        //    }
        //}

        //if (po_name == "guan1_end") {
        //    try {
        //        radar_chart_guan1_end.destroy();
        //        radar_chart_guan1_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "guan1_cha") {
            try {
                radar_chart_guan1_cha.destroy();
                radar_chart_guan1_cha = null;
            }
            catch (error) {

            }
        }

        //if (po_name == "guan2_start") {
        //    try {
        //        radar_chart_guan2_start.destroy();
        //        radar_chart_guan2_start = null;
        //    }
        //    catch (error) {

        //    }
        //}

        //if (po_name == "guan2_end") {
        //    try {
        //        radar_chart_guan2_end.destroy();
        //        radar_chart_guan2_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "guan2_cha") {
            try {
                radar_chart_guan2_cha.destroy();
                radar_chart_guan2_cha = null;
            }
            catch (error) {

            }
        }


        //if (po_name == "guan3_start") {
        //    try {
        //        radar_chart_guan3_start.destroy();
        //        radar_chart_guan3_start = null;
        //    }
        //    catch (error) {

        //    }
        //}

        //if (po_name == "guan3_end") {
        //    try {
        //        radar_chart_guan3_end.destroy();
        //        radar_chart_guan3_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "guan3_cha") {
            try {
                radar_chart_guan3_cha.destroy();
                radar_chart_guan3_cha = null;
            }
            catch (error) {

            }
        }

        //if (po_name == "guan4_start") {
        //    try {
        //        radar_chart_guan4_start.destroy();
        //        radar_chart_guan4_start = null;
        //    }
        //    catch (error) {

        //    }
        //}

        //if (po_name == "guan4_end") {
        //    try {
        //        radar_chart_guan4_end.destroy();
        //        radar_chart_guan4_end = null;
        //    }
        //    catch (error) {

        //    }
        //}
        if (po_name == "guan4_cha") {
            try {
                radar_chart_guan4_cha.destroy();
                radar_chart_guan4_cha = null;
            }
            catch (error) {

            }
        }

        var ctx = document.getElementById(canvas_name);
        






        
        
        
         
        var options = {
            datasetStrokeWidth: 2,
            pointDot: false,
            pointDotRadius: 1
        };

        var data = {
            labels: label_array,
            datasets: [{
                data: data_array,
                label: start_time.toString()+"位移",
                borderColor: '#0000ff',
                fillColor: '#ffffff',
                //strokeColor: 'rgba(220,220,220,1)',
                //pointColor: 'rgba(220,220,220,1)'
            }, {
                data: data_array1,
                label: end_time.toString()+"位移",
                borderColor: '#ff0000'
            }]
        }
        //if (po_name == "po1_start") {
        //    radar_chart_po1_start = new Chart(ctx, {
        //        data: data,
        //        type: 'line',
        //        options: options,
        //        title: '近一个月的应变趋势'
        //    });
            
        //}

        //if (po_name == "po1_end") {
        //    radar_chart_po1_end = new Chart(ctx, {
        //        data: data,
        //        type: 'line',
        //        options: options,
        //        title: '近一个月的应变趋势'
        //    });
        //}

        if (po_name == "po1_cha") {
            
            radar_chart_po1_cha = new Chart(ctx, {
                data: data,
                type: 'line',
                symbol:'none',
                options: options,
                title: '近一个月的应变趋势'
            });
        }


        if (po_name == "po2_start") {
            radar_chart_po2_start = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });

        }

        if (po_name == "po2_end") {
            radar_chart_po2_end = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }

        if (po_name == "po2_cha") {

            radar_chart_po2_cha = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }


        if (po_name == "po3_start") {
            radar_chart_po3_start = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });

        }

        if (po_name == "po3_end") {
            radar_chart_po3_end = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }

        if (po_name == "po3_cha") {

            radar_chart_po3_cha = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }


        if (po_name == "guan1_start") {
            radar_chart_guan1_start = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });

        }

        if (po_name == "guan1_end") {
            radar_chart_guan1_end = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }

        if (po_name == "guan1_cha") {

            radar_chart_guan1_cha = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }


        if (po_name == "guan2_start") {
            radar_chart_guan2_start = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });

        }

        if (po_name == "guan2_end") {
            radar_chart_guan2_end = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }

        if (po_name == "guan2_cha") {

            radar_chart_guan2_cha = new Chart(ctx, {
                data: data,
                
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }


        if (po_name == "guan3_start") {
            radar_chart_guan3_start = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });

        }

        if (po_name == "guan3_end") {
            radar_chart_guan3_end = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }

        if (po_name == "guan3_cha") {

            radar_chart_guan3_cha = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }


        if (po_name == "guan4_start") {
            radar_chart_guan4_start = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });

        }

        if (po_name == "guan4_end") {
            radar_chart_guan4_end = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }

        if (po_name == "guan4_cha") {

            radar_chart_guan4_cha = new Chart(ctx, {
                data: data,
                type: 'line',
                options: options,
                title: '近一个月的应变趋势'
            });
        }
    }
    
 </script>