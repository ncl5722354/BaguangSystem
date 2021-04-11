<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubMap.aspx.cs" Inherits="newwarningsystem.SubMap" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .line {
            position: absolute;
            z-index: 2;
            width: 2px;
            height: 2px;
            font-size: 1px;
            background-color: #0000FF;
            overflow: hidden;
        }
        .point {
            position: absolute;
            z-index: 2;
            width: 5px;
            height: 5px;
            font-size: 1px;
            background-color: #0000FF;
            overflow: hidden;
            border-radius:100%;
        }
        .auto-style14 {
            position: absolute;
            top: 1%;
            left: 70%;
            height: 4%;
            width: 20%;
            z-index: 4;
        }

        .auto-style65 {
            position: absolute;
            top: 1%;
            height: 4%;
            width: 5%;
            z-index: 4;
        }
         .auto-style43 {
            position: absolute;
            top: 0px;
            left: 0px;
            height: 99%;
            width: 100%;
            z-index: -1;
        }
         .auto-style42 {
            position: absolute;
            top: 11%;
            left: 0%;
            z-index: 1;
            width: 80%;
            height: 88%;
            overflow:hidden;
        }
         
         .auto-style44 {
            position: absolute;
            top: 9%;
            left: 35%;
           
            z-index: 6;
        }
         .auto-style69 {
            position: absolute;
            top: 15%;
            left: 8%;
            width: 13%;
            height:6%;
            z-index: 3;
            right: 3px;
        }
             .auto-style58 {
            
            position: absolute;
            left: 70%;
            z-index: 4;
            width: 500px;
            height: 27px;
        
        }
             .auto-style61 {
            position: absolute;
            top: 40%;
            left:70%;
            z-index: 1;
            width: 121px;
            height: 200px;
        }
              .auto-style81 {
            position: absolute;
            top: 37%;
            left: 80%;
            z-index: 1;
            width: 188px;
            height: 35px;
           
        }
              .auto-style62 {
            position: absolute;
            top: 37%;
            left: 70%;
            z-index: 1;
            width: 188px;
            height: 35px;
           
        }
             .auto-style82 {
            position: absolute;
            top: 40%;
            left: 80%;
            z-index: 1;
            width: 121px;
            height: 200px;
        }
        .ImageButton_zhuye
        {
            position: absolute;
            top: 1%;
            left: 50%;
            width: 3%;
            z-index: 9;
            height: 5%;
        }
        .ImageButton_baobiao
        {
            position: absolute;
            top: 1%;
            left: 55%;
            width: 3%;
            z-index: 9;
            height: 5%;
        }
        .ImageButton_chaxun
        {
            position: absolute;
            top: 1%;
            left: 60%;
            width: 3%;
            z-index: 9;
            height: 5%;
        }
        .Label_zhuye{
            position: absolute;
            top: 6%;
            left: 50%;
            width: 5%;
            z-index: 9;
            height: 5%;
        }
         .Label_baobiao{
            position: absolute;
            top: 6%;
            left: 55%;
            width: 5%;
            z-index: 9;
            height: 5%;
        }
         .Label_chaxun{
             position: absolute;
            top: 6%;
            left: 60%;
            width: 5%;
            z-index: 9;
            height: 5%;
         }
             .auto-style66 {
            position: absolute;
            top: 1%;
            left: 15%;
            width: 10%;
            z-index: 4;
            height:4%;
        }
             .auto-style67 {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 100%;
            z-index: 3;
            height:11%;
        }
              .auto-style83 {
            position: absolute;
            top: 0px;
            left: 20px;
            width: 6%;
            z-index: 4;
            height:10%;
        }

              .auto-style85 {
            position: absolute;
            top: 5%;
            left: 0%;
            width: 15%;
            z-index: 5;
            height:10%;
        }
             .auto-style86 {
            position: absolute;
            top: 8%;
            left: 4%;
            width: 15%;
            z-index: 6;
            height:10%;
        }
             .auto-style87 {
            position: absolute;
            top: 1%;
            left: 5%;
            width: 10%;
            z-index: 6;
            height:5%;
        }
             .auto-style88 {
            position: absolute;
            top: 18%;
            left: 85%;
            width: 25%;
            z-index: 7;
            height:7%;
        }
             .auto-style89 {
            position: absolute;
            top: 48%;
            left: 75%;
            width: 25%;
            z-index: 6;
            height:7%;
        }
             .auto-style90 {
            position: absolute;
            top: 48%;
            left: 85%;
            width: 25%;
            z-index: 7;
            height:10%;
        } .auto-style91 {
            position: absolute;
            top: 50%;
            left: 75%;
            width: 25%;
            z-index: 6;
            height:25%;
        }
          .auto-style92 {
            position: absolute;
            top: 60%;
            left: 79%;
            width: 10%;
            z-index: 7;
            height:10%;
        }
          .auto-style93 {
            position: absolute;
            top: 60%;
            left: 87%;
            width: 10%;
            z-index: 7;
            height:10%;
        }
          .auto-style94 {
            position: absolute;
            top: 6%;
            left: 60%;
            width: 5%;
            z-index: 7;
            height:8%;
            right: 358px;
        }
           .auto-style95 {
            position: absolute;
            top: 6%;
            left: 68%;
            width: 5%;
            z-index: 7;
            height:8%;
        }
            .auto-style96 {
            position: absolute;
            top: 6%;
            left: 76%;
            width: 5%;
            z-index: 7;
            height:8%;
        }
            .panel_shuliangtongji {
            position: absolute;
            top: 11%;
            left: 0;
            width: 19%;
            z-index: 4;
            height:50%;
        }   
            .Label_dangqiantongji {
            position: absolute;
            top: 5%;
            left: 2%;
            width: 80%;
            z-index: 5;
            height:10%;
        }   
            .Label_shuoming {
            position: absolute;
            top: 15%;
            left: 2%;
            width: 80%;
            z-index: 5;
            height:10%;
        }  
            .Label_label1 {
            position: absolute;
            top: 22%;
            left: 2%;
            width: 80%;
            z-index: 5;
            height: 10%;
        }
            .Label_label2 {
            position: absolute;
            top: 42%;
            left: 2%;
            width: 80%;
            z-index: 5;
            height: 10%;
        }
            .Label_label3 {
            position: absolute;
            top: 62%;
            left: 2%;
            width: 80%;
            z-index: 5;
            height: 10%;
        }
            .Label_label4 {
            position: absolute;
            top: 82%;
            left: 2%;
            width: 80%;
            z-index: 5;
            height: 10%;
        }
            .Panel_process1 {
            position: absolute;
            top: 30%;
            left: 2%;
            width: 70%;
            z-index: 5;
            height: 7%;
        }
            .Panel_process2 {
            position: absolute;
            top: 50%;
            left: 2%;
            width: 70%;
            z-index: 5;
            height: 7%;
        }
            .Panel_process3 {
            position: absolute;
            top: 70%;
            left: 2%;
            width: 70%;
            z-index: 5;
            height: 7%;
        }
            .Panel_process4 {
            position: absolute;
            top: 90%;
            left: 2%;
            width: 70%;
            z-index: 5;
            height: 7%;
        }
            .Panel_value1 {
            position: absolute;
            top: 30%;
            left: 2%;
            width: 10%;
            z-index: 6;
            height: 7%;
        }
            .Panel_value2 {
            position: absolute;
            top: 50%;
            left: 2%;
            width: 10%;
            z-index: 6;
            height: 7%;
        }
            .Panel_value3 {
            position: absolute;
            top: 70%;
            left: 2%;
            width: 10%;
            z-index: 6;
            height: 7%;
        }
            .Panel_value4 {
            position: absolute;
            top: 90%;
            left: 2%;
            width: 10%;
            z-index: 6;
            height: 7%;
        }
            .Panel_shebeizhuangtai {
            position: absolute;
            top: 11%;
            left: 80%;
            width: 19%;
            z-index: 7;
            height: 88%;
        }
            .Panel_bingzhuangtu {
            position: absolute;
            top: 61%;
            left: 0%;
            width: 19%;
            z-index: 6;
            height: 38%;
        }
            .Chart_bingzhuangtu {
            position: absolute;
            top: 10%;
            left: 3%;
            width: 30px;
            z-index: 6;
            height: 30px;
        }
            .Panel_mapinfo {
            position: absolute;
            top: 7%;
            left: 70%;
            width: 30%;
            z-index: 7;
            height: 4%;
            border-radius:3%;
            opacity:0.8;
        }
            .Panel_gongnengqu
        {
            position:absolute;
            top:61%;
            left:81%;
            width:19%;
            height:38%;
            z-index:7;
        }
        .image_graft
        {
            position:absolute;
            top:20%;
            left:20%;
            width:40px;
            height:40px;
            z-index:7;
            border-radius:3px;
        }
        .image_attition
        {
            position:absolute;
            top:20%;
            left:60%;
            width:40px;
            height:40px;
            z-index:7;
            border-radius:3px;
        }
        .Image_set
        {
            position:absolute;
            top:60%;
            left:21%;
            width:40px;
            height:40px;
            z-index:7;
            border-radius:3px;
        }
        .Image_home
        {
            position:absolute;
            top:60%;
            left:60%;
            width:40px;
            height:40px;
            z-index:7;
            border-radius:3px;
        }
        .Panel_jingbao
        {
            position:absolute;
            top:72%;
            left:20%;
            width:60%;
            height:28%;
            z-index:6;
           
        }
        .Label_baojing
        {
            position:absolute;
            top:73%;
            left:22%;
            width:100px;
            height:20px;
            z-index:6;
        }
        .Label_header1 {
            position:absolute;
            top:78%;
            left:23%;
            width:100px;
            height:20px;
            z-index:6;
        }
        .Label_header2 {
            position:absolute;
            top:78%;
            left:43%;
            width:100px;
            height:20px;
            z-index:6;
        }
        .Label_header3 {
            position:absolute;
            top:78%;
            left:63%;
            width:100px;
            height:20px;
            z-index:6;
        }
         
            .biaozhi1 {
            position: absolute;
            top: 20%;
            left: 22%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi2 {
            position: absolute;
            top: 20%;
            left: 32%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi3 {
            position: absolute;
            top: 20%;
            left: 42%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi4 {
            position: absolute;
            top: 20%;
            left: 52%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi5 {
            position: absolute;
            top: 20%;
            left: 62%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi1_label {
            position: absolute;
            top: 20%;
            left: 24%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi2_label {
            position: absolute;
            top: 20%;
            left: 34%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi3_label {
            position: absolute;
            top: 20%;
            left: 44%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi4_label {
            position: absolute;
            top: 20%;
            left: 54%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi5_label {
            position: absolute;
            top: 20%;
            left: 64%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
           .Panel_chart
        {
            position:absolute;
            top:80%;
            left:0%;
            width:80%;
            z-index:9;
            height:15%;
        }

           .Label_baifenbi1
        {
            position: absolute;
            top: 30%;
            left: 83%;
            width: 70%;
            z-index: 7;
            height: 7%;
        }
        .Label_baifenbi2
        {
            position: absolute;
            top: 50%;
            left: 83%;
            width: 70%;
            z-index: 7;
            height: 7%;
        }
        .Label_baifenbi3
        {
            position: absolute;
            top: 70%;
            left: 83%;
            width: 70%;
            z-index: 7;
            height: 7%;
        }
        .Label_baifenbi4
        {
            position: absolute;
            top: 90%;
            left: 83%;
            width: 70%;
            z-index: 7;
            height: 7%;
        }
         .Panel_baojing_info
        {
            position:absolute;
            top:85%;
            left:20%;
            width:60%;
            z-index:8;
            height:15%;
        }
         .shebeizhuangtai_table_panel
         {
             position:absolute;
            top:10%;
            left:0%;
            width:100%;
            z-index:9;
            height:90%;
            
         }
         
         .label_weizhi_title
         {
             position: absolute;
            top: 0%;
            left: 5%;
            width: 40%;
            z-index: 9;
            height: 10%;
            text-align:center; 
         }
         .label_weiyi_title
         {
             position: absolute;
            top: 0%;
            left: 50%;
            width: 40%;
            z-index: 9;
            height: 10%;
            text-align:center; 
         }
         .Label_baojingshuoming1
        {
            position:absolute;
            top:74%;
            left:2%;
            width:10%;
            z-index:10;
            height:4%;
            text-align:center;
        }
         .Menu1 
        {
            position:absolute;
            top:1%;
            left:8%;
            width:30%;
            z-index:10;
            height:4%;
        }
         .info1 {
            position: absolute;
            top: 0%;
            left: 20%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info2 {
            position: absolute;
            top: 0%;
            left: 24%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info3 {
            position: absolute;
            top: 0%;
            left: 28%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info4 {
            position: absolute;
            top: 0%;
            left: 32%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info5 {
            position: absolute;
            top: 0%;
            left: 36%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info6 {
            position: absolute;
            top: 0%;
            left: 40%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info7 {
            position: absolute;
            top: 0%;
            left: 44%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info8 {
            position: absolute;
            top: 0%;
            left: 48%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info9 {
            position: absolute;
            top: 0%;
            left: 52%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info10 {
            position: absolute;
            top: 0%;
            left: 56%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info11 {
            position: absolute;
            top: 0%;
            left: 60%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info12 {
            position: absolute;
            top: 0%;
            left: 64%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info13 {
            position: absolute;
            top: 0%;
            left: 68%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info14 {
            position: absolute;
            top: 0%;
            left: 72%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info15 {
            position: absolute;
            top: 0%;
            left: 76%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .info16 {
            position: absolute;
            top: 0%;
            left: 80%;
            width: 4%;
            z-index: 9;
            height: 100%;
            text-align: center;
        }
        .label_min
        {
            position: absolute;
            top: 30%;
            left: 5%;
            width: 15%;
            z-index: 9;
            height: 70%;
            text-align: center;
        }
        .label_max
        {
            position: absolute;
            top: 30%;
            left: 84%;
            width: 15%;
            z-index: 9;
            height: 70%;
            text-align: center;
        }
         
             .auto-style97 {
            position: absolute;
            top: 0%;
            left: 0%;
            z-index: 1;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
             .Image_title_name
        {
             position: absolute;
            top: 1%;
            left: 12%;
            z-index: 6;
            width: 30%;
            height: 7%;
        }
         .MyChart{
             position: absolute;
            top: 10%;
            left: 25%;
            z-index: 14;
            width: 50%;
            height: 50%;

         }
         .closelabel{
             position:absolute;
             top:10%;
             left:65%;
             z-index:15;
             width:10%;
             height:5%;
             visibility:visible;
            
         }
         .closelabel_hiden{
             position:absolute;
             top:10%;
             left:65%;
             z-index:15;
             width:10%;
             height:3%;
            visibility:hidden;
         }

         .fuwei{
             position:absolute;
             top:10%;
             left:41%;
             z-index:15;
             width:3%;
             height:2%;
             visibility:hidden;
         
         }

          .qianjin{
             position:absolute;
             top:10%;
             left:29%;
             z-index:15;
             width:4%;
             height:2%;
             visibility:hidden;
         }
         .qianjin10
         {
             position:absolute;
             top:10%;
             left:37%;
             z-index:15;
             width:4%;
             height:2%;
             visibility:hidden;
         }
         .houtui{
             position:absolute;
             top:10%;
             left:25%;
             z-index:15;
             width:4%;
             height:2%;
             visibility:hidden;
         }
         .houtui10
         {
             position:absolute;
             top:10%;
             left:33%;
             z-index:15;
             width:4%;
             height:2%;
             visibility:hidden;
         }
         .canvas1
         {
             position: absolute;
            top: 0%;
            left: 0%;
            z-index: 14;
            width: 100%;
            height: 100%;
            
         }
         .canvas2
         {
             position: absolute;
            top: 0%;
            left: 0%;
            z-index: 13;
            width: 100%;
            height: 100%;
            
         }
         .mydiv{
             position:absolute;
             top:0%;
             left:0%;
             z-index:1;
             width:100%;
             height:100%;
         }
             </style>
</head>

<body style="height: 150%; width: 100%">
    <form id="form1" runat="server" class="mydiv">
    <div id="mydiv" class="mydiv">
        <div id="div1" class="auto-style42" runat="server" draggable="false">
           <img id="Image1" src="Resource/1.png" draggable="false" class="auto-style97" aria-expanded="false" aria-grabbed="false"/>
        </div>
        <input id="btn_close" class="closelabel_hiden" type="button" aria-expanded="false" aria-grabbed="false" value="关闭"/>
        <input id="btn_qianjin" class="qianjin" type="button" value="前进" />
        <input id="btn_houtui"  class="houtui" type="button" value="后退"/>

        <input id="btn_qianjin10" class="qianjin10" type="button" value="前进10天"/>
        <input id="btn_houtui10" class="houtui10" type="button" value="后退10天"/>

        <input  id="btn_fuwei" class="fuwei" type="button" value="复位"/>
        <asp:label ID="label_warnlevel" runat="server" text="报警等级" CssClass="auto-style86" Font-Size="XX-Large" ForeColor="White" Visible="false"></asp:label>
        <asp:label ID="label_rili" runat="server" text="日历选择" CssClass="auto-style88" Font-Size="XX-Large" ForeColor="White" Visible="false"></asp:label>
        <asp:label ID="label_baojing" runat="server" text="报警显示" CssClass="auto-style90" Font-Size="XX-Large" ForeColor="White" Visible="false"></asp:label>
        <asp:Image ID="Image2"  CssClass="auto-style43" runat="server"/>
        <asp:Label ID="Label_title" CssClass="auto-style44" runat="server" Font-Names="微软雅黑" Font-Size="20pt" ForeColor="White" Text="Label" BackColor="#FF3300" BorderStyle="Solid" BorderColor="Black" BorderWidth="3px"></asp:Label>
        <asp:Image ID="Image_icon" CssClass="auto-style83" runat="server"  ImageUrl="~/Resource/LOGO.png" BorderColor="Black" BorderStyle="None" BorderWidth="3px" />
        <asp:ImageButton ID="ImageButton_set" CssClass="auto-style95" runat="server" ImageUrl="~/Resource/settings_64px_1229386_easyicon.net.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" BackColor="#3366FF" OnClick="ImageButton_set_Click" Visible="false"/>
        <asp:Image ID="Image_head" runat="server" CssClass="auto-style67"  ImageUrl="~/Resource/上侧背景条1.png"/>
        <asp:Image ID="Image3" CssClass="auto-style91" runat="server" ImageUrl="~/Resource/dise.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"/>
        <asp:Image ID="Image4" CssClass="auto-style85" runat="server" ImageUrl="~/Resource/图片4.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"/>
        <asp:Image ID="Image5" CssClass="auto-style87"  runat="server" ImageUrl="~/Resource/图片4.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"/>
        <asp:Image ID="Image6" CssClass="auto-style89"  runat="server" ImageUrl="~/Resource/图片4.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"/>
        <asp:Image ID="Image7" runat="server" />
        <asp:Label ID="Label_weizhi" CssClass="auto-style92" runat="server" Text="位置" Font-Names="微软雅黑" Visible="false"></asp:Label>
        <asp:Label ID="Label_weiyiliang" CssClass="auto-style93" runat="server" Text="位移量" Font-Names="微软雅黑" Visible="false"></asp:Label>
       
        <asp:ImageButton ID="ImageButton_zhuye" CssClass="ImageButton_zhuye" runat="server" ImageUrl="~/Resource/主页.png" OnClick="ImageButton_zhuye_Click" />
        <asp:ImageButton ID="ImageButton_baobiao" CssClass="ImageButton_baobiao"  runat="server" ImageUrl="~/Resource/报表.png" OnClick="ImageButton_baobiao_Click" />
        <asp:ImageButton ID="ImageButton_chaxun" CssClass="ImageButton_chaxun" runat="server" ImageUrl="~/Resource/查询.png" OnClick="ImageButton_chaxun_Click" />

        <asp:Label ID="Label_zhuye" CssClass="Label_zhuye" runat="server" Text="主页" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_baobiao" CssClass="Label_baobiao" runat="server" Text="报表" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        
        
        <asp:Label ID="Label_chaxun" CssClass="Label_chaxun" runat="server" Text="查询" Font-Names="微软雅黑" ForeColor="White" Font-Size="10pt"></asp:Label>

        <asp:ImageButton ID="ImageButton_home" runat="server" BackColor="#3366FF" CssClass="auto-style94" ImageUrl="~/Resource/home.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnClick="ImageButton_home_Click" Visible="false" />
        <asp:ImageButton ID="ImageButton_chafen" runat="server" BackColor="#3366FF" CssClass="auto-style96" ImageUrl="~/Resource/find_magnifier_magnifying_glass_search_zoom_64px_1225492_easyicon.net.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnClick="ImageButton_chafen_Click" Visible="false"/>
        
        <asp:Image ID="Image_title_name" CssClass="Image_title_name" runat="server" ImageUrl="~/Resource/坝光收费站边坡健康监测系统-文字效果.png" />
        <asp:Label ID="Label12" runat="server" CssClass="auto-style62" Text="选择日期" ForeColor="White" Visible="false"></asp:Label>
        <asp:LinkButton ID="link" CssClass="auto-style65" Text="主页面" runat="server" OnClick="link0_Click" ForeColor="White" Visible="false"></asp:LinkButton>
       <asp:Label ID="Label2" runat="server" CssClass="auto-style81" Text="选择时间" ForeColor="White" Visible="false"></asp:Label>
       <asp:Label ID="Label11" runat="server" CssClass="auto-style58" Text="趋势曲线" ForeColor="White" Visible="false"></asp:Label>
       <asp:LinkButton ID="link0" CssClass="auto-style66" Text="差分查询" runat="server" OnClick="link_Click" ForeColor="White" Visible="false"></asp:LinkButton>
      
       <div id="chart_wrapper" class="MyChart" runat="server" style="display:none">
          <asp:Panel ID="panel1" CssClass="canvas2" BackColor="White" runat="server"></asp:Panel>
           <canvas id="myChart" class="canvas1" runat="server"></canvas>
       </div>

        <!-- 关于时间的更新-->
        <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager><!--必须包含这个控件，否则UpdatePanel无法使用-->  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
                <ContentTemplate>
            <!--Lable和Timer控件必须都包含在UpdatePanel控件中 -->  
                    <asp:Label ID="Label_timer" CssClass="auto-style14" runat="server" Text="Label" Font-Names="微软雅黑" ForeColor="White" Font-Size="Large"></asp:Label>  <!--用于显示时间-->  
                     <asp:Label ID="Label_baojingshuoming1" CssClass="Label_baojingshuoming1" runat="server" Text="总体说明" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible="false"></asp:Label>
                    
                    <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->  
                    <!--饼状图-->
        <asp:Panel ID="Panel_bingzhuangtu" CssClass="Panel_bingzhuangtu" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            <asp:Label ID="Label_baojingshuoming" CssClass="Label_dangqiantongji" runat="server" Text="总体说明" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF"></asp:Label>
        </asp:Panel>

         <asp:Panel ID="Panel_shuliangtongji" CssClass="panel_shuliangtongji" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            <asp:Label ID="Label_danqiantongji" CssClass="Label_dangqiantongji" runat="server" Text="当前统计" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF"></asp:Label>
            <asp:Label ID="Label_shuoming" CssClass="Label_shuoming" runat="server" Text="全局各个位移数量占比" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="10pt"></asp:Label>
            <asp:Label ID="Label_label1" CssClass="Label_label1" runat="server" Text="小于0.01mm" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Label ID="Label_label2" CssClass="Label_label2" runat="server" Text="0.01mm到0.1mm" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Label ID="Label_label3" CssClass="Label_label3" runat="server" Text="0.1mm到0.2mm" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Label ID="Label_label4" CssClass="Label_label4" runat="server" Text="大于0.2mm" Font-Bold="True" Font-Names="微软雅黑" ForeColor="Maroon" Font-Size="7pt"></asp:Label>
            <asp:Panel ID="Panel_process_1" CssClass="Panel_process1" runat="server" BackColor="#041435"></asp:Panel>
            <asp:Panel ID="Panel_process_2" CssClass="Panel_process2" runat="server" BackColor="#041435"></asp:Panel>
            <asp:Panel ID="Panel_process_3" CssClass="Panel_process3" runat="server" BackColor="#041435"></asp:Panel>
            <asp:Panel ID="Panel_process_4" CssClass="Panel_process4" runat="server" BackColor="#041435"></asp:Panel>
            <asp:Panel ID="Panel_value1" CssClass="Panel_value1" runat="server" BackColor="DarkBlue"></asp:Panel>
            <asp:Panel ID="Panel_value2" CssClass="Panel_value2" runat="server" BackColor="Blue"></asp:Panel>
            <asp:Panel ID="Panel_value3" CssClass="Panel_value3" runat="server" BackColor="LightGreen"></asp:Panel>
            <asp:Panel ID="Panel_value4" CssClass="Panel_value4" runat="server" BackColor="Red"></asp:Panel>
            <asp:Label ID="Label_baifenbi1" CssClass="Label_baifenbi1" runat="server" Text="0%" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Label ID="Label_baifenbi2" CssClass="Label_baifenbi2" runat="server" Text="0%" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Label ID="Label_baifenbi3" CssClass="Label_baifenbi3" runat="server" Text="0%" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Label ID="Label_baifenbi4" CssClass="Label_baifenbi4" runat="server" Text="0%" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Font-Size="7pt"></asp:Label>
            <asp:Timer  runat="server" Interval="5000"/>
        </asp:Panel>

        <asp:Menu ID="Menu1" CssClass="Menu1"  runat="server" BackColor="#000099" ForeColor="#33CCCC" Font-Names="微软雅黑" Orientation="Horizontal" BorderColor="Black" BorderStyle="Solid" Visible="false">
            <Items>
                <asp:MenuItem Text="主页" Value="曲线与查询" NavigateUrl="~/MainMap.aspx"></asp:MenuItem>
                <asp:MenuItem Text="报表" Value="报表" NavigateUrl="~/report.aspx"></asp:MenuItem>
                <asp:MenuItem Text="曲线与设置" Value="设置" NavigateUrl="~/Chart.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
       
        <asp:Panel ID="Panel_baojing_info" CssClass="Panel_baojing_info" runat="server" ScrollBars="Vertical" Visible="false">
        </asp:Panel> 
                </ContentTemplate>                  
            </asp:UpdatePanel>     
        <!-- 鼠标点到点上 -->
        <asp:UpdatePanel ID="updatepanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate >
                <asp:Panel ID="Panel_shebeizhuangtai" CssClass="Panel_shebeizhuangtai" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61">
                <asp:Panel ID="shebeizhuangtai_table_panel" CssClass="shebeizhuangtai_table_panel" runat="server" ScrollBars="Vertical"></asp:Panel>
                <asp:Label ID="label_weizhi_title" CssClass="label_weizhi_title" runat="server" Text="位置(m)"  ForeColor="White"></asp:Label>
                <asp:Label ID="label_weiyi_title" CssClass="label_weiyi_title" runat="server" Text="位移(mm)"   ForeColor="White"></asp:Label>
                <asp:Timer  runat="server" Interval="10000"/>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>

         <div style="position: absolute; z-index: 5; top: 25%; width: 25%; height: 20%; left: 75%;">
             
       </div>
    <asp:ListBox ID="ListBox3" runat="server" CssClass="auto-style61" AutoPostBack="True" OnSelectedIndexChanged="ListBox3_SelectedIndexChanged" BackColor="#9999FF" Visible="false"></asp:ListBox>
    <asp:ListBox ID="ListBox4" runat="server" CssClass="auto-style82" AutoPostBack="True" OnSelectedIndexChanged="ListBox4_SelectedIndexChanged" BackColor="#9999FF" Visible="false"></asp:ListBox>
     
       
        <asp:Label ID="Label13" CssClass="auto-style69" runat="server" Text="图例" ForeColor="White" Visible="false"></asp:Label>
       <!--新界面信息-->
        
        <!--功能区-->
        


        <!--报警信息-->
        <asp:Panel ID="Panel_baojing" CssClass="Panel_jingbao" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            
        </asp:Panel>
        <asp:Label ID="Label3" CssClass="Label_baojing" runat="server" Text="报警信息" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible="false"></asp:Label>
        <asp:label ID="Label_header1"  runat="server" CssClass="Label_header1" Text="报警地点" ForeColor="White"  Visible="false"/>
        <asp:label ID="Label_header2"  runat="server" CssClass="Label_header2" Text="报警位置" ForeColor="White" Visible="false"/>
        <asp:label ID="Label_header3"  runat="server" CssClass="Label_header3" Text="位移量" ForeColor="White" Visible="false"/>
        
        <asp:Panel ID="mapinfo" CssClass="Panel_mapinfo" BackColor="White"  runat="server" >
            <asp:Label ID="label_min" CssClass="label_min" runat="server" Text="位移量小" Font-Size="8pt"></asp:Label>
            <asp:Panel ID="info1" CssClass="info1" runat="server" BackColor="#00ff00"></asp:Panel>
            <asp:Panel ID="info2" CssClass="info2" runat="server" BackColor="#11EE00"></asp:Panel>
            <asp:Panel ID="info3" CssClass="info3" runat="server" BackColor="#22DD00"></asp:Panel>
            <asp:Panel ID="info4" CssClass="info4" runat="server" BackColor="#33CC00"></asp:Panel>
            <asp:Panel ID="info5" CssClass="info5" runat="server" BackColor="#44BB00"></asp:Panel>
            <asp:Panel ID="info6" CssClass="info6" runat="server" BackColor="#55AA00"></asp:Panel>
            <asp:Panel ID="info7" CssClass="info7" runat="server" BackColor="#669900"></asp:Panel>
            <asp:Panel ID="info8" CssClass="info8" runat="server" BackColor="#778800"></asp:Panel>
            <asp:Panel ID="info9" CssClass="info9" runat="server" BackColor="#887700"></asp:Panel>
            <asp:Panel ID="info10" CssClass="info10" runat="server" BackColor="#996600"></asp:Panel>
            <asp:Panel ID="info11" CssClass="info11" runat="server" BackColor="#AA5500"></asp:Panel>
            <asp:Panel ID="info12" CssClass="info12" runat="server" BackColor="#BB4400"></asp:Panel>
            <asp:Panel ID="info13" CssClass="info13" runat="server" BackColor="#CC3300"></asp:Panel>
            <asp:Panel ID="info14" CssClass="info14" runat="server" BackColor="#DD2200"></asp:Panel>
            <asp:Panel ID="info15" CssClass="info15" runat="server" BackColor="#EE1100"></asp:Panel>
            <asp:Panel ID="info16" CssClass="info16" runat="server" BackColor="#FF0000"></asp:Panel>
            <asp:Label ID="label_max" CssClass="label_max" runat="server" Text="位移量大" Font-Size="8pt"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="biaozhi1" BackColor="DarkBlue" CssClass="biaozhi1" runat="server" Visible="false"/>
        <asp:Panel ID="biaozhi2" BackColor="Blue" CssClass="biaozhi2" runat="server" Visible="false"/>
        <asp:Panel ID="biaozhi3" BackColor="LightGreen" CssClass="biaozhi3" runat="server" Visible="false"/>
        <asp:Panel ID="biaozhi4" BackColor="Yellow" CssClass="biaozhi4" runat="server" Visible="false"/>
        <asp:Panel ID="biaozhi5" BackColor="Red" CssClass="biaozhi5" runat="server" Visible="false"/>
        <asp:Label ID="biaozhi1_label" CssClass="biaozhi1_label" runat="server"  Visible="false"/>
        <asp:Label ID="biaozhi2_label" CssClass="biaozhi2_label" runat="server"  Visible="false"/>
        <asp:Label ID="biaozhi3_label" CssClass="biaozhi3_label" runat="server"  Visible="false"/>
        <asp:Label ID="biaozhi4_label" CssClass="biaozhi4_label" runat="server"  Visible="false"/>
        <asp:Label ID="biaozhi5_label" CssClass="biaozhi5_label" runat="server"  Visible="false"/>
    </div>
    </form>
</body>
</html>
<script src="chart/dist/Chart.js"></script>
<script src="datapicket/js/datepicker.all.js"></script>
<script src="datapicket/js/datepicker.en.js"></script>
<script src="https://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<script  type="text/javascript">
    //var x = window.screen.height;
    //var y = window.screen.width;
    //document.getElementById("HiddenField1").value = x.toString();
    //document.getElementById("HiddenField2").value = y.toString();
 
    // 鼠标放大缩小事件
    
    var rec = "<% = pic_uri%>";
    Image1.src = rec.toString();
    var start = 0;


    // 提示框
    document.write("<div id='tip' style='position:absolute; width:300px; z-index:15; background-color: #ffffff; border: 1px solid gray; overflow: visible;visibility: hidden;font-size:12px;padding:12px;color:#333333'></div>")
    function showtip(w,event) {
        var x = event.x;
        var y = event.y;
       // alert(y);
        tip.innerHTML = w;
        tip.style.visibility = "visible";
        tip.style.left = (x + 10)+"px";
        tip.style.top = (y + document.body.scrollTop + 10)+"px";
    }
    function hidetip() {
        tip.style.innerHTML = ""
        tip.style.visibility = "hidden";
    }

    var jubu_time_list = new Array();
    var jubu_value_list = new Array();


    // 前端的技术
    function TestAjaxParam(position) {
        $.ajax({
            type: "POST",
            url: "SubMap.aspx/Return_Values_Posision",
            async: false,
            data: '{"position":' + position + '}',
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                red_json_value(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $("#p_test").innerHTML = "there is something wrong!";
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
                alert(textStatus);
            }
        })
    }

    // 这里要加处理字符串的函数
    function red_json_value(string)
    {
       
        var length = string.length;
       //alert(string);
        // 数量读出来之后
        //jubu_time_list = [];
        //jubu_value_list = [];
        var mycount = 0;
        for(var i=0;i<length-1;i++)
        {
           // alert(string.substr(i, 1));
            if(string.substr(i,2)=='":')
            {
                //mycount++;

                for (var j = i;j<length;j++)
                {
                    if(string.substr(j,2)=='",')
                    {
                        // 日期
                        //alert("date");
                        //alert(string.substr(i + 3, j - i - 3));
                        jubu_time_list.push(string.substr(i + 3, j - i - 3));
                       // alert(jubu_time_list.length.toString());
                        break;
                    }
                    if(string.substr(j,1)=='[')
                    {
                       // alert("引导");
                        break;
                        //
                    }
                    if(string.substr(j,1)=='}')
                    {
                        // 位移
                        //alert("value");
                        //alert(string.substr(i + 2, j - i - 2));

                        var weiyi = string.substr(i + 2, j - i - 2);
                       // alter(weiyi);
                        //var xiaoshu = weiyi.toFixed(2);
                        //alter(xiaoshu);

                        var weiyi_float = parseFloat(weiyi);
                        var weiyi_cut = weiyi_float.toFixed(2);
                        jubu_value_list.push(weiyi_cut);
                        break;
                    }


                }


            }
        }

        
       

      
    }
    

    
   
    var bili = screen.with / screen.height;
    Image1.style.left = "0px";
    Image1.style.top = "0px";

    var down = false;
    var nowx = 0;
    var nowy = 0;

    var selected_datetime=new Date();
    

    // 根据图像写入img

    var point_struct=function(posx,posy,value)
    {

    }

    var myallpoint_x = new Array();
    var myallpoint_y = new Array();
    var allvalue = new Array();
    var allposition = new Array();
    var myLineChart;
    var btn_close;
    var btn_fuwei;

   

    var qianjin;
    var houtui;

    var qianjin10;
    var houtui10;

    var options = {
        responsive: true,//图表是否响应式
        //图表标题相关配置  
        label:
            {
                name:'111'
            },
        yAxis: {          //纵轴标尺固定
            type: 'value',
            scale: true,
            name: '位移量',
            max: 2,
            min: 0,
            boundaryGap: [0.2, 0.2]
        },

        //图例
        legend: {
            display: false,
        }
        

    }
    
    
    //坐标轴
   
    //x轴配置
   
    
    

    
    var moren = {
        animation: true,

        // Number - Number of animation steps
        animationSteps: 60,

        // String - Animation easing effect
        // Possible effects are:
        // [easeInOutQuart, linear, easeOutBounce, easeInBack, easeInOutQuad,
        //  easeOutQuart, easeOutQuad, easeInOutBounce, easeOutSine, easeInOutCubic,
        //  easeInExpo, easeInOutBack, easeInCirc, easeInOutElastic, easeOutBack,
        //  easeInQuad, easeInOutExpo, easeInQuart, easeOutQuint, easeInOutCirc,
        //  easeInSine, easeOutExpo, easeOutCirc, easeOutCubic, easeInQuint,
        //  easeInElastic, easeInOutSine, easeInOutQuint, easeInBounce,
        //  easeOutElastic, easeInCubic]
        animationEasing: "easeOutQuart",
        

        // Boolean - If we should show the scale at all
        showScale: true,

        // Boolean - If we want to override with a hard coded scale
        scaleOverride: false,

        // ** Required if scaleOverride is true **
        // Number - The number of steps in a hard coded scale
        scaleSteps: null,
        // Number - The value jump in the hard coded scale
        scaleStepWidth: null,
        // Number - The scale starting value
        scaleStartValue: null,

        // String - Colour of the scale line
        scaleLineColor: "rgba(0,0,0,1)",

        // Number - Pixel width of the scale line
        scaleLineWidth: 1,

        // Boolean - Whether to show labels on the scale
        scaleShowLabels: true,

        // Interpolated JS string - can access value
        

        // Boolean - Whether the scale should stick to integers, not floats even if drawing space is there
        scaleIntegersOnly: true,

        // Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
        scaleBeginAtZero: false,

        // String - Scale label font declaration for the scale label
        scaleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

        // Number - Scale label font size in pixels
        scaleFontSize: 24,

        // String - Scale label font weight style
        scaleFontStyle: "normal",

        // String - Scale label font colour
        scaleFontColor: "#ffffff",

        // Boolean - whether or not the chart should be responsive and resize when the browser does.
        responsive: false,

        // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
        maintainAspectRatio: true,

        // Boolean - Determines whether to draw tooltips on the canvas or not
        showTooltips: true,

        // Function - Determines whether to execute the customTooltips function instead of drawing the built in tooltips (See [Advanced - External Tooltips](#advanced-usage-custom-tooltips))
        customTooltips: false,

        // Array - Array of string names to attach tooltip events
        tooltipEvents: ["mousemove", "touchstart", "touchmove"],

        // String - Tooltip background colour
        tooltipFillColor: "rgba(0,0,0,0.8)",

        // String - Tooltip label font declaration for the scale label
        tooltipFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

        // Number - Tooltip label font size in pixels
        tooltipFontSize: 14,

        // String - Tooltip font weight style
        tooltipFontStyle: "normal",

        // String - Tooltip label font colour
        tooltipFontColor: "#fff",

        // String - Tooltip title font declaration for the scale label
        tooltipTitleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",

        // Number - Tooltip title font size in pixels
        tooltipTitleFontSize: 14,

        // String - Tooltip title font weight style
        tooltipTitleFontStyle: "bold",

        // String - Tooltip title font colour
        tooltipTitleFontColor: "#fff",

        // Number - pixel width of padding around tooltip text
        tooltipYPadding: 6,

        // Number - pixel width of padding around tooltip text
        tooltipXPadding: 6,

        // Number - Size of the caret on the tooltip
        tooltipCaretSize: 8,

        // Number - Pixel radius of the tooltip border
        tooltipCornerRadius: 6,

        // Number - Pixel offset from point x to tooltip edge
        tooltipXOffset: 10,

        // String - Template string for single tooltips
       

        // Function - Will fire on animation progression.
        onAnimationProgress: function(){},

        // Function - Will fire on animation completion.
        onAnimationComplete: function(){}    
    }



   // Draw_Chart();

    ReadMap();
    

    // 日期进行格式化
    Date.prototype.Format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1,                 //月份
            "d+": this.getDate(),                    //日
            "h+": this.getHours(),                   //小时
            "m+": this.getMinutes(),                 //分
            "s+": this.getSeconds(),                 //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds()             //毫秒
        };
        if (/(y+)/.test(fmt))
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt))
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    };

    function Draw_Chart(myposition,datetime,start_index)
    {
        // 每次图像只有十个
        try {
            btn_close = document.getElementById("btn_close");
            
            qianjin = document.getElementById("btn_qianjin");
            
            houtui = document.getElementById("btn_houtui");

            qianjin10 = document.getElementById("btn_qianjin10");
            houtui10 = document.getElementById("btn_houtui10");

            btn_fuwei = document.getElementById("btn_fuwei");
            
            btn_close.style.visibility = "visible";
            qianjin.style.visibility = "visible";
            qianjin10.style.visibility = "visible";
            houtui10.style.visibility = "visible";
            
            houtui.style.visibility = "visible";
            btn_fuwei.style.visibility = "visible";

            try {
                myLineChart.destroy();
            }
            catch (err) {
                // alert(err);
            }
            btn_close.onclick = function (event) {

                btn_close.style.visibility = "hidden";
                qianjin.style.visibility = "hidden";
                houtui.style.visibility = "hidden";
                qianjin10.style.visibility = "hidden";
                houtui10.style.visibility = "hidden";
                btn_fuwei.style.visibility = "hidden";
                //myLineChart.canvas.style.visibility = "hidden";
                //myLineChart = new Chart();
                document.getElementById("chart_wrapper").style.display = "none";
            }
            


            jubu_time_list = [];
            jubu_value_list = [];


            var now_jubu_time_list = new Array();
            var now_jubu_value_list = new Array();
            
            now_jubu_time_list = [];
            now_jubu_value_list = [];
           
            
            TestAjaxParam(myposition.toString());
            

            qianjin.onclick = function (event) {
                if (start_index > 0) {
                    start_index = start_index - 1;
                    Draw_Chart(myposition, datetime, start_index);
                    start = start_index;
                }
            }

            houtui.onclick = function (event) {
                if (start_index < jubu_time_list.length) {
                    start_index = start_index + 1;
                    Draw_Chart(myposition, datetime, start_index);
                    start = start_index;
                }
            }

            qianjin10.onclick=function(event)
            {
                if (start_index-10 >= 0) {
                    start_index = start_index - 10;
                    Draw_Chart(myposition, datetime, start_index);
                    start = start_index;
                }
            }

            houtui10.onclick = function (event) {
                if (start_index +9< jubu_time_list.length) {
                    start_index = start_index + 10;
                    Draw_Chart(myposition, datetime, start_index);
                    start = start_index;
                }
            }

            btn_fuwei.onclick=function(event)
            {
                start_index = 0;
                start = 0;
                Draw_Chart(myposition, datetime, start_index);
            }


            //alert(jubu_time_list.length.toString());
            if (jubu_time_list.length >= start_index + 10)
            {
                // 完整的显示10个
                // alert(jubu_time_list.length);
                now_jubu_time_list.push(0);
                now_jubu_value_list.push(0);
                for(var i=jubu_time_list.length-1-start_index-9;i<=jubu_time_list.length-1-start_index;i++)
                {
                    now_jubu_time_list.push(jubu_time_list[i]);
                    now_jubu_value_list.push(jubu_value_list[i]);
                    //alert(i);
                }
              //  now_jubu_time_list.push("阈值点");
              //  now_jubu_value_list.push(2);
                //alert(now_jubu_time_list);

            }
            else if (jubu_time_list.length >= start_index)
            {
                // 只显示一部分
                now_jubu_time_list.push(0);
                now_jubu_value_list.push(0);
                for (var i =0 ; i <jubu_time_list.length - 1 - start_index; i++) {
                    now_jubu_time_list.push(jubu_time_list[i]);
                    now_jubu_value_list.push(jubu_value_list[i]);
                }
               // now_jubu_time_list.push("阈值点");
               // now_jubu_value_list.push(2);
                //alert(now_jubu_time_list);

            }

            
            





            var data = {

                labels: now_jubu_time_list,

                


                datasets: [
                    {

                        label: "当前位置:" + myposition+"位移量(mm)",
                        fill: true,
                        
                        lineTension: 0.1,
                        backgroundColor: "rgba(75,192,192,0.4)",
                        borderColor: "rgba(75,192,192,1)",
                        borderCapStyle: 'butt',
                        borderDash: [],
                        borderDashOffset: 0.0,
                        borderJoinStyle: 'miter',
                        pointBorderColor: "rgba(255,255,255,1)",
                        pointBackgroundColor: "#fff",
                        pointBorderWidth: 1,
                        pointHoverRadius: 5,
                        pointHoverBackgroundColor: "rgba(255,255,255,1)",
                        pointHoverBorderColor: "rgba(255,255,255,1)",
                        pointHoverBorderWidth: 2,
                        pointRadius: 1,
                        pointHitRadius: 10,
                        //data: [65, 59, 80, 81, 56, 55, 40],
                        data: now_jubu_value_list,
                        spanGaps: false,
                        
                    }
                ]
            };


            var ctx = document.getElementById("myChart").getContext("2d");
            myLineChart = new Chart(ctx, {
                type: 'line', data: data, options: {
                     yAxis: {          //纵轴标尺固定
                        type: 'value',
                        scale: true,
                        name: '位移量',
                        max: 2,
                        min: 0,
                        boundaryGap: [0.2, 0.2],
                        
                    }
                }
            
            });

            
            myLineChart.canvas.style.visibility = "visible";
            //myLineChart.width = screen.width * 0.1;
            //myLineChart.height = screen.height * 0.6;
            //fChart.defaults.
        }
        catch (err) {
            alert(err);
        }
    }



    function ReadMap()
    {
        //alert(1);
        $(function () {
            var mymapname = "<%=map_name%>";
            var allcount = "<%=mycount%>";
            var index = 0;
            myallpoint_x = [];
            myallpoint_y = [];
            allvalue = [];
            allposition = [];
            //alert(allcount);
            // 读取所有的点坐标
            <%
        for(int k=0;k<aspcount;k++){
           %>

            try {

                myallpoint_x.push(parseFloat("<%=allpoint_x[k]%>"));
                myallpoint_y.push(parseFloat("<%=allpoint_y[k]%>"));
                allvalue.push(parseFloat("<%=allvalue[k]%>"));
                allposition.push(parseFloat("<%=allposition[k]%>"));
                index++;
            }
            catch (err) {

            }


            //index = index + 1;
            <%
        }
    %>
            //alert(index);
            //alert(myallpoint_x[0].toString());
            try {

                //line(0, 0, 700, 500, document.getElementById("div1"));
                var allcount = "<%=aspcount%>";
                // alert(allcount);

                for (var k = 0; k < allcount - 1; k++) {

                    var x1 = (myallpoint_x[k]);
                    var x2 = (myallpoint_x[k + 1]);
                    var y1 = (myallpoint_y[k]);
                    var y2 = (myallpoint_y[k + 1]);
                    var value = (allvalue[k]);
                    var position = (allposition[k]);

                    x1 = (x1 / 100 * screen.width);
                    x2 = (x2 / 100 * screen.width);
                    y1 = (y1 / 100 * screen.height);
                    y2 = (y2 / 100 * screen.height);
                    //line(x1, y1, x2, y2, document.getElementById("div1"), value);


                    // points



                    var point_node = document.createElement("div1");
                    point_node.nodeName = position;
                    point_node.textContent = value.toFixed(2);
                    //point_node.localName=value;
                    point_node.className = "point";
                    point_node.style.left = (x2 + x1) / 2 + "px";
                    point_node.style.top = (y1 + y2) / 2 + "px";
                    point_node.style.zIndex = 10;


                    point_node.id = position;



                    //  按动这个点
                    var value1 = "<%=value1%>";
                    var value2 = "<%=value2%>";
                    var value3 = "<%=value3%>";
                    var value4 = "<%=value4%>";
                    var value5 = "<%=value5%>";

                    if (value <= value1)
                        point_node.style.backgroundColor = "#00FF00";
                    if (value > value1 && value < value2)
                        point_node.style.backgroundColor = "#11EE00";
                    if (value >= value2 && value < value3)
                        point_node.style.backgroundColor = "#22DD00";
                    if (value >= value3 && value < value4)
                        point_node.style.backgroundColor = "#33CC00";
                    if (value >= value4 && value < value5)
                        point_node.style.backgroundColor = "#44BB00";
                    if (value >= value5)
                        point_node.style.backgroundColor = "#FF0000";



                    document.getElementById("div1").appendChild(point_node);

                    point_node.onclick = function (event) {

                        //alert("click");
                        //alert("1");
                        document.getElementById("chart_wrapper").style.display = "block";
                        //alert("2");
                        //alert(this.textContent);
                        selected_datetime = new Date();
                        Draw_Chart(this.id, selected_datetime, start);

                    }
                    //onmousemove = "showtip('<b>标题：</b><br>毕业女生 自信更在包装外<br>')"
                    //onmouseout = hidetip()

                    point_node.onmousemove = function (event) {
                        showtip('<b>标题：</b><br>当前位置：' + this.id + ' 当前位移:' + this.textContent + "</br>'", event);
                    }

                    point_node.onmouseout = function (event) {
                        hidetip();
                    }
                }
            }
            catch (err) {
                alert(err.message.toString());
            }
        });
    

    }

    function createPoint(container, x, y,value) {
        var node = document.createElement("div");
        var mymapname = "<%=map_name%>";
        node.textContent = x;
        node.nodeName = y;
        node.className = "line";
        
        node.style.left = x + "px";
        node.style.top = y + "px";
        node.style.zIndex = 10;
        
       

        var myvalue = parseFloat(value.toString());

        var value1 = "<%=value1%>";
        var value2 = "<%=value2%>";
        var value3 = "<%=value3%>";
        var value4 = "<%=value4%>";
        var value5 = "<%=value5%>";
      
        if (myvalue <= value1)
            node.style.backgroundColor = "#00FF00";
        if (myvalue > value1 && myvalue < value2)
            node.style.backgroundColor = "#11EE00";
        if (myvalue >= value2 && myvalue < value3)
            node.style.backgroundColor = "#22DD00";
        if (myvalue >= value3 && myvalue < value4)
            node.style.backgroundColor = "#33CC00";
        if (myvalue >= value4 && myvalue < value5)
            node.style.backgroundColor = "#44BB00";
        if (myvalue >= value5 )
            node.style.backgroundColor = "#FF0000";
        container.appendChild(node);
    }

    function line(startX, startY, endX, endY, container,value) {
        if (startX == endX) {
            if (startY > endY) {
                var tempY = startY;
                startY = endY;
                endY = tempY;
            }
            for (var k = startY; k < endY; k++){
                createPoint(container, startX, k,value);
            }
            return;
        }
        // y = ax + b，这里深刻体现了数学的重要性啊  
        var a = (startY - endY) / (startX - endX);
        var b = startY - ((startY - endY) / (startX - endX)) * startX;
        if (Math.abs(startX - endX) > Math.abs(startY - endY)) { //这是为了多画几个point加的选择
            if (startX > endX) {
                var tempX = endX;
                endX = startX;
                startX = tempX;
            }
            for (var i = startX; i <= endX; i++) {
                createPoint(container, i, a * i + b,value);
            }
        } else {
            if (startY > endY) {
                var tempY = startY;
                startY = endY;
                endY = tempY;
            }
            for (var j = startY; j <= endY; j++) {
                createPoint(container, (j - b) / a, j,value);
            }
        }
    }

   
    function Fangsuo() {
        image.style.width = 100;
    }
 </script>
