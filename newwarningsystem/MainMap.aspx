<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMap.aspx.cs" Inherits="newwarningsystem.MainMap" %>

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
            position: absolute;
            top: 11%;
            left: 0%;
            z-index: 1;
            width: 100%;
            height: 88%;
            
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
        
        @keyframes myfirst 
        {
			from {
				width:2.5%;
                height:5%;
                    
			}
			to {

				width:2%;
                height:4%;
			}   
        }
        .auto-style5 
        {
            position: absolute;
            top: 45%;
            left: 27%;
            z-index: 6;
            width: 2%;
            height: 4%;
            
        }
        

        
        .auto-style6 
        {
            position: absolute;
            top: 35%;
            left: 69%;
            z-index:6;
            width:2%;
            height:4%;
            bottom: 321px;
        }
        .auto-style7 
        {
            position: absolute;
            top: 47%;
            left: 69%;
            z-index:6;
            width:2%;
            height:4%;
        }
        .auto-style8 
        {
            position: absolute;
            top: 51%;
            left: 12%;
            z-index: 6;
            height: 4%;
            right: 68%;
            width:2%;
        }
        .auto-style9 
        {
            position: absolute;
            top: 51%;
            left: 36%;
            z-index:6;
            width:2%;
            height:4%;
            right: 920px;
        }
        .auto-style10 
        {
            position: absolute;
            top: 51%;
            left: 64%;
            z-index: 6;
            width:2%;
            height: 4%;
            right: 822px;
        }
        .auto-style11 
        {
            position: absolute;
            top: 51%;
            left: 78%;
            z-index: 6;
            width: 2%;
            height: 4%;
        }
        .auto-style12 {
            position: absolute;
            top: 0%;
            left: 0%;
            z-index: 3;
            width: 100%;
            height: 11%;
        }
        .auto-style13 {
            position: absolute;
            top: 5%;
            left: 0%;
            z-index: 3;
            width: 100%;
            height: 5%;
        }
        .auto-style14 {
            position: absolute;
            top: 6%;
            left: 70%;
            z-index: 4;
            width: 20%;
            height: 5%;
        }
        .auto-style15 {
            position: absolute;
            top: 16%;
            left: 16%;
            z-index: 4;
            width: 20%;
            height: 4%;
             
        }
        .auto-style16 {
            position: absolute;
            top: 45%;
            left: 23%;
            z-index: 5;
             width: 9%;
            height: 5%;
            border-radius:100%;
             border-color:red;
             border-width:3px;
             opacity:0.5;
             
             
        }
        .auto-style17 {
            position: absolute;
            top: 35%;
            left: 66%;
            z-index: 5;
            width: 9%;
            height: 5%;
             opacity:0.5;
             border-radius:100%;
             border-color:red;
             border-width:3px;
        }
        .auto-style18 {
            position: absolute;
            top: 47%;
            left: 66%;
            z-index: 5;
            width: 9%;
            height: 5%;
             opacity:0.5;
             border-radius:100%;
             border-color:red;
             border-width:3px;
        }
         .auto-style19 {
            position: absolute;
            top: 50%;
            left: 11%;
            z-index: 5;
            width: 4%;
            height: 5%;
             opacity:0.5;
             border-radius:100%;
            
        }
         .auto-style20 {
            position: absolute;
            top: 50%;
            left: 35%;
            z-index: 5;
            width: 4%;
            height: 5%;
            opacity:0.5;
             border-radius:100%;
             
        }
         .auto-style21 {
            position: absolute;
            top: 50%;
            left: 63%;
            z-index: 5;
            width: 4%;
            height: 5%;
            opacity:0.5;
             border-radius:100%;
             
        }
         .auto-style22 {
            position: absolute;
            top: 50%;
            left: 77%;
            z-index: 5;
            width: 4%;
            height: 5%;
            opacity:0.5;
             border-radius:100%;
             
        }
         .auto-style68 {
            position: absolute;
            top: 14%;
            left: 0%;
            width: 9%;
            height:30%;
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
            width: 20%;
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
            .auto-style74 {
            position: absolute;
            top: 37%;
            left: 5%;
            width: 30%;
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
            width: 40%;
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
            width: 50%;
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
            width: 60%;
            height:7%;
            z-index: 3;
           
        }
           .auto-style81 {
            position: absolute;
            top: 14%;
            left: 0.4%;
            width: 9%;
            height:4%;
            z-index: 3;
           

           
        }
           .auto-style82 {
            position: absolute;
            top: 11%;
            left: 75%;
            width: 25%;
            height:81%;
            z-index: 4;
            opacity:0.75;
           

           
        }
            .auto-style86 {
            position: absolute;
            top: 0px;
            left: 20px;
            width: 6%;
            z-index: 4;
            height:10%;
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
            top: 11%;
            left: 70%;
            width: 30%;
            z-index: 7;
            height: 4%;
            border-radius:3%;
            opacity:0.8;
        }
            .biaozhi1 {
            position: absolute;
            top: 14%;
            left: 22%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi2 {
            position: absolute;
            top: 14%;
            left: 32%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi3 {
            position: absolute;
            top: 14%;
            left: 42%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi4 {
            position: absolute;
            top: 14%;
            left: 52%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi5 {
            position: absolute;
            top: 14%;
            left: 62%;
            width: 20px;
            z-index: 7;
            height:20px;
            border-radius:100%;
        }
             .biaozhi1_label {
            position: absolute;
            top: 14%;
            left: 24%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi2_label {
            position: absolute;
            top: 14%;
            left: 34%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi3_label {
            position: absolute;
            top: 14%;
            left: 44%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi4_label {
            position: absolute;
            top: 14%;
            left: 54%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
            .biaozhi5_label {
            position: absolute;
            top: 14%;
            left: 64%;
            width: 80px;
            z-index: 7;
            height:20px;
            
        }
        .Panel_shebeizhuangtai {
            position: absolute;
            top: 11%;
            left: 81%;
            width: 19%;
            z-index: 7;
            height: 50%;
        }
        .Label_zaixian {
            position:absolute;
            top:80%;
            left:5%;
            width:30%;
            height:10%;
            z-index:7;
        }
        .Label_lixian {
            position:absolute;
            top:80%;
            left:35%;
            width:30%;
            height:10%;
            z-index:7;
        }
        .Label_zaixianbili {
            position:absolute;
            top:80%;
            left:65%;
            width:30%;
            height:10%;
            z-index:7;
        }
        .Label_zaixianshow
        {
            position:absolute;
            top:90%;
            left:5%;
            width:30%;
            height:10%;
            z-index:7;
        }
        .Label_lixianshow
        {
            position:absolute;
            top:90%;
            left:35%;
            width:30%;
            height:10%;
            z-index:7;
        }
        .Label_zaixianbilishow
        {
            position:absolute;
            top:90%;
            left:65%;
            width:30%;
            height:10%;
            z-index:7;
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
            position: absolute;
            top: 1%;
            left: 65%;
            width: 3%;
            z-index: 9;
            height: 5%;
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
            left:63%;
            width:100px;
            height:20px;
            z-index:6;
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
        .Panel_chart
        {
            position:absolute;
            top:80%;
            left:0%;
            width:80%;
            z-index:9;
            height:15%;
        }
        .label_zuidaweiyixinxi
        {
            position:absolute;
            top:5%;
            left:0%;
            width:30%;
            z-index:9;
            height:10%;
            text-align:center;
        }
        .label_weiyi
        {
             position:absolute;
            top:5%;
            left:33%;
            width:30%;
            z-index:9;
            height:10%;
            text-align:center;
        }
        .label_xinxi
        {
             position:absolute;
            top:5%;
            left:66%;
            width:30%;
            z-index:9;
            height:10%;
            text-align:center;
        }
        .label_quyu1
        {
            position:absolute;
            top:18%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_quyu2
        {
            position:absolute;
            top:29%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_quyu3
        {
            position:absolute;
            top:40%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_quyu4
        {
            position:absolute;
            top:51%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_quyu5
        {
            position:absolute;
            top:62%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_quyu6
        {
            position:absolute;
            top:73%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_quyu7
        {
            position:absolute;
            top:84%;
            left:0%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }

         .label_weiyi1
        {
            position:absolute;
            top:18%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weiyi2
        {
            position:absolute;
            top:29%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weiyi3
        {
            position:absolute;
            top:40%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weiyi4
        {
            position:absolute;
            top:51%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weiyi5
        {
            position:absolute;
            top:62%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weiyi6
        {
            position:absolute;
            top:73%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weiyi7
        {
            position:absolute;
            top:84%;
            left:33%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }

         .label_weizhi1
        {
            position:absolute;
            top:18%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weizhi2
        {
            position:absolute;
            top:29%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weizhi3
        {
            position:absolute;
            top:40%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weizhi4
        {
            position:absolute;
            top:51%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weizhi5
        {
            position:absolute;
            top:62%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weizhi6
        {
            position:absolute;
            top:73%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
        }
        .label_weizhi7
        {
            position:absolute;
            top:84%;
            left:66%;
            width:30%;
            z-index:9;
            height:5%;
            text-align:center;
            
        }


        .Label_title_podao1
        {
            position:absolute;
            top:35%;
            left:24%;
            width:20%;
            z-index:10;
            height:4%;
            text-align:center;
        }
        .Label_title_podao2
        {
            position:absolute;
            top:25%;
            left:70%;
            width:20%;
            z-index:10;
            height:4%;
            text-align:center;
        }
        .Label_title_podao3
        {
            position:absolute;
            top:41%;
            left:70%;
            width:20%;
            z-index:10;
            height:4%;
            text-align:center;
        }
        .Label_title_podao4
        {
            position:absolute;
            top:58%;
            left:6%;
            width:18%;
            z-index:10;
            height:4%;
            text-align:center;
        }
        .Label_title_podao5
        {
            position:absolute;
            top:58%;
            left:25%;
            width:18%;
            z-index:10;
            height:4%;
            text-align:center;
        }
        .Label_title_podao6
        {
            position:absolute;
            top:58%;
            left:54%;
            width:18%;
            z-index:10;
            height:4%;
            text-align:center;
        }
        .Label_title_podao7
        {
            position:absolute;
            top:58%;
            left:71%;
            width:18%;
            z-index:10;
            height:4%;
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

        .panel_yuzhise
        {
            position:absolute;
            top:15%;
            left:90%;
            width:10%;
            z-index:10;
            height:60%;
            
        }
        .Label_yuzhi_title
        {
            position:absolute;
            top:0%;
            left:0%;
            width:100%;
            z-index:10;
            height:10%;
        }
        .Label_level1
        {
            position:absolute;
            top:11%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .TextBox_level1
        {
            position:absolute;
            top:16%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .Label_level2
        {
            position:absolute;
            top:21%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .TextBox_level2
        {
            position:absolute;
            top:26%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .Label_level3
        {
            position:absolute;
            top:31%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .TextBox_level3
        {
            position:absolute;
            top:36%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .Label_level4
        {
            position:absolute;
            top:41%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .TextBox_level4
        {
            position:absolute;
            top:46%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .Label_level5
        {
            position:absolute;
            top:51%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .TextBox_level5
        {
            position:absolute;
            top:56%;
            left:0%;
            width:100%;
            z-index:10;
            height:5%;
        }
        .Button1
        {
            position:absolute;
            top:61%;
            left:0%;
            width:100%;
            z-index:10;
            height:7%;
        }
        .Menu1 
        {
            position:absolute;
            top:1%;
            left:6%;
            width:30%;
            z-index:10;
            height:3%;
        }
        .DropDownList1
        {
            position:absolute;
            top:5%;
            left:10%;
            width:20%;
            z-index:10;
            height:3%;
        }
            .auto-style88 {
            position: absolute;
            top: 84%;
            left: 65%;
            width: 30%;
            z-index: 9;
            height: 5%;
            text-align: center;
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

        .mimaset
        {
            position: absolute;
            top: 1%;
            left: 70%;
            width: 6%;
            z-index: 9;
            height: 5%;
        }
        .sound
        {
            position: absolute;
            top: 1%;
            left: 80%;
            width: 10%;
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
         .Label_shezhi
         {
             position: absolute;
            top: 6%;
            left: 65%;
            width: 5%;
            z-index: 9;
            height: 5%;
         }
         .btn_play{
             position: absolute;
             z-index:100;
            top: 101px;
            left: 10px;
            width: 347px;
        }
            .auto-style89 {
            position: absolute;
            top: 1%;
            left: 55%;
            width: 3%;
            z-index: 9;
            height: 5%;
            right: 382px;
        }
            </style>
     
<script type="text/javascript">
    function VisiblePanel2()
    {
        

        
    }
</script>


</head>
<body style="height: 100%; width:100%;">
  
    <form id="form1" runat="server" style="width:100%; height:100%">
    <div class="auto-style1">
         
       <audio id="po1">
          <source = src="sound/1号坡道区域.wav" type="audio/wav"/>
         <source = src="sound/1号坡道区域.ogg" type="audio/ogg"/>
          
       </audio>
       <audio id="po2">
          <source = src="sound/2号坡道区域.wav" type="audio/wav"/>
         <source = src="sound/2号坡道区域.ogg" type="audio/ogg"/>
          
       </audio>
         <audio id="po3">
          <source = src="sound/3号坡道区域.wav" type="audio/wav"/>
         <source = src="sound/3号坡道区域.ogg" type="audio/ogg"/>
       </audio>

        <audio id="guan1">
          <source = src="sound/1测.wav" type="audio/wav"/>
         <source = src="sound/1测.ogg" type="audio/ogg"/>
       </audio>

        <audio id="guan2">
          <source = src="sound/2测.wav" type="audio/wav"/>
          <source = src="sound/2测.ogg" type="audio/ogg"/>
       </audio>

        <audio id="guan3">
          <source = src="sound/3测.wav" type="audio/wav"/>
         <source = src="sound/3测.ogg" type="audio/ogg"/>
       </audio>

        <audio id="guan4">
          <source = src="sound/4测.wav" type="audio/wav"/>
          <source = src="sound/4测.ogg" type="audio/ogg"/>
       </audio>

        
       


        <!-- 关于时间的更新-->
        <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager><!--必须包含这个控件，否则UpdatePanel无法使用-->  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">  
                <ContentTemplate>
            <!--Lable和Timer控件必须都包含在UpdatePanel控件中 -->  
                  <asp:Label ID="Label_timer" CssClass="auto-style14" runat="server" Text="Label" Font-Names="微软雅黑" ForeColor="White"></asp:Label>  <!--用于显示时间-->  
                  <asp:Label ID="Label_baojingshuoming1" CssClass="Label_baojingshuoming1" runat="server" Text="总体说明" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible="false"></asp:Label>
                  <!--阈值设置-->
                  <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->  
                        
                    <asp:Panel ID="Panel_bingzhuangtu" CssClass="Panel_bingzhuangtu" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            <asp:Label ID="Label_baojingshuoming" CssClass="Label_dangqiantongji" runat="server" Text="总体说明" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible="false"></asp:Label>
        </asp:Panel>
          <asp:Panel ID="Panel_chart" CssClass="Panel_chart" runat="server" BackColor="#3333FF">
        </asp:Panel>

                     <!--地图上报警标志-->
        <asp:Label ID="Label_title_podao1" CssClass="Label_title_podao1" runat="server" Text="Label" BackColor="#0099CC" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px"></asp:Label>
        <asp:Label ID="Label_title_podao2" CssClass="Label_title_podao2" runat="server" Text="Label" BackColor="#0099CC" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px"></asp:Label>
        <asp:Label ID="Label_title_podao3" CssClass="Label_title_podao3" runat="server" Text="Label" BackColor="#0099CC" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px"></asp:Label>
        <asp:Label ID="Label_title_podao4" CssClass="Label_title_podao4" runat="server" Text="Label" BackColor="Blue" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_title_podao5" CssClass="Label_title_podao5" runat="server" Text="Label" BackColor="Blue" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_title_podao6" CssClass="Label_title_podao6" runat="server" Text="Label" BackColor="Blue" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_title_podao7" CssClass="Label_title_podao7" runat="server" Text="Label" BackColor="Blue" Font-Names="微软雅黑" Font-Size="Larger" ForeColor="White"></asp:Label>
                   
                    <!--新界面信息-->
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
        <asp:Timer ID="Timer4" runat="server" Interval="1000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->  
         </asp:Panel>
                </ContentTemplate>                  
            </asp:UpdatePanel>  
        <asp:ImageButton ID="Image_point1" runat="server" CssClass="auto-style5" ImageUrl="~/Resource/position.png" OnClick="Image_point1_Click" ToolTip="一号坡 2164-2317"/>
                        <asp:ImageButton ID="Image_point2" runat="server" CssClass="auto-style6" ImageUrl="~/Resource/position.png" OnClick="Image_point2_Click" ToolTip="二号坡 2361-2558" />
                        <asp:ImageButton ID="Image_point3" runat="server" CssClass="auto-style7" ImageUrl="~/Resource/position.png" OnClick="Image_point3_Click" ToolTip="三号坡 2934-3074" />
                        <asp:ImageButton ID="Image_point4" runat="server" CssClass="auto-style8" ImageUrl="~/Resource/position.png" OnClick="Image_point4_Click" ToolTip="测斜管标定1号管" />
                        <asp:ImageButton ID="Image_point5" runat="server" CssClass="auto-style9" ImageUrl="~/Resource/position.png" OnClick="Image_point5_Click" ToolTip="测斜管标定2号管" />
                        <asp:ImageButton ID="Image_point6" runat="server" CssClass="auto-style10" ImageUrl="~/Resource/position.png" OnClick="Image_point6_Click" ToolTip="测斜管标定3号管" />
                        <asp:ImageButton ID="Image_point7" runat="server" CssClass="auto-style11" ImageUrl="~/Resource/position.png" OnClick="Image_point7_Click" ToolTip="测斜管标定4号管" />
        <!--这里加了conditional之后，各自更新更自的-->
         <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">  
                <ContentTemplate>
                    
                        
                           


                 </ContentTemplate>
             </asp:UpdatePanel>
          <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">  
                <ContentTemplate>
                    <asp:Panel ID="Circle1" BackColor="Orange" runat="server" CssClass="auto-style16" ToolTip="一号坡 2164-2317" >
                        
                    </asp:Panel>
                    
                    <asp:Panel ID="Circle2" BackColor="Orange" runat="server" CssClass="auto-style17" ToolTip="二号坡 2361-2558" />
                    <asp:Panel ID="Circle3" BackColor="Orange" runat="server" CssClass="auto-style18" ToolTip="三号坡 2934-3074" />
                    <asp:Panel ID="Circle4" BackColor="Orange" runat="server" CssClass="auto-style19" ToolTip="测斜管标定1号管 602-675" />
                    <asp:Panel ID="Circle5" BackColor="Orange" runat="server" CssClass="auto-style20" ToolTip="测管标定2号管 742-810" />
                    <asp:Panel ID="Circle6" BackColor="Orange" runat="server" CssClass="auto-style21" ToolTip="测斜管标定3号管 875-939" />
                    <asp:Panel ID="Circle7" BackColor="Orange" runat="server" CssClass="auto-style22" ToolTip="测斜管标定4号管 994-1069" />
                    <asp:Panel ID="Panel_baojing_info" CssClass="Panel_baojing_info" runat="server" ScrollBars="Vertical" Visible="false">
                        </asp:Panel> 

                    <!--区域最大位移信息-->
         <asp:Panel ID="Panel_shebeizhuangtai" CssClass="Panel_shebeizhuangtai" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
              <asp:Label ID="label_zuidaweiyixinxi" runat="server" ForeColor="White" Font-Size="Small" CssClass="label_zuidaweiyixinxi" Text="区域" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
              <asp:Label ID="label_weiyi" runat="server" ForeColor="White" Font-Size="Small" CssClass="label_weiyi" Text="位移" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
              <asp:Label ID="label_xinxi" runat="server" ForeColor="White" Font-Size="Small" CssClass="label_xinxi" Text="位置" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
              <asp:Label ID="label_quyu1" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu1" Text="一号坡" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_quyu2" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu2" Text="二号坡" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_quyu3" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu3" Text="三号坡" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_quyu4" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu4" Text="一号管" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_quyu5" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu5" Text="二号管" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_quyu6" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu6" Text="三号管" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_quyu7" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_quyu7" Text="四号管" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
           
              <asp:Label ID="label_weiyi1" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi1" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weiyi2" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi2" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weiyi3" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi3" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weiyi4" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi4" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weiyi5" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi5" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weiyi6" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi6" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weiyi7" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weiyi7" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>

              <asp:Label ID="label_weizhi1" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weizhi1" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weizhi2" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weizhi2" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weizhi3" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weizhi3" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weizhi4" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weizhi4" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weizhi5" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weizhi5" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weizhi6" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="label_weizhi6" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
              <asp:Label ID="label_weizhi7" runat="server" ForeColor="White" Font-Size="Smaller" CssClass="auto-style88" Text="" Font-Names="微软雅黑" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
       <asp:Timer ID="timer5" Interval="5000" runat="server"/>
             </asp:Panel>
                    <asp:Timer ID="timer" Interval="5000" runat="server"/>

                </ContentTemplate>
          </asp:UpdatePanel>

         <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional" OnDataBinding="UpdatePanel4_DataBinding" Visible="false">  
                <ContentTemplate>
                     <asp:Panel ID="Panel2" CssClass="auto-style82" BackColor="Blue" runat="server" >
                     </asp:Panel>
                    <asp:Timer ID="timer2" Interval="4000" runat="server" OnTick="timer2_Tick1"/>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="timer3" EventName="Tick" />
                </Triggers>
         </asp:UpdatePanel>
        <asp:Timer ID="timer3" Interval="20000" runat="server" OnTick="timer3_Tick"/>
         <asp:Panel ID="Panel1" CssClass="auto-style68" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" Visible="false">
             <asp:Label ID="Label14"  CssClass="auto-style70" runat="server" Text="线缆颜色对应位移量" ForeColor="Black" Font-Size="Smaller" Visible="false"></asp:Label>
             <asp:Label ID="Label1" CssClass="auto-style71"  runat="server" Text="<0.01mm" ForeColor="White" Font-Size="Small" Visible="false"></asp:Label>
             <asp:Label ID="Label15" CssClass="auto-style72" runat="server" Text="L" ForeColor="DarkBlue" BackColor="DarkBlue" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label16" CssClass="auto-style73" runat="server" Text="<=0.5mm" ForeColor="White" Font-Size="Small" Visible="false"></asp:Label>
             <asp:Label ID="Label17" CssClass="auto-style74" runat="server" Text="Label" ForeColor="Blue" BackColor="Blue" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label18" CssClass="auto-style75" runat="server" Text="<=1.0mm" ForeColor="White" Font-Size="Small" Visible="false"></asp:Label>
             <asp:Label ID="Label19" CssClass="auto-style76" runat="server" Text="Label" ForeColor="LightGreen" BackColor="LightGreen" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label20" CssClass="auto-style77" runat="server" Text="<2.0mm"  ForeColor="White" Font-Size="Small" Visible="false"></asp:Label>
             <asp:Label ID="Label21" CssClass="auto-style78" runat="server" Text="Label" ForeColor="Yellow" BackColor="Yellow" Font-Size="Small"></asp:Label>
             <asp:Label ID="Label22" CssClass="auto-style79" runat="server" Text=">=2.0mm" Font-Size="Small" ForeColor="White" Visible="false"></asp:Label>
             <asp:Label ID="Label23" CssClass="auto-style80" runat="server" Text="Label" ForeColor="Red" BackColor="Red" Font-Size="Small"></asp:Label>
         </asp:Panel>
        
        <asp:Image ID="Image_title_name" CssClass="Image_title_name" runat="server" ImageUrl="~/Resource/坝光收费站边坡健康监测系统-文字效果.png" />
        <asp:Image ID="Image_title" CssClass="auto-style12" runat="server" BackColor="#0000CC" ImageUrl="~/Resource/上侧背景条1.png"  />
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style15" ForeColor="White" OnClick="LinkButton1_Click1" Visible="false">报表查询</asp:LinkButton>
        
        
        
        <asp:ImageButton ID="ImageButton_zhuye" CssClass="ImageButton_zhuye" runat="server" ImageUrl="~/Resource/主页.png" />
        
        
        
        <asp:ImageButton ID="ImageButton_baobiao" CssClass="auto-style89"  runat="server" ImageUrl="~/Resource/报表.png" OnClick="ImageButton_baobiao_Click" />
        
        
        
        <asp:ImageButton ID="ImageButton_chaxun" CssClass="ImageButton_chaxun" runat="server" ImageUrl="~/Resource/查询.png" OnClick="ImageButton_chaxun_Click" />
        
        <asp:ImageButton ID="Image_set" CssClass="Image_set" runat="server" ImageUrl="~/Resource/设置.png" OnClick="Image_set_Click" />
        
        <asp:Button  ID="mimaset" CssClass="mimaset" runat="server" Text="密码设置" OnClick="mimaset_Click" />
        <input type="button" id="sound"  runat="server" class="sound" value="点击关闭声音"/>



        <asp:Label ID="Label_zhuye" CssClass="Label_zhuye" runat="server" Text="主页" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_baobiao" CssClass="Label_baobiao" runat="server" Text="报表" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        
        
        <asp:Label ID="Label_chaxun" CssClass="Label_chaxun" runat="server" Text="查询" Font-Names="微软雅黑" ForeColor="White" Font-Size="10pt"></asp:Label>
        
        
        <asp:Label ID="Label_shezhi" CssClass="Label_shezhi" runat="server" Text="设置" Font-Names="微软雅黑" ForeColor="White" Font-Size="10pt"></asp:Label>
        
        
        <asp:Image ID="Image_time" CssClass="auto-style13" runat="server" BackColor="#0066FF" Visible="False" />
        
        
         <asp:Image ID="Image_icon" CssClass="auto-style86" runat="server"  ImageUrl="~/Resource/LOGO.png" BorderColor="Black" BorderStyle="None" BorderWidth="3px" />
        <asp:Label ID="Label24" runat="server" Text="报警等级" CssClass="auto-style81" BackColor="#000099" ForeColor="White" Visible="false"></asp:Label>
   
        
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenField2" runat="server" />
   
        
        
   
        <asp:Image ID="Imagemap" runat="server" CssClass="auto-style2" ImageUrl="~/Resource/地图.png" OnDataBinding="Imagemap_DataBinding" BorderStyle="Ridge" BorderColor="#00CCFF" BorderWidth="4px" />
         
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

        <!--饼状图-->
       
        <asp:Panel ID="panel_yuzhiset" CssClass="panel_yuzhise" runat="server" BackColor="Blue">
                       <asp:Label ID="Label_yuzhi_title" runat="server" Text="设定报警阈值" CssClass="Label_yuzhi_title" ForeColor="White"></asp:Label>
                       <asp:Label ID="Label_level1" runat="server" Text="一级阈值" CssClass="Label_level1" ForeColor="White"></asp:Label>
                       <asp:Label ID="Label_level2" runat="server" Text="二级阈值" CssClass="Label_level2" ForeColor="White"></asp:Label>
                       <asp:Label ID="Label_level3" runat="server" Text="三级阈值" CssClass="Label_level3"  ForeColor="White"></asp:Label>
                       <asp:Label ID="Label_level4" runat="server" Text="四级阈值" CssClass="Label_level4"  ForeColor="White"></asp:Label>
                       <asp:Label ID="Label_level5" runat="server" Text="五级阈值" CssClass="Label_level5"  ForeColor="White"></asp:Label>
                       
                       <asp:TextBox ID="TextBox_level1" runat="server" CssClass="TextBox_level1" OnTextChanged="TextBox_level1_TextChanged" ></asp:TextBox>
                       <asp:TextBox ID="TextBox_level2" runat="server" CssClass="TextBox_level2" OnTextChanged="TextBox_level2_TextChanged" ></asp:TextBox>
                       <asp:TextBox ID="TextBox_level3" runat="server" CssClass="TextBox_level3" OnTextChanged="TextBox_level3_TextChanged" ></asp:TextBox>
                       <asp:TextBox ID="TextBox_level4" runat="server" CssClass="TextBox_level4" OnTextChanged="TextBox_level4_TextChanged" ></asp:TextBox>
                       <asp:TextBox ID="TextBox_level5" runat="server" CssClass="TextBox_level5" OnTextChanged="TextBox_level5_TextChanged" ></asp:TextBox>
                       <asp:Button ID="Button1" runat="server" Text="确定" CssClass="Button1" UseSubmitBehavior="False" OnClick="Button1_Click" />
       </asp:Panel>
        

        

        <!--功能区-->
        <asp:Panel ID="Panel_gongnengqu" CssClass="Panel_gongnengqu" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
           <asp:Label ID="Label_gongnengqu" CssClass="Label_dangqiantongji" runat="server" Text="功能区" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF"></asp:Label>
           <asp:ImageButton ID="image_graft" CssClass="image_graft" runat="server" ImageUrl="~/Resource/graph.png" OnClick="image_graft_Click" />
           <asp:ImageButton ID="Image_baojing" CssClass="image_attition" runat="server" ImageUrl="~/Resource/attention.png" OnClick="Image_baojing_Click" />
           
        </asp:Panel>

        <!--报警信息-->
        <asp:Panel ID="Panel_baojing" CssClass="Panel_jingbao" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" Visible="false">
            
        </asp:Panel>
        <asp:Label ID="Label_baojing" CssClass="Label_baojing" runat="server" Text="报警信息" Font-Bold="True" Font-Names="微软雅黑" ForeColor="#CCFFFF" Visible ="false"></asp:Label>
        <asp:label ID="Label_header1"  runat="server" CssClass="Label_header1" Text="报警地点" ForeColor="White" Visible="false"/>
        <asp:label ID="Label_header2"  runat="server" CssClass="Label_header2" Text="报警位置" ForeColor="White" Visible="false" />
        <asp:label ID="Label_header3"  runat="server" CssClass="Label_header3" Text="位移量" ForeColor="White" Visible="false"/>
    </div>
    </form>
</body>
</html>


<script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript">
    var x = window.screen.height;
    var y = window.screen.width;
    document.getElementById("HiddenField1").value = x.toString();
    document.getElementById("HiddenField2").value = y.toString();
 
    var is_sound = true;
    var podao1_warning_is = false;
    var podao2_warning_is = false;
    var podao3_warning_is = false;
    var guan1_warning_is = false;
    var guan2_warning_is = false;
    var guan3_warning_is = false;
    var guan4_warning_is = false;

    function playpo1()
    {
    
        var audio = document.getElementById("po1");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
       
    }

    function playpo2()
    {
        var audio = document.getElementById("po2");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }


    function playpo3()
    {
        var audio = document.getElementById("po3");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }
   
    function playguan1()
    {
        var audio = document.getElementById("guan1");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }

    function playguan2()
    {
        var audio = document.getElementById("guan2");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }

    function playguan3() {
        var audio = document.getElementById("guan3");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }

    function playguan4() {
        var audio = document.getElementById("guan4");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }
    

    
    
    var int1 = self.setInterval("clock1()", 6000);

    var sound_btn = document.getElementById("sound");

    sound_btn.onclick=function(event)
    {
        if(is_sound==true)
        {
            is_sound = false;
            //sound_btn.style = "background-position: center; background-image:url('Resource/Sound_off.png'); background-repeat: no-repeat; background-attachment: fixed;";
            sound_btn.value = "点击开启声音";
        }
        else
        {
            is_sound = true;
            sound_btn.value = "点击关闭声音";

           // sound_btn.style = "background-position: center; background-image:url('Resource/Sound_on.png'); background-repeat: no-repeat; background-attachment: fixed;";
        }
    }

    var index = 0;
    function clock1() {
        if (index == 0) {
            var po1 = document.getElementById("Label_title_podao1");
            if (po1.textContent.toString() == "坡道1 状态：位移预警") {
                playpo1();
                if(podao1_warning_is==true)
                {
                    podao1_warning_is = false;

                    // 加入信息
                }
            }
            else
            {
                podao1_warning_is = true;
            }
            index++;
        }

        else if(index==1)
        {
            var po2 = document.getElementById("Label_title_podao2");
            if (po2.textContent.toString() == "坡道2 状态：位移预警") {
                playpo2();
                if (podao2_warning_is == true) {
                    podao2_warning_is = false;

                    // 加入信息
                }
            }
            else {
                podao2_warning_is = true;
            }
            index++;
        }
        else if (index == 2) {
            var po1 = document.getElementById("Label_title_podao3");
            if (po1.textContent.toString() == "坡道3 状态：位移预警") {
                playpo3();
                if (podao3_warning_is == true) {
                    podao3_warning_is = false;

                    // 加入信息
                }
            }
            else {
                podao3_warning_is = true;
            }
            index++;
        }

        else if (index == 3) {
            var po1 = document.getElementById("Label_title_podao4");
            if (po1.textContent.toString() == "测斜管1 状态：位移预警") {
                playguan1();
                if (guan1_warning_is == true) {
                    guan1_warning_is = false;

                    // 加入信息
                }
            }
            else {
                guan1_warning_is = true;
            }
            index++;
        }

        else if (index == 4) {
            var po1 = document.getElementById("Label_title_podao5");
            if (po1.textContent.toString() == "测斜管2 状态：位移预警") {
                playguan2();
                if (guan2_warning_is == true) {
                    guan2_warning_is = false;

                    // 加入信息
                }
            }
            else {
                guan2_warning_is = true;
            }
            index++;
        }

        else if (index == 5) {
            var po1 = document.getElementById("Label_title_podao6");
            if (po1.textContent.toString() == "测斜管3 状态：位移预警") {
                playguan3();
                if (guan3_warning_is == true) {
                    guan3_warning_is = false;

                    // 加入信息
                }
            }
            else {
                guan3_warning_is = true;
            }
            index++;
        }
        else if (index >= 6) {
            var po1 = document.getElementById("Label_title_podao7");
            if (po1.textContent.toString() == "测斜管4 状态：位移预警") {
                playguan4();
                if (guan4_warning_is == true) {
                    guan4_warning_is = false;

                    // 加入信息


                }
            }
            else {
                guan4_warning_is = true;
            }
            index=0;
        }
    }

    var getCookie = function (name) {
        var arr;
        var reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
        if (arr = document.cookie.match(reg)) {
            return arr[2];
        }
        else
            return null;
    };


    var username = getCookie("userName");
    var password = getCookie("password");


    if(username=='admin' && password=='adminadmin')
    {
        //alert(username + " " + password);
        var button = document.getElementById("Image_set");
        button.style.visibility = "visible";

        var label = document.getElementById("Label_shezhi");
        label.style.visibility = "visible";

        var button1 = document.getElementById("mimaset");
        button1.style.visibility = "visible";
    }
    else
    {

       // alert(username + " " + password);
        var button = document.getElementById("Image_set");
        button.style.visibility = "hidden";

        var label = document.getElementById("Label_shezhi");
        label.style.visibility = "hidden";

        var button1 = document.getElementById("mimaset");
        button1.style.visibility = "hidden";
    }


    //var int2 = self.setInterval("clock2()", 5000);
    //function clock2() {
    //    var po2 = document.getElementById("Label_title_podao2");
    //    if (po2.textContent.toString() == "坡道2 状态：位移预警") {
    //        playpo2();
    //    }
    //}
    
    //var int3 = self.setInterval("clock3()", 5000);

    //function clock3() {
    //    var po1 = document.getElementById("Label_title_podao3");
    //    if (po1.textContent.toString() == "坡道3 状态：位移预警") {
    //        playpo3();
    //    }
    //}

    //var int4 = self.setInterval("clock4()", 5000);

    //function clock4() {
    //    var po1 = document.getElementById("Label_title_podao4");
    //    if (po1.textContent.toString() == "侧斜管1 状态：位移预警") {
    //        playguan1();
    //    }
    //}


    //var int5 = self.setInterval("clock5()", 5000);

    //function clock5() {
    //    var po1 = document.getElementById("Label_title_podao5");
    //    if (po1.textContent.toString() == "侧斜管2 状态：位移预警") {
    //        playguan2();
    //    }
    //}

    //var int6 = self.setInterval("clock6()", 5000);

    //function clock6() {
    //    var po1 = document.getElementById("Label_title_podao6");
    //    if (po1.textContent.toString() == "侧斜管3 状态：位移预警") {
    //        playguan3();
    //    }
    //}


    //var int7 = self.setInterval("clock7()", 5000);

    //function clock7() {
    //    var po1 = document.getElementById("Label_title_podao7");
    //    if (po1.textContent.toString() == "侧斜管4 状态：位移预警") {
    //        playguan4();
    //    }
    //}
    
</script>
