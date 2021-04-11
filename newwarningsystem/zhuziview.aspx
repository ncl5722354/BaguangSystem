<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuziview.aspx.cs" Inherits="newwarningsystem.zhuziview" %>

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
        .auto-style1 {
            height: 100%;
        }
        .auto-style2 {
            position: absolute;
            top: 6%;
            left: 30%;
           
            z-index: 6;
        }
        .auto-style3 {
            position: absolute;
            top: 100px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
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
        .auto-style4 {
            position: absolute;
            top: 180px;
            left:40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style5 {
            position: absolute;
            top: 260px;
           left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style6 {
            position: absolute;
            top: 340px;
             left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style7 {
            position: absolute;
            top: 420px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style8 {
            position: absolute;
            top: 500px;
             left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style9 {
            position: absolute;
            top: 580px;
             left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style10 {
            position: absolute;
            top: 660px;
             left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style11 {
            position: absolute;
            top: 740px;
             left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style12 {
            position: absolute;
            top: 820px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style13 {
            position: absolute;
            top: 900px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
         .auto-style14 {
            position: absolute;
            top: 980px;
            left: 40%;
            z-index: 1;
            width: 20%;
           height: 80px;
        }
          .auto-style15 {
            position: absolute;
            top: 1060px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style16 {
            position: absolute;
            top: 1140px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style17 {
            position: absolute;
            top: 1220px;
           left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
             .auto-style18 {
            position: absolute;
            top: 1300px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
              .auto-style19 {
            position: absolute;
            top: 1380px;
           left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
               .auto-style20 {
            position: absolute;
            top: 1460px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
                .auto-style21 {
            position: absolute;
            top: 1540px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
                 .auto-style22 {
            position: absolute;
            top: 1620px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
                  .auto-style23 {
            position: absolute;
            top: 1700px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
         .auto-style24 {
            position: absolute;
            top: 1780px;
             left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
          .auto-style25 {
            position: absolute;
            top: 1860px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
          .auto-style26 {
            position: absolute;
            top: 1920px;
           left: 40%;
            z-index: 1;
            width: 20%;
           height: 80px;
        }
          .auto-style27 {
            position: absolute;
            top: 2000px;
           left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
          .auto-style28 {
            position: absolute;
            top: 2080px;
           left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
          .auto-style29 {
            position: absolute;
            top: 2160px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
          .auto-style30 {
            position: absolute;
            top: 2240px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
          .auto-style31 {
            position: absolute;
            top: 2320px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style32 {
            position: absolute;
            top: 2400px;
            left: 40%;
            z-index: 1;
            width: 20%;
           height: 80px;
        }

           .auto-style33 {
            position: absolute;
            top: 2480px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style34 {
            position: absolute;
            top: 2560px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style35 {
            position: absolute;
            top: 2640px;
            left: 40%;
            z-index: 1;
            width: 20%;
           height: 80px;
        }
           .auto-style36 {
            position: absolute;
            top: 2720px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style37 {
            position: absolute;
            top: 2800px;
            left: 40%;
            z-index: 1;
            width: 20%;
           height: 80px;
        }
           .auto-style38 {
            position: absolute;
            top: 2880px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style39 {
            position: absolute;
            top: 2960px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style40 {
            position: absolute;
            top: 3040px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style41 {
            position: absolute;
            top: 3120px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
           .auto-style42 {
            position: absolute;
            top: 3200px;
            left: 40%;
            z-index: 1;
            width: 20%;
            height: 80px;
        }
        .auto-style43 {
            width: 99%;
            left:0px;
            height:99%;
        }

         .auto-style45 {

            position: absolute;
            top: 416px;
            left: 747px;
            z-index: 1;
            width: 172px;
            height: 262px;
        }
        .auto-style47 {
            position: absolute;
            top: 415px;
            z-index: 1;
            width: 171px;
            height: 262px;
            left: 1029px;
            margin-top: 7px;
        }
        .auto-style48 {
            position: absolute;
            top: 707px;
            left: 747px;
            z-index: 1;
        }

        .auto-style53 {
            position: absolute;
            top: 150px;
            left: 20px;
            z-index: 1;
            width: 74px;
            height: 20px;
        }
        
        .auto-style54 {
            position: absolute;
            top: 14%;
            left: 11%;
            z-index: 1;
            width: 74px;
            height: 20px;
        }
        
        .auto-style55 {
            position: absolute;
            top: 430px;
            left: 934px;
            z-index: 1;
        }
        .auto-style56 {
            position: absolute;
            top: 150px;
            left: 370px;
            z-index: 1;
            width: 74px;
            height: 20px;
        }
        
        .auto-style57 {
            position: absolute;
            top: 14%;
            left: 32%;
            z-index: 1;
            width: 34%;
            height: 20px;
        }
        
        .auto-style58 {
            
            position: absolute;
            top: 68%;
            left: 20%;
            z-index: 1;
            width: 500px;
            height: 27px;
        
        }
        
        .auto-style59 {
           position: absolute;
            top:500px;
            left: 750px;
            z-index: 1;
            width: 60px;
            height: 30px;
            }
        
        .auto-style60 {
            position: absolute;
            top: 500px;
            left: 820px;
            z-index: 1;
            width: 60px;
            height: 30px;
            right: 104px;
        }
        
        .auto-style62 {
            position: absolute;
            top: 30%;
            left: 90%;
            z-index: 1;
            width: 188px;
            height: 35px;
        }
        
        .auto-style63 {
             position: absolute;
            top: 500px;
            left: 890px;
            z-index: 1;
            width: 60px;
            height: 30px;
            right: 159px;
        }
        
        .auto-style64 {
             position: absolute;
            top: 500px;
            left: 960px;
            z-index: 1;
            width: 60px;
            height: 30px;
            right: 248px;
        }
        
         .auto-style65 {
            position: absolute;
            top: 1%;
            left: 10%;
            height: 4%;
            width: 5%;
            z-index: 4;
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
            top: 1px;
            left: 0px;
            width: 100%;
            height:99%;
            z-index: 0;
            
        }
        
        .auto-style68 {
            position: absolute;
            top: 20%;
            left: 0%;
            width: 8%;
            height:30%;
            z-index: 3;
           
        }
         .auto-style69 {
            position: absolute;
            top: 15%;
            left: 2%;
            
           
            z-index: 3;
            
        }
          .auto-style70 {
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height:3%;
            z-index: 3;
           
        }
           .auto-style71 {
            position: absolute;
            top: 23%;
            left: 5%;
            width: 100%;
            height:3%;
            z-index: 4;
           
        }
           .auto-style72 {
            position: absolute;
            top: 22%;
            left: 5%;
            width: 55%;
            height:7%;
            z-index: 3;
           
        }
            .auto-style73 {
            position: absolute;
            top: 38%;
            left: 5%;
            width: 100%;
            height:3%;
            z-index: 4;
           
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
            .auto-style74 {
            position: absolute;
            top: 37%;
            left: 5%;
            width: 65%;
            height:7%;
            z-index: 3;
           
        }
             .auto-style75 {
            position: absolute;
            top: 53%;
            left: 5%;
            width: 100%;
            height:3%;
            z-index: 4;
           
        }
             .auto-style76 {
            position: absolute;
            top: 52%;
            left: 5%;
            width: 75%;
            height:7%;
            z-index: 3;
           
        }
             .auto-style77 {
            position: absolute;
            top: 68%;
            left: 5%;
            width: 100%;
            height:3%;
            z-index: 4;
           
        }
             .auto-style78 {
            position: absolute;
            top: 67%;
            left: 4%;
            width: 85%;
            height:7%;
            z-index: 3;
           
        }
             .auto-style79 {
            position: absolute;
            top: 83%;
            left: 5%;
            width: 100%;
            height:3%;
            z-index: 4;
           
        }
             .auto-style80 {
            position: absolute;
            top: 82%;
            left: 5%;
            width: 95%;
            height:7%;
            z-index: 3;
           
        }
             .auto-style81 {
            position: absolute;
            top: 30%;
            left: 60%;
            z-index: 1;
            width: 188px;
            height: 35px;
           
        }
              .auto-style83 {
            position: absolute;
            top: 11%;
            left: 1%;
            z-index: 1;
            width: 78%;
            height: 88%;
        }
               .auto-style84 {
            position: absolute;
            top: 0%;
            left: 0%;
            z-index: 4;
            width: 100%;
            height: 11%;
        }
             .auto-style85 {
            position: absolute;
            top: 0px;
            left: 20px;
            width: 6%;
            z-index: 5;
            height:10%;
        }

             .auto-style87 {
            position: absolute;
            top: 1%;
            left: 70%;
            height: 4%;
            width: 20%;
            z-index: 4;
        }
        .auto-style88 {
            position: absolute;
            top: 20%;
            left: 71%;
            width: 30%;
            z-index: 6;
            height: 10%;
        }      
         .auto-style89 {
            position: absolute;
            top: 22%;
            left: 80%;
            width: 25%;
            z-index: 7;
            height:7%;
        }     
         .auto-style90 {
            position: absolute;
            top: 53%;
            left: 71%;
            width: 30%;
            z-index: 6;
            height:7%;
        }
         .auto-style91 {
            position: absolute;
            top: 53%;
            left: 75%;
            width: 25%;
            z-index: 7;
            height:10%;
        }
         .auto-style92 {
            position: absolute;
            top: -2147483648%;
            left: 71%;
            width: 28%;
            z-index: 6;
            height:20%;
        }

         .auto-style93 {
            position: absolute;
            top: 68%;
            left: 75%;
            width: 10%;
            z-index: 7;
            height:10%;
        }
          .auto-style94 {
            position: absolute;
            top: 68%;
            left: 83%;
            width: 10%;
            z-index: 7;
            height:10%;
        }
          .auto-style95 {
            position: absolute;
            top: 6%;
            left: 60%;
            width: 5%;
            z-index: 7;
            height:8%;
        }
           .auto-style96 {
            position: absolute;
            top: 6%;
            left: 68%;
            width: 5%;
            z-index: 7;
            height:8%;
        }
           .auto-style97 {
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
            left: 81%;
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
            top: 6%;
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
            left:20%;
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
            top: 17%;
            left: 22%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi2 {
            position: absolute;
            top: 17%;
            left: 32%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi3 {
            position: absolute;
            top: 17%;
            left: 42%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi4 {
            position: absolute;
            top: 17%;
            left: 52%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi5 {
            position: absolute;
            top: 17%;
            left: 62%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi1_label {
            position: absolute;
            top: 17%;
            left: 24%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi2_label {
            position: absolute;
            top: 17%;
            left: 34%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi3_label {
            position: absolute;
            top: 17%;
            left: 44%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi4_label {
            position: absolute;
            top: 17%;
            left: 54%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi5_label {
            position: absolute;
            top: 17%;
            left: 64%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }

            .Image_home{
            position:absolute;
            top:60%;
            left:60%;
            width:40px;
            height:40px;
            z-index:7;
            border-radius:3px;
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
        .Panel_shebeizhuangtai {
            position: absolute;
            top: 11%;
            left: 81%;
            width: 19%;
            z-index: 7;
            height: 88%;
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
         .Menu1 
        {
            position:absolute;
            top:1%;
            left:8%;
            width:30%;
            z-index:10;
            height:4%;
        }
          .DropDownList1 {
            position: absolute;
            top: 1%;
            left: 5%;
            width: 5%;
            z-index: 6;
            height:5%;
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
            top: 29%;
            left: 84%;
            width: 15%;
            z-index: 9;
            height: 70%;
            text-align: center;
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
        .auto-style98 {
            position: absolute;
            top: -2147483648%;
            left: 60%;
            width: 3%;
            z-index: 9;
            height: 22px;
        }
       .biaochititle
       {
            position:absolute;
            left:10%;
            width:20%;
            height:30px;
            z-index:10;
            top:150px;
       }
        .panel_biaochi{
            position:absolute;
            left:60%;
            width:20%;
            height:3500px;
            z-index:10;
            top:180px;
        }
        .MyChart{
             position: absolute;
            top: 10%;
            left: 25%;
            z-index: 14;
            width: 50%;
            height: 50%;

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
        </style>
</head>
<body  id="body1"  style="height: 100%; margin-right: 0px;">
    <form id="form1" runat="server" class="auto-style43">
    <div id="div1" class="auto-style1">
 
         <asp:Image ID="Image_icon" CssClass="auto-style85" runat="server"  ImageUrl="~/Resource/LOGO.png"  />
       <input id="btn_close" class="closelabel_hiden" type="button" aria-expanded="false" aria-grabbed="false" value="关闭"/>
        <input id="btn_qianjin" class="qianjin" type="button" value="前进" />
        <input id="btn_houtui"  class="houtui" type="button" value="后退"/>
        <input  id="btn_fuwei" class="fuwei" type="button" value="复位"/>
        <input id="btn_qianjin10" class="qianjin10" type="button" value="前进10天"/>
        <input id="btn_houtui10" class="houtui10" type="button" value="后退10天"/> 


        <asp:Panel ID="Panel2" CssClass="auto-style83" runat="server" ScrollBars="Vertical" BorderColor="Black" BackColor="#66CCFF" BorderStyle="Solid" BorderWidth="4px">
        
        <!--标尺-->
        <asp:Label ID="biaochititle" runat="server" CssClass="biaochititle" Text="测斜管深度标尺"></asp:Label>
        <asp:Panel ID="panelbiaochi" runat="server" CssClass="panel_biaochi" BackColor="Yellow"></asp:Panel>
        
         </asp:Panel>
        <asp:Label ID="Label_weizhi" CssClass="auto-style93" runat="server" Text="位置" Font-Names="微软雅黑" Visible="false"></asp:Label>
        <asp:Label ID="Label_weiyiliang" CssClass="auto-style94" runat="server" Text="位移量" Font-Names="微软雅黑" Visible="false"></asp:Label>
       
        <asp:Image ID="Image_title_name" CssClass="Image_title_name" runat="server" ImageUrl="~/Resource/坝光收费站边坡健康监测系统-文字效果.png" />
         <asp:Image ID="Image41" runat="server" CssClass="auto-style84" BackColor="#0000CC" ImageUrl="~/Resource/上侧背景条1.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3" />
         <asp:Image ID="Image43" CssClass="auto-style90"  runat="server" ImageUrl="~/Resource/图片4.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"/>
        <asp:label  ID="label_baojing" runat="server" text="报警显示" CssClass="auto-style91" Font-Size="XX-Large" ForeColor="White" Visible="false"></asp:label>
        <asp:Image ID="Image44" CssClass="auto-style92" runat="server" ImageUrl="~/Resource/dise.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false" />
        <asp:ImageButton ID="ImageButton_chafen" runat="server" BackColor="#3366FF" CssClass="auto-style97" ImageUrl="~/Resource/find_magnifier_magnifying_glass_search_zoom_64px_1225492_easyicon.net.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnClick="ImageButton_chafen_Click" Visible="false" />
         <asp:ImageButton ID="ImageButton_home" runat="server" BackColor="#3366FF" CssClass="auto-style95" ImageUrl="~/Resource/home.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnClick="ImageButton_home_Click" Visible="false"/>

         <div style="position: absolute; z-index: 5; top: 30%; width: 30%; height: 20%; left: 71%;">
         </div>
 
         <asp:Image ID="Image_bg" CssClass="auto-style67" runat="server" BackColor="#0099CC"   />
    
        <asp:Label ID="Label_title" runat="server" CssClass="auto-style2" Font-Names="黑体" Font-Size="20pt" Text="测斜管" BackColor="Red"></asp:Label>
    
        <asp:ImageButton ID="ImageButton_set" CssClass="auto-style96" runat="server" ImageUrl="~/Resource/settings_64px_1229386_easyicon.net.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" BackColor="#3366FF" OnClick="ImageButton_set_Click" Visible="false"/>

    
        <div id="chart_wrapper" class="MyChart" runat="server" style="display:none">
          <asp:Panel ID="panel3" CssClass="canvas2" BackColor="White" runat="server"></asp:Panel>
           <canvas id="myChart" class="canvas1" runat="server"></canvas>
            
           
       </div>
        

        <asp:Chart ID="Chart1" runat="server" CssClass="auto-style44" Visible="False" BackColor="Transparent">

            <series>
                <asp:Series ChartType="Spline" Name="曲线1" Color="Red">
                </asp:Series>
            <asp:Series ChartArea="ChartArea1" ChartType="Spline" Color="Blue" Name="曲线2"></asp:Series></series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    
        <asp:ListBox ID="ListBox1" runat="server" CssClass="auto-style45" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" OnTextChanged="ListBox1_TextChanged" Visible="False"></asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" CssClass="auto-style47" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Visible="False"></asp:ListBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style48" OnClick="Button1_Click" Text="确认" Visible="False" />
    
  
        <asp:LinkButton ID="link" CssClass="auto-style65" ForeColor="White" Text="主页面" runat="server" OnClick="link0_Click" Visible="false"></asp:LinkButton>
       
    
       
    
        

        <asp:Label ID="Label6" runat="server" CssClass="auto-style55" Text="曲线2选择" Visible="False"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style51" Text="曲线1选择" Visible="False"></asp:Label>
        
        
        
        <asp:Label ID="Label7" runat="server" CssClass="auto-style53" Text="测量位置" Visible="false"></asp:Label>
        
        <asp:Label ID="Label8" runat="server" CssClass="auto-style54" style="z-index: 1" Text="线缆状态" ForeColor="White" Visible="false"></asp:Label>
        
        <asp:Label ID="Label9" runat="server" CssClass="auto-style56" style="z-index: 1" Text="测量位置" Visible="false"></asp:Label>
        
        <asp:Label ID="Label10" runat="server" CssClass="auto-style57" style="z-index: 1" Text="线缆状态" ForeColor="White" Visible="false"></asp:Label>
        
        <asp:Label ID="Label11" runat="server" CssClass="auto-style58" Text="趋势曲线" ForeColor="White" Visible="false"></asp:Label>
        
        <asp:Button ID="Button2" runat="server" CssClass="auto-style59" Text="放大" BorderStyle="Solid" BorderWidth="2px" OnClick="Button2_Click" Visible="False" />
        
        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" CssClass="auto-style60" Text="缩小" OnClick="Button3_Click" Visible="False" />
        
        <asp:Label ID="Label12" runat="server" CssClass="auto-style62" Text="选择日期" Font-Names="微软雅黑" Font-Size="20pt" Visible="False" ></asp:Label>
        
        <asp:Button ID="Button4" runat="server" BorderStyle="Solid" CssClass="auto-style63" Text="前进" OnClick="Button4_Click" Visible="False" />
        
        <asp:Button ID="Button5" runat="server" CssClass="auto-style64" style="z-index: 1" Text="后退" BorderStyle="Solid" OnClick="Button5_Click" Visible="False" />
        
       <asp:Label ID="Label2" runat="server" CssClass="auto-style81" Text="选择时间" ForeColor="White" Visible="false"></asp:Label>
    
       <asp:Image ID="Image42" CssClass="auto-style88" runat="server" ImageUrl="~/Resource/图片4.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"/>

    <asp:label  ID="label_rili" runat="server" text="日历选择" CssClass="auto-style89" Font-Size="XX-Large" ForeColor="White" Visible="false"></asp:label>
        <asp:LinkButton ID="link0" CssClass="auto-style66" Text="差分查询" runat="server" OnClick="link_Click" ForeColor="White" Visible="false"></asp:LinkButton>
       
         <asp:Panel ID="Panel1" CssClass="auto-style68" runat="server" BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" Visible="false">
             <asp:Label ID="Label14"  CssClass="auto-style70"  runat="server" Text="线缆颜色对应位移量" ForeColor="Black" Font-Size="Smaller"></asp:Label>
             <asp:Label ID="Label1" CssClass="auto-style71"  runat="server" Text="<0.01mm" ForeColor="White" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label15" CssClass="auto-style72" runat="server" Text="Label" ForeColor="DarkBlue" BackColor="DarkBlue" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label16" CssClass="auto-style73" runat="server" Text="<=0.5mm" ForeColor="White" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label17" CssClass="auto-style74" runat="server" Text="Label" ForeColor="Blue" BackColor="Blue" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label18" CssClass="auto-style75" runat="server" Text="<=1.0mm" ForeColor="White" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label19" CssClass="auto-style76" runat="server" Text="Label" ForeColor="LightGreen" BackColor="LightGreen" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label20" CssClass="auto-style77" runat="server" Text="<2.0mm"  ForeColor="White" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label21" CssClass="auto-style78" runat="server" Text="Label" ForeColor="Yellow" BackColor="Yellow" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label22" CssClass="auto-style79" runat="server" Text=">=2.0mm" Font-Size="Small" ForeColor="White"></asp:Label>
             <asp:Label ID="Label23" CssClass="auto-style80" runat="server" Text="Label" ForeColor="Red" BackColor="Red" Font-Size="Small"></asp:Label>
         </asp:Panel>
    
       
     <asp:Label ID="Label13" CssClass="auto-style69" runat="server" Text="预警等级" ForeColor="White" BackColor="Blue" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Visible="false"></asp:Label>
       
       <!-- 关于时间的更新-->
        <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager><!--必须包含这个控件，否则UpdatePanel无法使用-->  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
                <ContentTemplate>  
            <!--Lable和Timer控件必须都包含在UpdatePanel控件中 -->  
                    <asp:Label ID="Label_timer" CssClass="auto-style87" runat="server" Text="Label" Font-Names="微软雅黑" ForeColor="White" Font-Size="Large"></asp:Label>  <!--用于显示时间-->  
                    <asp:Label ID="Label_baojingshuoming1" CssClass="Label_baojingshuoming1" runat="server" Text="总体说明" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible="false"></asp:Label>
                    
                    <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->  
                    <!--饼状图-->
        <asp:Panel ID="Panel_bingzhuangtu" CssClass="Panel_bingzhuangtu" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            <asp:Label ID="Label_baojingshuoming" CssClass="Label_dangqiantongji" runat="server" Text="报警说明" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF"></asp:Label>
        </asp:Panel>
                    
                    <asp:Panel ID="Panel_chart" CssClass="Panel_chart" runat="server" BackColor="#3333FF">
        <asp:Chart ID="Chart2" runat="server" CssClass="auto-style44" BorderlineColor="Black" BorderlineDashStyle="Solid" BackColor="DarkGray" Width="961px" BorderlineWidth="3">
            <series>
                <asp:Series ChartType="Spline" Name="曲线1" Color="RoyalBlue" XValueType="DateTime" ToolTip="时间 ：#VALX 位移#VAL " YValuesPerPoint="2">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY Enabled="True" Title="位移量(mm)">
                    </AxisY>
                    <AxisX Enabled="True" Title="时间">
                    </AxisX>
                </asp:ChartArea>
            </chartareas>
            <Titles>
                <asp:Title Name="Title1" Text="曲线">
                </asp:Title>
            </Titles>
            <BorderSkin BackColor="Transparent" BackSecondaryColor="White" BorderDashStyle="Dash" BorderWidth="5" />
        </asp:Chart>
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
        </asp:Panel>
                    <asp:Panel ID="Panel_baojing_info" CssClass="Panel_baojing_info" runat="server" ScrollBars="Vertical" Visible="false" >
                        </asp:Panel> 

                    <asp:Timer ID="Timer2" runat="server" Interval="5000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->
                </ContentTemplate>                  
            </asp:UpdatePanel>    
        <asp:UpdatePanel ID="updatepanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate >
                <asp:Panel ID="Panel_shebeizhuangtai" CssClass="Panel_shebeizhuangtai" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61">
                <asp:Panel ID="shebeizhuangtai_table_panel" CssClass="shebeizhuangtai_table_panel" runat="server" ScrollBars="Vertical"></asp:Panel>
                <asp:Label ID="label_weizhi_title" CssClass="label_weizhi_title" runat="server" Text="位置(m)" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black"  ForeColor="White"></asp:Label>
                <asp:Label ID="label_weiyi_title" CssClass="label_weiyi_title" runat="server" Text="位移(mm)" BorderStyle="Solid" BorderWidth="2px" BorderColor="Black"  ForeColor="White"></asp:Label>
                <asp:Timer  runat="server" Interval="10000"/>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <!-- 鼠标点到点上 -->
    
        <!--新界面信息-->
       <asp:Menu ID="Menu1" CssClass="Menu1"  runat="server" BackColor="#000099" ForeColor="#33CCCC" Font-Names="微软雅黑" Orientation="Horizontal" BorderColor="Black" BorderStyle="Solid" Visible="false">
            <Items>
                <asp:MenuItem Text="主页" Value="曲线与查询" NavigateUrl="~/MainMap.aspx"></asp:MenuItem>
                <asp:MenuItem Text="报表" Value="报表" NavigateUrl="~/report.aspx"></asp:MenuItem>
                <asp:MenuItem Text="曲线与设置" Value="设置" NavigateUrl="~/Chart.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        
        

        

        <!--功能区-->
        <asp:Panel ID="Panel_gongnengqu" CssClass="Panel_gongnengqu" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
           <asp:Label ID="Label_gongnengqu" CssClass="Label_dangqiantongji" runat="server" Text="功能区" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF"></asp:Label>
           <asp:ImageButton ID="image_graft" CssClass="image_graft" runat="server" ImageUrl="~/Resource/graph.png" OnClick="image_graft_Click" />
           <asp:ImageButton ID="Image_baojing" CssClass="image_attition" runat="server" ImageUrl="~/Resource/attention.png" OnClick="Image_baojing_Click" />
           <asp:ImageButton ID="Image_set" CssClass="Image_set" runat="server" ImageUrl="~/Resource/settings_64px_1228852_easyicon.net.png" OnClick="Image_set_Click" Visible="False" />
           <asp:ImageButton ID="Image_home" CssClass="Image_home" runat="server" ImageUrl="~/Resource/home.png" OnClick="ImageButton_home_Click" />
        </asp:Panel>


        <!--报警信息-->
        <asp:Panel ID="Panel_baojing" CssClass="Panel_jingbao" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            
        </asp:Panel>
        <asp:Label ID="Label3" CssClass="Label_baojing" runat="server" Text="报警信息" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible="false"></asp:Label>
        <asp:label ID="Label_header1"  runat="server" CssClass="Label_header1" Text="报警地点" ForeColor="White" Visible="false" />
        <asp:label ID="Label_header2"  runat="server" CssClass="Label_header2" Text="报警位置" ForeColor="White"  Visible="false"/>
        <asp:label ID="Label_header3"  runat="server" CssClass="Label_header3" Text="位移量" ForeColor="White"  Visible="false"/>
        
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


        <asp:ImageButton ID="ImageButton_zhuye" CssClass="ImageButton_zhuye" runat="server" ImageUrl="~/Resource/主页.png" OnClick="ImageButton_zhuye_Click" />
        
        
        
        <asp:ImageButton ID="ImageButton_baobiao" CssClass="ImageButton_baobiao"  runat="server" ImageUrl="~/Resource/报表.png" OnClick="ImageButton_baobiao_Click" />
        
        
        
        <asp:ImageButton ID="ImageButton_chaxun" CssClass="auto-style98" runat="server" ImageUrl="~/Resource/查询.png" OnClick="ImageButton_chaxun_Click" />

        <asp:Label ID="Label_zhuye" CssClass="Label_zhuye" runat="server" Text="主页" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_baobiao" CssClass="Label_baobiao" runat="server" Text="报表" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        
        
        <asp:Label ID="Label_chaxun" CssClass="Label_chaxun" runat="server" Text="查询" Font-Names="微软雅黑" ForeColor="White" Font-Size="10pt"></asp:Label>
    </div>
    </form>
</body>
</html>
<script src="chart/dist/Chart.js"></script>
<script src="https://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">

    // javascript操作 
    var all_left_pos = new Array();
    var all_left_value = new Array();
    var all_right_pos = new Array();
    var all_right_value = new Array();

    var count_left=0;
    var count_right=0;
    ReadMap();
    
    var jubu_time_list = new Array();
    var jubu_value_list = new Array();
    var myLineChart;
    //var btn_close;
    var start = 0;


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

    function ReadMap() {
        all_left_pos = [];
        all_left_value = [];
        all_right_pos = [];
        all_right_value = [];

        count_left = 0;
        count_right = 0;

        <%
        for(int k=0;k<left_pos.Count;k++){
           %>

        try {

            // 左边
            all_left_pos.push("<%=left_pos[k]%>");
            all_left_value.push("<%=left_value[k]%>");
        }
        catch (err) {
            //alert(err.message.toString());
        }


        //index = index + 1;
        count_left = count_left + 1;
        <%}
    %>

        <%
        for(int k=0;k<right_pos.Count;k++){
           %>

        try {

            // 右边
            all_right_pos.push("<%=right_pos[k]%>");
            all_right_value.push("<%=right_value[k]%>");
        }
        catch (err) {
            //alert(err.message.toString());
        }


        //index = index + 1;
        count_right = count_right + 1;
        <%}
    %>
        
    }



    
    for (var i = 0; i < count_left; i++)
    {
        try
        {

            var yingbian = parseFloat(all_left_value[i]) +parseFloat( all_right_value[i]);
            //alert(yingbian);
            if (yingbian < 0.1)
            {
              //  alert("1");
                create_ceng(i, "/Resource/zhu1.png");
            }
            if (yingbian >= 0.1 && yingbian < 0.25) {
               // alert("2");
                create_ceng(i, "/Resource/zhu2.png");
            }
            if (yingbian >= 0.25 && yingbian < 0.35) {
               // alert("3");
                create_ceng(i, "/Resource/zhu3.png");
            }
            if (yingbian >= 0.35 && yingbian < 0.5) {
               // alert("4");
                create_ceng(i, "/Resource/zhu4.png");
            }
            if (yingbian >= 0.5 && yingbian < 0.7) {
               // alert("5");
                create_ceng(i, "/Resource/zhu5.png");
            }
            if (yingbian >= 0.7 && yingbian < 0.9) {
               // alert("6");
                create_ceng(i, "/Resource/zhu6.png");
            }
            if (yingbian >= 0.9 && yingbian < 1.1) {
               // alert("7");
                create_ceng(i, "/Resource/zhu7.png");
            }
            if (yingbian >= 1.1 && yingbian < 1.4) {
               // alert("8");
                create_ceng(i, "/Resource/zhu8.png");
            }
            if (yingbian >= 1.4 && yingbian < 1.6) {
               // alert("9");
                create_ceng(i, "/Resource/zhu9.png");
            }
            if (yingbian >= 1.6 && yingbian < 1.9) {
               // alert("10");
                create_ceng(i, "/Resource/zhu10.png");
            }
            if (yingbian >= 1.9 && yingbian < 2.2) {
               // alert("11");
                create_ceng(i, "/Resource/zhu11.png");
            }
            if (yingbian >= 2.2 && yingbian < 2.4) {
               // alert("12");
                create_ceng(i, "/Resource/zhu12.png");
            }
            if (yingbian >= 2.4 && yingbian < 2.6) {
               // alert("13");
                create_ceng(i, "/Resource/zhu13.png");
            }
            if (yingbian >= 2.6 && yingbian < 2.9) {
               // alert("14");
                create_ceng(i, "/Resource/zhu14.png");
            }
            if (yingbian >= 2.9 && yingbian < 4) {
                //alert("15");
                create_ceng(i, "/Resource/zhu15.png");
            }
            if (yingbian >= 4) {
               // alert("16");
                create_ceng(i, "/Resource/zhu16.png");
            }
            

        }
        catch (err)
        {

        }
    }

    function create_ceng(index,ceng_name)
    {
        var a = document.createElement("img");
        a.src = ceng_name;
        a.style.position = "absolute";
        //alert("4");
        a.style.left = "50%";
        //alert("5");
        a.style.top = (index * 20+180).toString()+ "px";
        //alert("6");
        a.style.width = "10%";
        //alert("7");
        a.style.height = "20px";
        //alert("8");
        a.style.zIndex = "90";
        //alert("9");
        try {
            document.getElementById("Panel2").appendChild(a);
        }
        catch (err1) {
            alert(err1);
        }
    }
    
    // 修改行数
    //for(var i=0;i<count_left;i++)
    //{
    //    if (i >= 152)
    //    {
    //        break;
    //    }
    //    try
    //    {
            
    //        line(screen.width * 0.29, 180+20 * i, screen.width * 0.29,180+ 20 * (i + 1), document.getElementById("Panel2"), all_left_value[i],all_left_pos[i]);
    //    }
    //    catch (err) {
    //        alert(err+" count:"+i);
    //    }
    //}
    
    //for(var i=0;i<count_right;i++)
    //{
    //    if (i >= 152)
    //    {
    //        break;
    //    }
    //    try
    //    {
    //        line(screen.width * 0.48, 180+20 * i, screen.width * 0.48, 180+20 * (i + 1), document.getElementById("Panel2"), all_right_value[i],all_right_pos[i]);
    //    }
    //    catch (err) {
    //        alert(err);}
    //}
    //document.write("<div id='tip' style='position:absolute; width:300px; z-index:15; background-color: #ffffff; border: 1px solid gray; overflow: visible;visibility: hidden;font-size:12px;padding:12px;color:#333333'></div>")

    //alert(count_left);
    //alert(count_right);

    function showtip(w, event) {
        var x = event.x;
        var y = event.y;
        // alert(y);
        tip.innerHTML = w;
        tip.style.visibility = "visible";
        tip.style.left = (x + 10) + "px";
        tip.style.top = (y + document.body.scrollTop + 10) + "px";
        tip.style.zIndex = 30;
    }

    // 前端的技术
    function TestAjaxParam(position) {
        $.ajax({
            type: "POST",
            url: "SubMap.aspx/Return_Values_Posision",
            async: false,
            data: '{"position":' + position + '}',
            // data:position,
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                
                red_json_value(data);
                // 位置信息
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
    function red_json_value(string) {

        var length = string.length;
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
                        var weiyi_cut = weiyi_float.toFixed(2);
                        jubu_value_list.push(weiyi_cut);
                        break;
                    }
                }
            }
        }
    }



    function hidetip() {
        tip.style.innerHTML = ""
        tip.style.visibility = "hidden";
    }


    // 画直线
    function createPoint(container, x, y, value,position) {
        var node = document.createElement("div");
        
        var myvalue = parseFloat(value);
        //alert(position);
        node.textContent = myvalue.toFixed(2);
        node.nodeName = position;
        node.className = "line";
        node.id = position;

        node.style.left = x + "px";
        node.style.top = y + "px";
        node.style.zIndex = 14;
        node.style.width = 20 + "px";

        node.onclick = function (event) {

            document.getElementById("chart_wrapper").style.display = "block";
            selected_datetime = new Date();
            Draw_Chart(this.id, selected_datetime,start);
        }

        node.onmousemove = function (event) {
            //alert("in");
            showtip('<b>标题：</b><br>当前位置：' + this.id + ' 当前位移:' + this.textContent + "</br>'", event);
        }

        node.onmouseout = function (event) {
            hidetip();
        }
       
        var myvalue = parseFloat(value.toString());
        //alert(myvalue.toString());

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
        if (myvalue >= value5)
            node.style.backgroundColor = "#FF0000";
        container.appendChild(node);
    }

    function Draw_Chart(myposition, datetime, start_index) {
        // 每次图像只有十个
        try {
            btn_close = document.getElementById("btn_close");

            qianjin = document.getElementById("btn_qianjin");

            houtui = document.getElementById("btn_houtui");
            btn_fuwei = document.getElementById("btn_fuwei");
            qianjin10 = document.getElementById("btn_qianjin10");
            houtui10 = document.getElementById("btn_houtui10");


            btn_close.style.visibility = "visible";
            qianjin.style.visibility = "visible";
            houtui.style.visibility = "visible";
            btn_fuwei.style.visibility = "visible";
            qianjin10.style.visibility = "visible";
            houtui10.style.visibility = "visible";

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
                btn_fuwei.style.visibility = "hidden";
                qianjin10.style.visibility = "hidden";
                houtui10.style.visibility = "hidden";
                
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

            btn_fuwei.onclick = function (event) {
                start_index = 0;
                start = 0;
                Draw_Chart(myposition, datetime, start_index);
            }


            qianjin10.onclick = function (event) {
                if (start_index - 10 >= 0) {
                    start_index = start_index - 10;
                    Draw_Chart(myposition, datetime, start_index);
                    start = start_index;
                }
            }

            houtui10.onclick = function (event) {
                if (start_index + 9 < jubu_time_list.length) {
                    start_index = start_index + 10;
                    Draw_Chart(myposition, datetime, start_index);
                    start = start_index;
                }
            }

            //alert(jubu_time_list.length.toString());
            if (jubu_time_list.length >= start_index + 10) {
                // 完整的显示10个
                // alert(jubu_time_list.length);
                now_jubu_time_list.push(0);
                now_jubu_value_list.push(0);
                for (var i = jubu_time_list.length - 1 - start_index - 9; i <= jubu_time_list.length - 1 - start_index; i++) {
                    now_jubu_time_list.push(jubu_time_list[i]);
                    now_jubu_value_list.push(jubu_value_list[i]);
                    //alert(i);
                }
              //  now_jubu_time_list.push("阈值点");
              //  now_jubu_value_list.push(2);
                //alert(now_jubu_time_list);

            }
            else if (jubu_time_list.length >= start_index) {
                // 只显示一部分
                now_jubu_time_list.push(0);
                now_jubu_value_list.push(0);
                for (var i = 0 ; i < jubu_time_list.length - 1 - start_index; i++) {
                    now_jubu_time_list.push(jubu_time_list[i]);
                    now_jubu_value_list.push(jubu_value_list[i]);
                }
              //  now_jubu_time_list.push("阈值点");
              //  now_jubu_value_list.push(2);
                //alert(now_jubu_time_list);

            }








            var data = {

                labels: now_jubu_time_list,




                datasets: [
                    {

                        label: "当前位置:" + myposition + "位移量(mm)",
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
                    label: { name: myposition, }, yAxis: {          //纵轴标尺固定
                        type: 'value',
                        scale: true,
                        name: '位移量',
                        max: 2,
                        min: 0,
                        boundaryGap: [0.2, 0.2]
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


    function line(startX, startY, endX, endY, container, value,position) {
        if (startX == endX) {
            if (startY > endY) {
                var tempY = startY;
                startY = endY;
                endY = tempY;
            }
            for (var k = startY; k < endY; k++) {
               // alert(position);
                createPoint(container, startX, k, value,position);
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
                createPoint(container, i, a * i + b, value,position);
            }
        } else {
            if (startY > endY) {
                var tempY = startY;
                startY = endY;
                endY = tempY;
            }
            for (var j = startY; j <= endY; j++) {
                createPoint(container, (j - b) / a, j, value,position);
            }
        }
    }
</script>