<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_bianhua_yuefen.aspx.cs" Inherits="baguang_new.Show_bianhua_yuefen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>趋势统计</title>
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
       
       

        <!--异步更新的部分-->
        <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label_Time" CssClass="label_time" runat="server" Text="当前时间" ForeColor="White"></asp:Label>
                <asp:Timer ID="Timer_Label" runat="server" Interval="1000"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>

    <div id="mychart" style="position:absolute;left:5%;width:90%;top:30%;height:55%;border-style:solid;overflow:inherit">
        <canvas id="mycanvas" style="left:0%;top:0%;width:100%;height:100%;z-index:4;background-color:white;" >
        
        
        
        </canvas>
    </div>

    <label id="label_time1" style="position:absolute;left:1%;width:7%;top:12%;height:20px;text-align:center;font-size:18px">选择时间1</label>
    <input id="input_time1" type="text" style="position:absolute;left:10%;width:20%;height:20px;top:12%;"/>
    <div id="data1" style="position:absolute;left:10%;width:25%;height:20%;top:14%;z-index:2"></div>
    <select id="select1" style="position:absolute;left:32%;width:10%;top:12%;height:20px;"></select>


    <label id="label_time2" style="position:absolute;left:50%;width:7%;top:12%;height:20px;text-align:center;font-size:18px">选择时间2</label>
    <input id="input_time2" type="text" style="position:absolute;left:60%;width:20%;height:20px;top:12%"/>
    <div id="data2" style="position:absolute;left:50%;width:25%;height:20%;top:14%;z-index:2"></div>
    <select id="select2" style="position:absolute;left:82%;width:10%;top:12%;height:20px"></select>

    <input id="button_ok" type="button" value="确定" style="position:absolute;left:80%;width:10%;top:17%;height:4%;"/>

    <label id="label_title" style="position:absolute;left:20%;width:60%;top:25%;height:5%;text-align:center;font-size:30px">历史位移变化趋势</label>
    <label id="label_podao1" style="position:absolute;left:25%;width:21%;top:87%;height:5%;text-align:center;background-color:blue;color:white;font-size:20px">坡道1</label>
    <label id="label_podao2" style="position:absolute;left:46%;width:28%;top:87%;height:5%;text-align:center;background-color:green;color:white;font-size:20px">坡道2</label>
    <label id="label_podao3" style="position:absolute;left:74%;width:21%;top:87%;height:5%;text-align:center;background-color:yellow;color:black;font-size:20px">坡道3</label>
    <label id="label_podao4" style="position:absolute;left:5%;width:5%;top:87%;height:5%;text-align:center;background-color:blue;color:white;font-size:20px">测斜管1</label>
    <label id="label_podao5" style="position:absolute;left:10%;width:5%;top:87%;height:5%;text-align:center;background-color:green;color:white;font-size:20px">测斜管2</label>
    <label id="label_podao6" style="position:absolute;left:15%;width:5%;top:87%;height:5%;text-align:center;background-color:yellow;color:black;font-size:20px">测斜管3</label>
    <label id="label_podao7" style="position:absolute;left:20%;width:5%;top:87%;height:5%;text-align:center;background-color:orangered;color:white;font-size:20px">测斜管4</label>
    </form>
</body>
</html>
<script src="chart/dist/Chart.js"></script>
<script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript">
     
    var button_zhuye = document.getElementById("btn_zhuye");

    var button_baobiao = document.getElementById("btn_baobiao");

    var button_ok=document.getElementById("button_ok");

    var select_1=document.getElementById("select1");
    var select_2=document.getElementById("select2");


    button_zhuye.onclick = function (event) {
        window.open("MainView.aspx", null, null, true);
    }

    button_baobiao.onclick = function (event) {
        window.open("Baobiaotongji.aspx");
    }

    button_ok.onclick=function(event)
    {
        show_chart();
    }

    //xianlan1.min = 2164;
    //  xianlan1.max = 2317;

    //  xianlan2.min = 2558;
    //  xianlan2.max = 2764;

    //  xianlan3.min = 2934;
    //  xianlan3.max = 3074;

    //  xianlan4.min = 602;
    //  xianlan4.max = 636;

    //  xianlan5.min = 742;
    //  xianlan5.max = 774;

    //  xianlan6.min = 875;
    //  xianlan6.max = 907;

    //  xianlan7.min = 994;
    //  xianlan7.max = 1026;

    function init()
    {
        init_date_kongjian_xiala("input_time1","data1","正泰电表1","电力监测1","canvas_device1","input_time1","select1"); // 初始化日期下拉控件1

        init_date_kongjian_xiala("input_time2","data2","正泰电表1","电力监测1","canvas_device1","input_time2","select2"); // 初始化日期下拉控件1

    
        select_1.onchange=function(event)
        {

        }

        select_2.onchange=function(event)
        {

        }

      

    }




    function show_chart()
    {
        var pos_Array = new Array();
        var value1_Array=new Array();   // 这个月
        var value2_Array=new Array();   // 前一个月

        var value3_Array=new Array();   // 前两个月
        var value4_Array=new Array();   // 前三个月
        var value5_Array=new Array();   // 前四个月
        var value6_Array=new Array();   // 前五个月
        var value7_Array=new Array();   // 前六个月
        var value8_Array=new Array();   // 前七个月
        var value9_Array=new Array();   // 前八个月
        var value10_Array=new Array();  // 前九个月
        var value11_Array=new Array();  // 前十个月
        var value12_Array=new Array();  // 前十一个月



        var input1=document.getElementById("input_time1");
        var input2=document.getElementById("input_time2");

        var select1=document.getElementById("select1");
        var select2=document.getElementById("select2");

        var daymonth1= Get_Henggang_String(input1.value.toString(),1)+"_"+Get_Henggang_String(input1.value.toString(),2).padStart(2, '0')+"_"+Get_Henggang_String(input1.value.toString(),3).padStart(2, '0');
        var daymonth2=Get_Henggang_String(input2.value.toString(),1)+"_"+Get_Henggang_String(input2.value.toString(),2).padStart(2, '0')+"_"+Get_Henggang_String(input2.value.toString(),3).padStart(2, '0');



        // 时间点

        $.ajax({
            url: "/mywebserver.asmx/Get_All_Pos",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ }",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i=i+1) {
                    pos_Array.push(json_object[i]);
                }
                
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Day",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{yearmonth:'"+  daymonth1+"',file:'"+select1.value.toString()+"'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i=i+1) {
                    value1_Array.push(json_object[i]);
                }
              //  alert(value1_Array);
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });


        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Day",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{yearmonth:'"+  daymonth2+"',file:'"+select2.value.toString()+"'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i=i+1) {
                    value2_Array.push(json_object[i]);
                }
            //    alert(value2_Array);
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });



        draw_12months_lines(input1.value.toString()+" "+select_1.value.toString(), input2.value.toString()+" "+select_2.value.toString(), "", "", "", "", "", "", "", "", "", "", pos_Array, value1_Array, value2_Array, value3_Array, value4_Array, value5_Array, value6_Array, value7_Array, value8_Array, value9_Array, value10_Array, value11_Array, value12_Array);




    }

    


    // 画一年的曲线
    function draw_yinian()
    {
        var pos_Array = new Array();
        var value1_Array=new Array();   // 这个月
        var value2_Array=new Array();   // 前一个月
        var value3_Array=new Array();   // 前两个月
        var value4_Array=new Array();   // 前三个月
        var value5_Array=new Array();   // 前四个月
        var value6_Array=new Array();   // 前五个月
        var value7_Array=new Array();   // 前六个月
        var value8_Array=new Array();   // 前七个月
        var value9_Array=new Array();   // 前八个月
        var value10_Array=new Array();  // 前九个月
        var value11_Array=new Array();  // 前十个月
        var value12_Array=new Array();  // 前十一个月

        $.ajax({
            url: "/mywebserver.asmx/Get_All_Pos",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ }",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i=i+30) {
                    pos_Array.push(json_object[i]);
                }
                
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });


        // 十二个时间
        var datetime = new Date();
        
        // 十二个时间的字符串
        var time1 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');
        
        datetime.setMonth(datetime.getMonth() - 1);
        var time2 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth() - 1);
        var time3 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth() - 1);
        var time4 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');
        
        datetime.setMonth(datetime.getMonth() - 1);
        var time5 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth() - 1);
        var time6 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth().toString() - 1);
        var time7 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth().toString() - 1);
        var time8 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth().toString() - 1);
        var time9 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth() - 1);
        var time10 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth() - 1);
        var time11 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        datetime.setMonth(datetime.getMonth() - 1);
        var time12 = datetime.getFullYear().toString() + "_" + (datetime.getMonth() + 1).toString().padStart(2, '0');

        // 十二个月的数值

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'"+ time1+"'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 30) {
                    value1_Array.push(json_object[i]);
                }
               
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });



        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time2 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value2_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time3 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value3_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time4 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value4_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time5 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value5_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time6 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value6_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time7 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value7_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time8 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value8_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time9 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value9_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time10 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value10_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });


        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time11 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value11_Array.push(json_object[i]);
                }

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
               alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });

        $.ajax({
            url: "/mywebserver.asmx/Get_AllValue_From_Mouth",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ yearmonth:'" + time12 + "'}",
            async: false,
            success: function (data) {
                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i = i + 20) {
                    value12_Array.push(json_object[i]);
                }


                draw_12months_lines(time1, time2, time3, time4, time5, time6, time7, time8, time9, time10, time11, time12, pos_Array, value1_Array, value2_Array, value3_Array, value4_Array, value5_Array, value6_Array, value7_Array, value8_Array, value9_Array, value10_Array, value11_Array, value12_Array);
            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
               alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });


    }
    var myRadarChart;


    function draw_12months_lines(time1, time2, time3, time4, time5, time6, time7, time8, time9, time10, time11, time12, pos_array, value1_array, value2_array, value3_array, value4_array, value5_array, value6_array, value7_array, value8_array, value9_array, value10_array, value11_array, value12_array)
    {

        try
        {
            myRadarChart.clean();
        }
        catch{}
        var ctx = document.getElementById("mycanvas");
        
        var options = {
            datasetStrokeWidth: 1,
            pointDotStrokeWidth: 0,
            pointDot: false,
            pointDotRadius: 1,
            pointHitDetectionRadius: 1,
            datasetStroke: false,
            bezierCurveTension: 1,
            datasetFill: false,
            bezierCurve: false,
        };

        var data = {
            labels: pos_array,
            datasets: [{
                data: value1_array,
                label:time1+"趋势",
                borderColor: '#0000ff',
                "pointRadius": 1
            },{
            data: value2_array,
            label:time2+"趋势",
            borderColor: '#ff0000',
            "pointRadius": 1
            }
            ]
        }

        myRadarChart = new Chart(ctx, {
            data: data,
            type: 'line',
            options: options,
            title: '近一个月的应变趋势'
        });

    }

    

   // draw_yinian();
    init();



    function init_date_kongjian_xiala(kongjian_name,kongjian_xiala_name,biaoname,chart_name,canvase_name,input_name,select_name)
    {

        var data_kongjian = document.getElementById(kongjian_name);
        var Timenow = new Date();

        data_kongjian.value = Timenow.getFullYear() + "-" + (Timenow.getMonth() + 1).toString() + "-" + Timenow.getDate().toString();

        var data_xiala_kongjian = document.getElementById(kongjian_xiala_name);
        data_xiala_kongjian.innerHTML = "";




        var nowtime = new Date(data_kongjian.value);

        // 点击输入框展开
        data_kongjian.onclick=function(event)
        {

            Riqi_Kongjian_Show_Days(kongjian_name,kongjian_xiala_name,biaoname,chart_name,canvase_name,input_name,select_name)

        }


        data_xiala_kongjian.style.backgroundColor = "white";

        // 年份月份指示
        var label_nianyue = document.createElement("label");
        label_nianyue.style.position = "absolute";
        label_nianyue.style.left = "20%";
        label_nianyue.style.width = "60%";
        label_nianyue.style.top = "1%";
        label_nianyue.style.height = "9%";
        label_nianyue.style.textAlign = "center";
        label_nianyue.style.borderStyle = "solid";
        label_nianyue.textContent = nowtime.getFullYear() + "-" + (nowtime.getMonth()+1);
        data_xiala_kongjian.appendChild(label_nianyue);
        

        data_xiala_kongjian.style.visibility = "hidden";


        $(function()
        {
            $(document).bind("click",function(e)
            {

                var a=$(e.target).closest(("div#")+kongjian_xiala_name).length;
                var b=$(e.target).closest("input").length;
                var c=$(e.target).closest("img#riqi_left").length;
                var d=$(e.target).closest("img#riqi_right").length;
                if(a==0 && b==0 && c==0 && d==0)
                {
                    data_xiala_kongjian.style.visibility = "hidden";
                }
            })
        })
    }

    // 日期控件展示这一个月有多少天
    function Riqi_Kongjian_Show_Days(kongjian_name,kongjian_xiala_name,biaoname,chart_name,canvase_name,input_name,select_name)
    {

        var data_kongjian = document.getElementById(kongjian_name);
        var nowtime;
        try{
            nowtime  = new Date(data_kongjian.value);
        }
        catch{nowtime=new Date();}
        var data_xiala_kongjian = document.getElementById(kongjian_xiala_name);
        data_xiala_kongjian.style.visibility = "visible";

         
        data_xiala_kongjian.innerHTML = "";

        data_xiala_kongjian.style.backgroundColor = "white";

        // 年份月份指示
        var label_nianyue = document.createElement("label");
        label_nianyue.style.position = "absolute";
        label_nianyue.style.left = "20%";
        label_nianyue.style.width = "60%";
        label_nianyue.style.top = "1%";
        label_nianyue.style.height = "9%";
        label_nianyue.style.textAlign = "center";
        label_nianyue.style.borderStyle = "solid";
        label_nianyue.textContent = nowtime.getFullYear() + "-" + (nowtime.getMonth() + 1);
        data_xiala_kongjian.appendChild(label_nianyue);

        // 后退一个月 前进一个月按钮
        var img_back_month=document.createElement("img");
        img_back_month.id="riqi_left";
        img_back_month.style.position="absolute";
        img_back_month.style.left="12%";
        img_back_month.style.width="8%";
        img_back_month.style.top="1%";
        img_back_month.style.height="9%";
        img_back_month.src="../pic/left1.png";
        img_back_month.style.borderStyle="solid";
        data_xiala_kongjian.appendChild(img_back_month);
            
        var img_forward_month=document.createElement("img");
        img_forward_month.id="riqi_right";
        img_forward_month.style.position="absolute";
        img_forward_month.style.left="80%";
        img_forward_month.style.width="8%";
        img_forward_month.style.top="1%";
        img_forward_month.style.height="9%";
        img_forward_month.src="../pic/right1.png";
        img_forward_month.style.borderStyle="solid";
        data_xiala_kongjian.appendChild(img_forward_month);

        // 定义前进一个月和后退一个月按钮的事件

        img_back_month.onclick=function(event)
        {
            try{

                var riqi_input=document.getElementById(input_name);
                var riqi_date=new Date(riqi_input.value);
                riqi_date.setMonth(riqi_date.getMonth()-1);
                riqi_input.value=riqi_date.getFullYear().toString()+"-"+(riqi_date.getMonth()+1).toString();
                Riqi_Kongjian_Show_Days(kongjian_name,kongjian_xiala_name,biaoname,chart_name,canvase_name,input_name,select_name);
                data_xiala_kongjian.style.visibility="visible";
            }
            catch(err){}
        }

        img_forward_month.onclick=function(event)
        {
            try{

                var riqi_input=document.getElementById(input_name);
                var riqi_date=new Date(riqi_input.value);
                riqi_date.setMonth(riqi_date.getMonth()+1);
                riqi_input.value=riqi_date.getFullYear().toString()+"-"+(riqi_date.getMonth()+1).toString();
                Riqi_Kongjian_Show_Days(kongjian_name,kongjian_xiala_name,biaoname,chart_name,canvase_name,input_name,select_name);
                data_xiala_kongjian.style.visibility="visible";
            }
            catch(err){}
        }


        // 星期指示
        // 星期1
        var label_xingqi1 = document.createElement("label");
        label_xingqi1.style.position = "absolute";
        label_xingqi1.style.left = "1%";
        label_xingqi1.style.width = "13%";
        label_xingqi1.style.top = "11%";
        label_xingqi1.style.height = "9%";
        label_xingqi1.style.textAlign = "center";
        label_xingqi1.style.borderStyle = "solid";
        label_xingqi1.textContent = "一";
        data_xiala_kongjian.appendChild(label_xingqi1);

        // 星期2
        var label_xingqi2 = document.createElement("label");
        label_xingqi2.style.position = "absolute";
        label_xingqi2.style.left = "14%";
        label_xingqi2.style.width = "13%";
        label_xingqi2.style.top = "11%";
        label_xingqi2.style.height = "9%";
        label_xingqi2.style.textAlign = "center";
        label_xingqi2.style.borderStyle = "solid";
        label_xingqi2.textContent = "二";
        data_xiala_kongjian.appendChild(label_xingqi2);


        // 星期3
        var label_xingqi3 = document.createElement("label");
        label_xingqi3.style.position = "absolute";
        label_xingqi3.style.left = "27%";
        label_xingqi3.style.width = "13%";
        label_xingqi3.style.top = "11%";
        label_xingqi3.style.height = "9%";
        label_xingqi3.style.textAlign = "center";
        label_xingqi3.style.borderStyle = "solid";
        label_xingqi3.textContent = "三";
        data_xiala_kongjian.appendChild(label_xingqi3);


        // 星期4
        var label_xingqi4 = document.createElement("label");
        label_xingqi4.style.position = "absolute";
        label_xingqi4.style.left = "40%";
        label_xingqi4.style.width = "13%";
        label_xingqi4.style.top = "11%";
        label_xingqi4.style.height = "9%";
        label_xingqi4.style.textAlign = "center";
        label_xingqi4.style.borderStyle = "solid";
        label_xingqi4.textContent = "四";
        data_xiala_kongjian.appendChild(label_xingqi4);

        // 星期5
        var label_xingqi5 = document.createElement("label");
        label_xingqi5.style.position = "absolute";
        label_xingqi5.style.left = "53%";
        label_xingqi5.style.width = "13%";
        label_xingqi5.style.top = "11%";
        label_xingqi5.style.height = "9%";
        label_xingqi5.style.textAlign = "center";
        label_xingqi5.style.borderStyle = "solid";
        label_xingqi5.textContent = "五";
        data_xiala_kongjian.appendChild(label_xingqi5);


        // 星期6
        var label_xingqi6 = document.createElement("label");
        label_xingqi6.style.position = "absolute";
        label_xingqi6.style.left = "66%";
        label_xingqi6.style.width = "13%";
        label_xingqi6.style.top = "11%";
        label_xingqi6.style.height = "9%";
        label_xingqi6.style.textAlign = "center";
        label_xingqi6.style.borderStyle = "solid";
        label_xingqi6.textContent = "六";
        data_xiala_kongjian.appendChild(label_xingqi6);

        // 星期日
        var label_xingqi7 = document.createElement("label");
        label_xingqi7.style.position = "absolute";
        label_xingqi7.style.left = "79%";
        label_xingqi7.style.width = "13%";
        label_xingqi7.style.top = "11%";
        label_xingqi7.style.height = "9%";
        label_xingqi7.style.textAlign = "center";
        label_xingqi7.style.borderStyle = "solid";
        label_xingqi7.textContent = "日";
        data_xiala_kongjian.appendChild(label_xingqi7);


        // 计算这个月有多少天
        var temp_date = new Date(nowtime);
        temp_date.setMonth(temp_date.getMonth() + 1);
        temp_date.setDate(0);

        // 这一个月的天数
        var days = temp_date.getDate();
        var hangshu = 0;

        temp_date.setMonth(temp_date.getMonth() - 1);

        for (var i = 1; i < days; i++) {
            //  temp_date.setMonth(temp_date.getMonth() - 1);
            temp_date.setDate(i);

            var xingqi = temp_date.getDay().toString();

            if (xingqi == 0) xingqi = 7;

            var riqi_label = document.createElement("label");
            riqi_label.style.left = (1 + 13 * (xingqi - 1)).toString() + "%";
            riqi_label.style.width = "13%";
            riqi_label.style.top = (hangshu * 15 + 25).toString() + "%";
            riqi_label.style.height = "15%";
            riqi_label.textContent = i.toString();
            riqi_label.style.position = "absolute";
            riqi_label.style.borderStyle = "solid";
            riqi_label.style.textAlign = "center";
            riqi_label.id=kongjian_name+i.toString();
            riqi_label.onclick=function(event)
            {
                var mylabel= document.getElementById(event.currentTarget.id);
                var riqi= label_nianyue.textContent +"-" + mylabel.textContent;
                data_kongjian.value=riqi;
                data_xiala_kongjian.style.visibility = "hidden";
                Show_data_From_Date_Text(input_name,select_name);
                //  show_dianbiao(biaoname,chart_name , canvase_name ,input_name,select_name,false);
            }
            if (xingqi == 7)
                hangshu++;

            data_xiala_kongjian.appendChild(riqi_label);
            //   alert(xingqi);

        }
    }


    function Show_data_From_Date_Text(input_name,select_name)
    {

        var input_object=document.getElementById(input_name);


        // 得到的结果是data
        $.ajax({
            url: "/mywebserver.asmx/Get_Texts_From_Day_Data",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{data:'" + input_object.value.toString() + "'}",
            success: function (data) {
                // 得到的结果是data
                //alert($.parseJSON(data) );
                var select=document.getElementById(select_name);
                
                select.options.length=0;

                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);
                for (var i = 0; i < json_object.length; i++) {
                    select.add(new Option(json_object[i].toString(),json_object[i].toString()));
                }

                



            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
               
            },
            complete: function (data) {

            }
        });
        
    }

    




    function Get_Henggang_String(scr, index) {
        // 返回下划线第index个量
        try {
            var count = 0;   // 下划线的数量
            var length = scr.length;
            //var char_arraylist = scr.
            for (var i = 0; i < length; i++) {
                if (scr[i] == '-') {
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
                if (scr[i] == '-') {
                    _index[mycount] = i;
                    mycount++;
                }
            }
            for (var i = 0; i < count + 1; i++) {
                var start_index = _index[i] + 1;
                var end_index = _index[i + 1];
                substring[i] = scr.substring(start_index, end_index);
            }
            return substring[index - 1];
        }
        catch (err) { return null; }
    } // 返回空格第index个量

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
                var start_index = _index[i] + 1;
                var end_index = _index[i + 1];
                substring[i] = scr.substring(start_index, end_index);
            }
            return substring[index - 1];
        }
        catch (err) { return null; }
    } // 返回空格第index个量
    
</script>
