<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhizhuangaspx.aspx.cs" Inherits="baguang_new.zhizhuangaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>测斜管情况画面 </title>
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
            z-index:3;
            
        }

        .btn_baobiao
        {
            position:absolute;
            left:55%;
            top:10%;
            width:3%;
            height:45%;
            z-index:3;
        }

        .btn_chaxun
        {
            position:absolute;
            left:60%;
            top:10%;
            width:3%;
            height:45%;
            z-index:3;
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

        .map_panel
        {
            position:absolute;
            top:0%;
            left:0%;
            width:100%;
            height:100%;
            z-index:2;

        }
        .panel_zhi1{
            position:absolute;
            top:20%;
            left:15%;
            width:15%;
            height:70%;
            z-index:2;
        }

        .panel_zhi2{
            position:absolute;
            top:20%;
            left:35%;
            width:15%;
            height:70%;
            z-index:2;
        }

         .panel_zhi3{
            position:absolute;
            top:20%;
            left:55%;
            width:15%;
            height:70%;
            z-index:2;
        }

          .panel_zhi4{
            position:absolute;
            top:20%;
            left:75%;
            width:15%;
            height:70%;
            z-index:2;
        }

           .canvas_panel{
            position:absolute;
            top:20%;
            left:20%;
            width:60%;
            height:68%;
            
            z-index:4;
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
                <asp:Panel ID="map_panel" CssClass="map_panel" runat="server"></asp:Panel>
                <asp:Timer ID="Timer_Label" runat="server" Interval="1000"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>

    <div id="main_map" class="main_map" style="background-color:lightblue">
         
         <!--地图上的七个点-->
        

        <label id="label_baojing" style="position:absolute;left:1%;top:20%;width:4%;height:4%;z-index:3;background-color:red;color:white;">报警</label>
         <label id="label_zhengchang" style="position:absolute;left:1%;top:40%;width:4%;height:4%;z-index:3;background-color:orange;color:white;">正常</label>
        <label id="label_lianghao" style="position:absolute;left:1%;top:60%;width:4%;height:4%;z-index:3;background-color:lightgreen;color:white;">良好</label>
        <label id="label_jihao" style="position:absolute;left:1%;top:80%;width:4%;height:4%;z-index:3;background-color:blue;color:white;">极好</label>


        <label id="label_biaochi" style="position:absolute;left:0%;top:10%;height:4%;width:10%;z-index:2;background-color:blue;color:white;text-align:center;border-color:black;border-style:solid;border-width:thick">标尺</label>
        <asp:Panel ID="biaochi_panel" CssClass="biaochi_panel" runat="server" BackColor="Gray" BorderStyle="Solid" BorderWidth="2" BorderColor="Black"></asp:Panel>
        
        <asp:Panel ID="panel_zhu1" runat="server" ScrollBars="Vertical" BackColor="LightGray" CssClass="panel_zhi1"></asp:Panel>
        <asp:Panel ID="panel_zhu2" runat="server" ScrollBars="Vertical" BackColor="LightGray" CssClass="panel_zhi2"></asp:Panel>
        <asp:Panel ID="panel_zhu3" runat="server" ScrollBars="Vertical" BackColor="LightGray" CssClass="panel_zhi3"></asp:Panel>
        <asp:Panel ID="panel_zhu4" runat="server" ScrollBars="Vertical" BackColor="LightGray" CssClass="panel_zhi4"></asp:Panel>


         <label id="label_cexie1" style="position:absolute;left:15%;top:10%;width:10%;height:4%;z-index:3;background-color:blue;color:white;text-align:center;border-style:solid;border-width:2px;border-color:black;">1号测斜管</label>
        <label id="label_cexie2" style="position:absolute;left:35%;top:10%;width:10%;height:4%;z-index:3;background-color:blue;color:white;text-align:center;border-style:solid;border-width:2px;border-color:black;">2号测斜管</label>
        <label id="label_cexie3" style="position:absolute;left:55%;top:10%;width:10%;height:4%;z-index:3;background-color:blue;color:white;text-align:center;border-style:solid;border-width:2px;border-color:black;">3号测斜管</label>
        <label id="label_cexie4" style="position:absolute;left:75%;top:10%;width:10%;height:4%;z-index:3;background-color:blue;color:white;text-align:center;border-style:solid;border-width:2px;border-color:black;">4号测斜管</label>

     
        <asp:Panel ID="canvas_panel" runat="server" CssClass="canvas_panel" BackColor="Gray" >
            <canvas id="mycanvas" style="left:0%;top:0%;width:100%;height:100%;z-index:4;background-color:white;" >
            </canvas>
               <label id="close" style="position:absolute; left:89%;top:0%;width:10%;height:10%;z-index:4;background-color:red;color:white;text-align:center;vertical-align:central">关闭</label>

                <div id="background" style="position:absolute;left:-10%;top:0%;width:10%;height:110%;z-index:4;text-align:center;background-color:white;color:black;"></div>
                <label id="x_axis" style="position:absolute;left:-10%;top:45%;width:10%;height:10%;z-index:5;text-align:center;background-color:white;color:black;"> 应变/位移(mm)</label>
                <label id="y_axis" style="position:absolute;left:0%;top:100%;width:100%;height:10%;z-index:4;text-align:center;background-color:white;color:black;">日期</label>
        </asp:Panel>

        <!--异步更新的部分-->
        <asp:UpdatePanel ID="updatepanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                
                <asp:Timer ID="Timer2" runat="server" Interval="1000"></asp:Timer>
                <!--用来显示当前的位置和报警程度-->
              
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
    </form>
</body>
</html>
<script src="chart/dist/Chart.js"></script>
<script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript">


    var yuzhhi = "<%=Get_Yuzhi()%>";

    var maplist = new Array();

    var all_pos = new Array();                                  // 所有的位置
    var all_value = new Array();                                // 所有的值

    var btn_qushi = document.getElementById("btn_qushi");
    btn_qushi.onclick = function (event) {
        window.open("Show_bianhua_yuefen.aspx");
    }


    var main_panel = document.getElementById("main_map");    // 这里是主容器

    var blue_panel = document.createElement("blue_panel");   //  蓝色
    var green_panel = document.createElement("green_panel");  // 绿色
    var orange_panel = document.createElement("orange_panel"); // 橙色
    var red_panel = document.createElement("red_panel");       // 红色

    // 界面上的三个点

    var pos1_button = document.getElementById("pos1_button");
    var pos2_button = document.getElementById("pos2_button");
    var pos3_button = document.getElementById("pos3_button");
    var pos4_button = document.getElementById("pos4_button");
    var pos5_button = document.getElementById("pos5_button");
    var pos6_button = document.getElementById("pos6_button");
    var pos7_button = document.getElementById("pos7_button");



    // 过渡颜色
    var blue_panel1 = document.createElement("blue_panel1");   //  蓝色
    var blue_panel2 = document.createElement("blue_panel2");   //  蓝色
    var blue_panel3 = document.createElement("blue_panel3");   //  蓝色
    var blue_panel4 = document.createElement("blue_panel4");   //  蓝色

    var green_panel1 = document.createElement("green_panel1");   //  绿色
    var green_panel2 = document.createElement("green_panel2");   //  绿色
    var green_panel3 = document.createElement("green_panel3");   //  绿色
    var green_panel4 = document.createElement("green_panel4");   //  绿色

    var orange_panel1 = document.createElement("orange_panel1"); // 橙色
    var orange_panel2 = document.createElement("orange_panel2"); // 橙色
    var orange_panel3 = document.createElement("orange_panel3"); // 橙色
    var orange_panel4 = document.createElement("orange_panel4"); // 橙色

    // 定义旁边的显示条
    var blue_panels = document.createElement("blue_panels");   //  蓝色
    var green_panels = document.createElement("green_panels");  // 绿色
    var orange_panels = document.createElement("orange_panels"); // 橙色
    var red_panels = document.createElement("red_panels");       // 红色

    var blue_panel1s = document.createElement("blue_panel1s");   //  蓝色
    var blue_panel2s = document.createElement("blue_panel2s");   //  蓝色
    var blue_panel3s = document.createElement("blue_panel3s");   //  蓝色
    var blue_panel4s = document.createElement("blue_panel4s");   //  蓝色

    var green_panel1s = document.createElement("green_panel1s");   //  绿色
    var green_panel2s = document.createElement("green_panel2s");   //  绿色
    var green_panel3s = document.createElement("green_panel3s");   //  绿色
    var green_panel4s = document.createElement("green_panel4s");   //  绿色

    var orange_panel1s = document.createElement("orange_panel1s"); // 橙色
    var orange_panel2s = document.createElement("orange_panel2s"); // 橙色
    var orange_panel3s = document.createElement("orange_panel3s"); // 橙色
    var orange_panel4s = document.createElement("orange_panel4s"); // 橙色
    var label_biaochi = document.getElementById("label_biaochi");

    var canvas_panel = document.getElementById("canvas_panel");

    init_view();

    var button_zhuye = document.getElementById("btn_zhuye");

    var button_baobiao = document.getElementById("btn_baobiao");
    button_zhuye.onclick = function (event) {
        window.open("MainView.aspx", null, null, true);
    }

    button_baobiao.onclick = function (event) {
        window.open("Baobiaotongji.aspx");
    }


    


    var button_close = document.getElementById("close");

    button_close.onclick = function (event) {
        canvas_panel.style.visibility = "hidden";
        canvas_panel.style.display = "none";
    }


    // 初始化方法

    function init_view() {
        // 蓝色条
        blue_panel.style.position = "absolute";
        blue_panel.style.left = "5%";
        blue_panel.style.top = "80%";
        blue_panel.style.width = "5%";
        blue_panel.style.height = "4%";
        blue_panel.style.backgroundColor = "#0000FF";
        blue_panel.style.zIndex = 4;
        blue_panel.style.opacity = 0.5;



        // 绿色条
        green_panel.style.position = "absolute";
        green_panel.style.left = "5%";
        green_panel.style.top = "60%";
        green_panel.style.width = "5%";
        green_panel.style.height = "4%";
        green_panel.style.backgroundColor = "#00FF00";
        green_panel.style.zIndex = 4;
        green_panel.style.opacity = 0.5;


        // 橙色条
        orange_panel.style.position = "absolute";
        orange_panel.style.left = "5%";
        orange_panel.style.top = "40%";
        orange_panel.style.width = "5%";
        orange_panel.style.height = "4%";
        orange_panel.style.backgroundColor = "#FFFF00";
        orange_panel.style.zIndex = 4;
        orange_panel.style.opacity = 0.5;



        // 红色条

        red_panel.style.position = "absolute";
        red_panel.style.left = "5%";
        red_panel.style.top = "20%";
        red_panel.style.width = "5%";
        red_panel.style.height = "4%";
        red_panel.style.backgroundColor = "#FF0000";
        red_panel.style.zIndex = 4;
        red_panel.style.opacity = 0.5;


        // 蓝色过渡条
        blue_panel1.style.position = "absolute";
        blue_panel1.style.left = "5%";
        blue_panel1.style.top = "76%";
        blue_panel1.style.width = "5%";
        blue_panel1.style.height = "4%";
        blue_panel1.style.backgroundColor = "#0033CC";
        blue_panel1.style.zIndex = 4;
        blue_panel1.style.opacity = 0.5;

        blue_panel2.style.position = "absolute";
        blue_panel2.style.left = "5%";
        blue_panel2.style.top = "72%";
        blue_panel2.style.width = "5%";
        blue_panel2.style.height = "4%";
        blue_panel2.style.backgroundColor = "#006699";
        blue_panel2.style.zIndex = 4;
        blue_panel2.style.opacity = 0.5;

        blue_panel3.style.position = "absolute";
        blue_panel3.style.left = "5%";
        blue_panel3.style.top = "68%";
        blue_panel3.style.width = "5%";
        blue_panel3.style.height = "4%";
        blue_panel3.style.backgroundColor = "#009966";
        blue_panel3.style.zIndex = 4;
        blue_panel3.style.opacity = 0.5;

        blue_panel4.style.position = "absolute";
        blue_panel4.style.left = "5%";
        blue_panel4.style.top = "64%";
        blue_panel4.style.width = "5%";
        blue_panel4.style.height = "4%";
        blue_panel4.style.backgroundColor = "#00CC33";
        blue_panel4.style.zIndex = 4;
        blue_panel4.style.opacity = 0.5;


        // 绿色过渡条

        green_panel1.style.position = "absolute";
        green_panel1.style.left = "5%";
        green_panel1.style.top = "56%";
        green_panel1.style.width = "5%";
        green_panel1.style.height = "4%";
        green_panel1.style.backgroundColor = "#33FF00";
        green_panel1.style.zIndex = 4;
        green_panel1.style.opacity = 0.5;


        green_panel2.style.position = "absolute";
        green_panel2.style.left = "5%";
        green_panel2.style.top = "52%";
        green_panel2.style.width = "5%";
        green_panel2.style.height = "4%";
        green_panel2.style.backgroundColor = "#66FF00";
        green_panel2.style.zIndex = 4;
        green_panel2.style.opacity = 0.5;

        green_panel3.style.position = "absolute";
        green_panel3.style.left = "5%";
        green_panel3.style.top = "48%";
        green_panel3.style.width = "5%";
        green_panel3.style.height = "4%";
        green_panel3.style.backgroundColor = "#99FF00";
        green_panel3.style.zIndex = 4;
        green_panel3.style.opacity = 0.5;

        green_panel4.style.position = "absolute";
        green_panel4.style.left = "5%";
        green_panel4.style.top = "44%";
        green_panel4.style.width = "5%";
        green_panel4.style.height = "4%";
        green_panel4.style.backgroundColor = "#CCFF00";
        green_panel4.style.zIndex = 4;
        green_panel4.style.opacity = 0.5;


        // 橙色过渡条
        orange_panel1.style.position = "absolute";
        orange_panel1.style.left = "5%";
        orange_panel1.style.top = "36%";
        orange_panel1.style.width = "5%";
        orange_panel1.style.height = "4%";
        orange_panel1.style.backgroundColor = "#FFCC00";
        orange_panel1.style.zIndex = 4;
        orange_panel1.style.opacity = 0.5;

        orange_panel2.style.position = "absolute";
        orange_panel2.style.left = "5%";
        orange_panel2.style.top = "32%";
        orange_panel2.style.width = "5%";
        orange_panel2.style.height = "4%";
        orange_panel2.style.backgroundColor = "#FF9900";
        orange_panel2.style.zIndex = 4;
        orange_panel2.style.opacity = 0.5;

        orange_panel3.style.position = "absolute";
        orange_panel3.style.left = "5%";
        orange_panel3.style.top = "28%";
        orange_panel3.style.width = "5%";
        orange_panel3.style.height = "4%";
        orange_panel3.style.backgroundColor = "#FF6600";
        orange_panel3.style.zIndex = 4;
        orange_panel3.style.opacity = 0.5;


        orange_panel4.style.position = "absolute";
        orange_panel4.style.left = "5%";
        orange_panel4.style.top = "24%";
        orange_panel4.style.width = "5%";
        orange_panel4.style.height = "4%";
        orange_panel4.style.backgroundColor = "#FF3300";
        orange_panel4.style.zIndex = 4;
        orange_panel4.style.opacity = 0.5;


        //** **************显示条******************************
        // 蓝色条
        blue_panels.style.position = "absolute";
        blue_panels.style.left = "11%";
        blue_panels.style.top = "80%";
        blue_panels.style.width = "2%";
        blue_panels.style.height = "4%";
        blue_panels.style.backgroundColor = "#0000FF";
        blue_panels.style.zIndex = 4;
        blue_panels.style.opacity = 0.5;



        // 绿色条
        green_panels.style.position = "absolute";
        green_panels.style.left = "11%";
        green_panels.style.top = "60%";
        green_panels.style.width = "2%";
        green_panels.style.height = "4%";
        green_panels.style.backgroundColor = "#00FF00";
        green_panels.style.zIndex = 4;
        green_panels.style.opacity = 0.5;


        // 橙色条
        orange_panels.style.position = "absolute";
        orange_panels.style.left = "11%";
        orange_panels.style.top = "40%";
        orange_panels.style.width = "2%";
        orange_panels.style.height = "4%";
        orange_panels.style.backgroundColor = "#FFFF00";
        orange_panels.style.zIndex = 4;
        orange_panels.style.opacity = 0.5;


        // 红色条

        red_panels.style.position = "absolute";
        red_panels.style.left = "11%";
        red_panels.style.top = "20%";
        red_panels.style.width = "2%";
        red_panels.style.height = "4%";
        red_panels.style.backgroundColor = "#FF0000";
        red_panels.style.zIndex = 4;
        red_panels.style.opacity = 0.5;


        // 蓝色过渡条
        blue_panel1s.style.position = "absolute";
        blue_panel1s.style.left = "11%";
        blue_panel1s.style.top = "76%";
        blue_panel1s.style.width = "2%";
        blue_panel1s.style.height = "4%";
        blue_panel1s.style.backgroundColor = "#0033CC";
        blue_panel1s.style.zIndex = 4;
        blue_panel1s.style.opacity = 0.5;

        blue_panel2s.style.position = "absolute";
        blue_panel2s.style.left = "11%";
        blue_panel2s.style.top = "72%";
        blue_panel2s.style.width = "2%";
        blue_panel2s.style.height = "4%";
        blue_panel2s.style.backgroundColor = "#006699";
        blue_panel2s.style.zIndex = 4;
        blue_panel2s.style.opacity = 0.5;

        blue_panel3s.style.position = "absolute";
        blue_panel3s.style.left = "11%";
        blue_panel3s.style.top = "68%";
        blue_panel3s.style.width = "2%";
        blue_panel3s.style.height = "4%";
        blue_panel3s.style.backgroundColor = "#009966";
        blue_panel3s.style.zIndex = 4;
        blue_panel3s.style.opacity = 0.5;

        blue_panel4s.style.position = "absolute";
        blue_panel4s.style.left = "11%";
        blue_panel4s.style.top = "64%";
        blue_panel4s.style.width = "2%";
        blue_panel4s.style.height = "4%";
        blue_panel4s.style.backgroundColor = "#00CC33";
        blue_panel4s.style.zIndex = 4;
        blue_panel4s.style.opacity = 0.5;


        // 绿色过渡条

        green_panel1s.style.position = "absolute";
        green_panel1s.style.left = "11%";
        green_panel1s.style.top = "56%";
        green_panel1s.style.width = "2%";
        green_panel1s.style.height = "4%";
        green_panel1s.style.backgroundColor = "#33FF00";
        green_panel1s.style.zIndex = 4;
        green_panel1s.style.opacity = 0.5;


        green_panel2s.style.position = "absolute";
        green_panel2s.style.left = "11%";
        green_panel2s.style.top = "52%";
        green_panel2s.style.width = "2%";
        green_panel2s.style.height = "4%";
        green_panel2s.style.backgroundColor = "#66FF00";
        green_panel2s.style.zIndex = 4;
        green_panel2s.style.opacity = 0.5;

        green_panel3s.style.position = "absolute";
        green_panel3s.style.left = "11%";
        green_panel3s.style.top = "48%";
        green_panel3s.style.width = "2%";
        green_panel3s.style.height = "4%";
        green_panel3s.style.backgroundColor = "#99FF00";
        green_panel3s.style.zIndex = 4;
        green_panel3s.style.opacity = 0.5;

        green_panel4s.style.position = "absolute";
        green_panel4s.style.left = "11%";
        green_panel4s.style.top = "44%";
        green_panel4s.style.width = "2%";
        green_panel4s.style.height = "4%";
        green_panel4s.style.backgroundColor = "#CCFF00";
        green_panel4s.style.zIndex = 4;
        green_panel4s.style.opacity = 0.5;


        // 橙色过渡条
        orange_panel1s.style.position = "absolute";
        orange_panel1s.style.left = "11%";
        orange_panel1s.style.top = "36%";
        orange_panel1s.style.width = "2%";
        orange_panel1s.style.height = "4%";
        orange_panel1s.style.backgroundColor = "#FFCC00";
        orange_panel1s.style.zIndex = 4;
        orange_panel1s.style.opacity = 0.5;

        orange_panel2s.style.position = "absolute";
        orange_panel2s.style.left = "11%";
        orange_panel2s.style.top = "32%";
        orange_panel2s.style.width = "2%";
        orange_panel2s.style.height = "4%";
        orange_panel2s.style.backgroundColor = "#FF9900";
        orange_panel2s.style.zIndex = 4;
        orange_panel2s.style.opacity = 0.5;

        orange_panel3s.style.position = "absolute";
        orange_panel3s.style.left = "11%";
        orange_panel3s.style.top = "28%";
        orange_panel3s.style.width = "2%";
        orange_panel3s.style.height = "4%";
        orange_panel3s.style.backgroundColor = "#FF6600";
        orange_panel3s.style.zIndex = 4;
        orange_panel3s.style.opacity = 0.5;


        orange_panel4s.style.position = "absolute";
        orange_panel4s.style.left = "11%";
        orange_panel4s.style.top = "24%";
        orange_panel4s.style.width = "2%";
        orange_panel4s.style.height = "4%";
        orange_panel4s.style.backgroundColor = "#FF3300";
        orange_panel4s.style.zIndex = 4;
        orange_panel4s.style.opacity = 0.5;

        //*****************************************************


        // 色条加入到界面里
        main_panel.appendChild(blue_panel);
        main_panel.appendChild(green_panel);
        main_panel.appendChild(orange_panel);
        main_panel.appendChild(red_panel);

        // 过渡色加入到界面里
        main_panel.appendChild(blue_panel1);
        main_panel.appendChild(blue_panel2);
        main_panel.appendChild(blue_panel3);
        main_panel.appendChild(blue_panel4);

        main_panel.appendChild(green_panel1);
        main_panel.appendChild(green_panel2);
        main_panel.appendChild(green_panel3);
        main_panel.appendChild(green_panel4);

        main_panel.appendChild(orange_panel1);
        main_panel.appendChild(orange_panel2);
        main_panel.appendChild(orange_panel3);
        main_panel.appendChild(orange_panel4);

        main_panel.appendChild(blue_panels);
        main_panel.appendChild(green_panels);
        main_panel.appendChild(orange_panels);
        main_panel.appendChild(red_panels);

        // 过渡色加入到界面里
        main_panel.appendChild(blue_panel1s);
        main_panel.appendChild(blue_panel2s);
        main_panel.appendChild(blue_panel3s);
        main_panel.appendChild(blue_panel4s);

        main_panel.appendChild(green_panel1s);
        main_panel.appendChild(green_panel2s);
        main_panel.appendChild(green_panel3s);
        main_panel.appendChild(green_panel4s);

        main_panel.appendChild(orange_panel1s);
        main_panel.appendChild(orange_panel2s);
        main_panel.appendChild(orange_panel3s);
        main_panel.appendChild(orange_panel4s);

        // 初始状态什么都没有
        mouse_out_point();

        canvas_panel.style.visibility = "hidden";
    }


    $(function () {
        var list = new Array();
        
        var mycount = 0;
        // 讲需要的值加入到maplist中 pos  value 以空格将两个隔开
        <%for (int i = 0; i < All_Value_Pos_Array.Count; i++)
      {%>
        maplist.push("<% = All_Value_Pos_Array[i].ToString()%>");

        all_pos.push(Get_KongGe_String(maplist[mycount], 1));
        all_value.push(Get_KongGe_String(maplist[mycount], 2));
        mycount++;
        <% }%>

        // 一号管线 602-675
        // 二号管线 742-810
        // 三号管线 875-939
        // 四号管线 994-1069
        // 画曲线

        // 2361-2558

        draw_line(602, 636, 10, 10, 0, 0, "panel_zhu1");
        draw_line(742, 774, 10, 10, 0, 0, "panel_zhu2");
        draw_line(875, 907, 10, 10, 0, 0, "panel_zhu3");
        draw_line(994, 1026, 10, 10, 0, 0, "panel_zhu4");

        // 197
        // 80 80 37 
        //draw_line(2361, 2441, 20, 85, 55, 55);
        //draw_line(2441, 2478, 85, 97, 55, 89);
        //draw_line(2478, 2558, 97, 10, 89, 89);
       // draw_line(2219, 2242, 10, 2, 36, 66);
      // draw_line(2242, 2317, 2, 75, 66, 66);
    }


   );






    function mouse_in_point(point, point_name) {
        //alert(point);
        var color = point.style.backgroundColor;
        var mycolor = color.toString();

        label_biaochi.style.backgroundColor = color;

        if (mycolor == 'rgb(0, 0, 255)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "hidden";
            blue_panel2s.style.visibility = "hidden";
            blue_panel3s.style.visibility = "hidden";
            blue_panel4s.style.visibility = "hidden";

            green_panels.style.visibility = "hidden";
            green_panel1s.style.visibility = "hidden";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":极好";
        }

        if (mycolor == 'rgb(0, 51, 204)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "hidden";
            blue_panel3s.style.visibility = "hidden";
            blue_panel4s.style.visibility = "hidden";

            green_panels.style.visibility = "hidden";
            green_panel1s.style.visibility = "hidden";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":极好";
        }
        if (mycolor == 'rgb(0, 102, 153)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "hidden";
            blue_panel4s.style.visibility = "hidden";

            green_panels.style.visibility = "hidden";
            green_panel1s.style.visibility = "hidden";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":极好";
        }
        if (mycolor == 'rgb(0, 153, 102)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "hidden";

            green_panels.style.visibility = "hidden";
            green_panel1s.style.visibility = "hidden";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":极好";
        }

        if (mycolor == 'rgb(0, 204, 51)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "hidden";
            green_panel1s.style.visibility = "hidden";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":极好";
        }

        if (mycolor == 'rgb(0, 255, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "hidden";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":良好";
        }

        if (mycolor == 'rgb(51, 255, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "hidden";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":良好";
        }

        if (mycolor == 'rgb(102, 255, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "hidden";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":良好";
        }
        if (mycolor == 'rgb(153, 255, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "hidden";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":良好";
        }

        if (mycolor == 'rgb(204, 255, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";

            orange_panels.style.visibility = "hidden";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":良好";
        }

        if (mycolor == 'rgb(255, 255, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";

            orange_panels.style.visibility = "visible";
            orange_panel1s.style.visibility = "hidden";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":正常";
        }

        if (mycolor == 'rgb(255, 204, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";

            orange_panels.style.visibility = "visible";
            orange_panel1s.style.visibility = "visible";
            orange_panel2s.style.visibility = "hidden";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":正常";
        }
        if (mycolor == 'rgb(255, 153, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";

            orange_panels.style.visibility = "visible";
            orange_panel1s.style.visibility = "visible";
            orange_panel2s.style.visibility = "visible";
            orange_panel3s.style.visibility = "hidden";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":正常";
        }

        if (mycolor == 'rgb(255, 102, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";

            orange_panels.style.visibility = "visible";
            orange_panel1s.style.visibility = "visible";
            orange_panel2s.style.visibility = "visible";
            orange_panel3s.style.visibility = "visible";
            orange_panel4s.style.visibility = "hidden";

            red_panels.style.visibility = "hidden";
            label_biaochi.textContent = point_name + ":正常";
        }

        if (mycolor == 'rgb(255, 51, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";
            label_biaochi.textContent = point_name + ":正常";

            orange_panels.style.visibility = "visible";
            orange_panel1s.style.visibility = "visible";
            orange_panel2s.style.visibility = "visible";
            orange_panel3s.style.visibility = "visible";
            orange_panel4s.style.visibility = "visible";

            red_panels.style.visibility = "hidden";
        }

        if (mycolor == 'rgb(255, 0, 0)')      // 要注意这里有空格！！！！！
        {
            blue_panels.style.visibility = "visible";
            blue_panel1s.style.visibility = "visible";
            blue_panel2s.style.visibility = "visible";
            blue_panel3s.style.visibility = "visible";
            blue_panel4s.style.visibility = "visible";

            green_panels.style.visibility = "visible";
            green_panel1s.style.visibility = "visible";
            green_panel2s.style.visibility = "visible";
            green_panel3s.style.visibility = "visible";
            green_panel4s.style.visibility = "visible";

            orange_panels.style.visibility = "visible";
            orange_panel1s.style.visibility = "visible";
            orange_panel2s.style.visibility = "visible";
            orange_panel3s.style.visibility = "visible";
            orange_panel4s.style.visibility = "visible";

            red_panels.style.visibility = "visible";
            label_biaochi.textContent = point_name + ":报警";
        }

    }

    function mouse_out_point() {

        blue_panels.style.visibility = "hidden";
        blue_panel1s.style.visibility = "hidden";
        blue_panel2s.style.visibility = "hidden";
        blue_panel3s.style.visibility = "hidden";
        blue_panel4s.style.visibility = "hidden";

        green_panels.style.visibility = "hidden";
        green_panel1s.style.visibility = "hidden";
        green_panel2s.style.visibility = "hidden";
        green_panel3s.style.visibility = "hidden";
        green_panel4s.style.visibility = "hidden";

        orange_panels.style.visibility = "hidden";
        orange_panel1s.style.visibility = "hidden";
        orange_panel2s.style.visibility = "hidden";
        orange_panel3s.style.visibility = "hidden";
        orange_panel4s.style.visibility = "hidden";

        red_panels.style.visibility = "hidden";


        label_biaochi.style.backgroundColor = "rgb(0, 0, 255)";
        label_biaochi.textContent = "";
    }

    function draw_line(start_pos, end_pos, start_x, end_x, start_y, end_y,panel_name) {
        var pos_count = 0;
        var this_count = 0;
        for (var i = 0; i < all_pos.length; i++) {
            try {
                // 创建一个div

                if (all_pos[i] >= start_pos && all_pos[i] <= end_pos) {
                    pos_count++
                }
            }
            catch (errer) {
            }
        }
        for (var i = 0; i < all_pos.length; i++) {
            try {
                if (all_pos[i] >= start_pos && all_pos[i] <= end_pos) {

                    var biaochi = document.createElement("xian_" + all_pos[i],"label");

                    biaochi.id = ("xian" + all_pos[i]);
                    biaochi.style.position = "absolute";
                    biaochi.style.left = ((end_x - start_x) / pos_count * this_count + start_x + 40).toString() + "%";
                    biaochi.style.top = (this_count * 25 + 20).toString() + "px";
                    biaochi.style.width = "30%";
                    biaochi.style.height = "25px";
                    biaochi.style.backgroundColor = "yellow";
                    
                    biaochi.textContent =(this_count / 5).toString() + "M";


                    var mypoint = document.createElement("panel_" + all_pos[i]);
                    mypoint.id = (all_pos[i]);

                    mypoint.style.position = "absolute";
                    mypoint.style.left = ((end_x - start_x) / pos_count * this_count + start_x).toString() + "%";

                    mypoint.style.top =  (this_count*25+20).toString()+"px";
                    mypoint.style.width = "40%";
                    mypoint.style.height = "25px";

                    if (all_value[i] <= 0.001) {
                        all_value[i] = 0.001;
                    }


                    if (all_value[i] < 0.1 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#0000FF";
                    if (all_value[i] >= 0.1 * yuzhhi / 2 && all_value[i] < 0.2 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#0033CC";
                    if (all_value[i] >= 0.2 * yuzhhi / 2 && all_value[i] < 0.3 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#006699";
                    if (all_value[i] >= 0.3 * yuzhhi / 2 && all_value[i] < 0.4 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#009966";
                    if (all_value[i] >= 0.4 * yuzhhi / 2 && all_value[i] < 0.5 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#00CC33";
                    if (all_value[i] >= 0.5 * yuzhhi / 2 && all_value[i] < 0.6 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#00FF00";
                    if (all_value[i] >= 0.6 * yuzhhi / 2 && all_value[i] < 0.7 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#33FF00";
                    if (all_value[i] >= 0.7 * yuzhhi / 2 && all_value[i] < 0.8 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#66FF00";
                    if (all_value[i] >= 0.8 * yuzhhi / 2 && all_value[i] < 0.9 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#99FF00";
                    if (all_value[i] >= 0.9 * yuzhhi / 2 && all_value[i] < 1.0 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#CCFF00";
                    if (all_value[i] >= 1.0 * yuzhhi / 2 && all_value[i] < 1.2 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#FFFF00";
                    if (all_value[i] >= 1.2 * yuzhhi / 2 && all_value[i] < 1.4 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#FFCC00";
                    if (all_value[i] >= 1.4 * yuzhhi / 2 && all_value[i] < 1.6 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#FF9900";
                    if (all_value[i] >= 1.6 * yuzhhi / 2 && all_value[i] < 1.8 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#FF6600";
                    if (all_value[i] >= 1.8 * yuzhhi / 2 && all_value[i] < 2.0 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#FF3300";
                    if (all_value[i] >= 2.0 * yuzhhi / 2)
                        mypoint.style.backgroundColor = "#FF0000";
                    mypoint.style.zIndex = 2;
                    (function (mypoint) {
                        mypoint.onmouseenter = function (event) {
                            mouse_in_point(document.getElementById(mypoint.id.toString()), mypoint.id.toString());
                        }

                        mypoint.onmouseout = function (event) {
                            mouse_out_point();
                        }

                        mypoint.onclick = function (event) {
                            show_chart(mypoint.id.toString());
                        }
                    }


                    )(mypoint);


                    var panel = document.getElementById(panel_name);
                    panel.appendChild(mypoint);
                    panel.appendChild(biaochi);

                    // 放到后面
                    //var select_point = document.getElementById(all_pos[i]);
                    //var name = select_point.id.toString();
                    //select_point.onmouseenter=function(event)
                    //{
                    //    mouse_in_point(document.getElementById(name), name);
                    //}
                    this_count++;
                }
            }
            catch (error) {

            }

        }

    }

    function Get_KongGe_String(scr, index) {
        // 返回下划线第index个量
        try {
            var count = 0;   // 下划线的数量
            var length = scr.length;
            //var char_arraylist = scr.
            for (var i = 0; i < length; i++) {
                if (scr[i] == ' ') {
                    count++;
                }
            }
            var _index = new Array();
            var substring = new Array();
            _index[0] = -1;
            var mycount = 1;
            for (var i = 0; i < length; i++) {
                if (i == length - 1) {
                    _index[mycount] = i + 1;
                    break;
                }
                if (scr[i] == ' ') {
                    _index[mycount] = i;
                    mycount++;
                }
            }
            for (var i = 0; i < count + 1; i++) {
                substring[i] = scr.substring(_index[i] + 1, _index[i + 1] - _index[i] - 1);
            }
            return substring[index - 1];
        }
        catch (err) { return null; }
    } // 返回空格第index个量


    function red_json_value(string) {

        var length = string.length;
        //alert(string);
        // 数量读出来之后
        jubu_time_list = [];
        jubu_value_list = [];
        var mycount = 0;
        for (var i = 0; i < length - 1; i++) {
            // alert(string.substr(i, 1));
            if (string.substr(i, 2) == '":') {
                //mycount++;

                for (var j = i; j < length; j++) {
                    if (string.substr(j, 2) == '",') {
                        // 日期
                        //alert("date");
                        //alert(string.substr(i + 3, j - i - 3));
                        jubu_time_list.push(string.substr(i + 3, j - i - 3));
                        // alert(jubu_time_list.length.toString());
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
                        //alert(string.substr(i + 2, j - i - 2));

                        var weiyi = string.substr(i + 2, j - i - 2);
                        // alter(weiyi);
                        //var xiaoshu = weiyi.toFixed(2);
                        //alter(xiaoshu);

                        var weiyi_float = parseFloat(weiyi);
                        var weiyi_cut = weiyi_float.toFixed(4);
                        jubu_value_list.push(weiyi_cut);
                        break;
                    }
                }
            }
        }
    }
    var myRadarChart;

    function show_chart(pos) {

        try {
            myRadarChart.destroy();
        }
        catch (err) {

        }

        jubu_time_list = [];
        jubu_value_list = [];


        var now_jubu_time_list = new Array();
        var now_jubu_value_list = new Array();

        now_jubu_time_list = [];
        now_jubu_value_list = [];
        canvas_panel.style.visibility = "visible";
        canvas_panel.style.display = "block";

        $.ajax({
            url: "/mywebserver.asmx/get_pos_value",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{pos:'" + pos.toString() + "'}",
            success: function (data) {
                // 得到的结果是data
                //alert($.parseJSON(data) );
                red_json_value(data);
                var ctx = document.getElementById("mycanvas");
                var options = {

                };

                var data = {
                    labels: jubu_time_list,
                    datasets: [{
                        data: jubu_value_list,
                        label: pos.toString() + '应变',
                        borderColor: '#0000ff'
                    }]
                }

                myRadarChart = new Chart(ctx, {
                    data: data,
                    type: 'line',
                    options: options,
                    title: '近一个月的应变趋势'
                });

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                return $.parseJSON(data.responseText).Message;
            },
            complete: function (data) {

            }
        });




        //var ctx = document.getElementById("mycanvas");
        //var options = {

        //};

        //var data = {
        //    labels: ['0', '1', '2', '3'],
        //    datasets: [{
        //        data: [0, 1, 2, 3],
        //        label: 'two',
        //        borderColor: '#0000ff'
        //    }]
        //}

        //var  myRadarChart = new Chart(ctx, {
        //    data: data,
        //    type:'line',
        //    options: options
        //});
    }

</script>