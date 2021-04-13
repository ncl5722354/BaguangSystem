<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainView.aspx.cs" Inherits="baguang_new.MainView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>系统主页面</title>
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

        .label_chaxun
        {
            position:absolute;
            left:60%;
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
        .label_online{
            position:absolute;
            left:70%;
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
        .sound_position{
            position:absolute;
            left:65%;
            top:10%;
            width:3%;
            height:45%;
            z-index:2;
        }
        
        
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager>  <!--实现界面的异步更新-->

    <div id="selected_title" class="selectecd_title_div">

        <!--定义声音-->
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


        <!--定义其他东西-->
        <img id="title_bg_img" class="title_img" runat="server" src="~/image/title_bg.png"/>
        <img  id="title_text" class="title_text" runat="server" src="~/image/坝光收费站边坡健康监测系统-文字效果.png"/>
        <input id="btn_zhuye" class="btn_zhuye" runat="server" type="image"  src="~/image/主页.png"/>
        <label id="label_zhuye" class="label_zhuye">主页</label>
        <input id="btn_baobiao" class="btn_baobiao" runat="server" type="image" src="~/image/报表.png"/>
        <label id="label_baobiao" class="label_baobiao">报表</label>
        <input id="btn_password" class="btn_chaxun" runat="server"  type="image" src="~/image/设置.png"/>
        <label id="label_password" class="label_chaxun">设置</label>
        <input  id="btn_qushi" style="position:absolute;left:45%;top:10%;height:45%;width:3%;z-index:2;" type="image" src="image/查询.png"/>
        <label id="label_qushi" style="position:absolute;left:45%;top:65%;height:20%;width:3%;z-index:2;text-align:center;color:white">趋势</label>
        <img  id="icon" class="icon" src="image/LOGO.png"/>
       <img id="sound_on_off" class="sound_position" src="image/Sound_on.png"/>

        <!--异步更新的部分-->
        <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label_Time" CssClass="label_time" runat="server" Text="当前时间" ForeColor="White"></asp:Label>
                <asp:Label ID="Label_Online_is" CssClass="label_online" runat="server" Text="系统离线" ForeColor="White"></asp:Label>
                <asp:Timer ID="Timer_Label" runat="server" Interval="1000"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>

    <div id="main_map" class="main_map">
         <img id="mainmap" class="map_bg" src="image/地图.png"/>
         <!--地图上的七个点-->
         <input id="pos1_button" class="pos1_button" runat="server"  type="image" src="~/image/position.png"/>
         <input id="pos2_button" class="pos2_button" runat="server"   type="image" src="~/image/position.png"/>
         <input id="pos3_button" class="pos3_button" runat="server"   type="image" src="~/image/position.png"/>

        <input id="pos4_button" class="pos4_button" runat="server" type="image" src="~/image/position.png"/> 
        <input id="pos5_button" class="pos5_button" runat="server" type="image" src="~/image/position.png"/>
        <input id="pos6_button" class="pos6_button" runat="server" type="image"  src="~/image/position.png"/>
        <input id="pos7_button" class="pos7_button" runat="server" type="image" src="~/image/position.png" />

        <label id="label_baojing" style="position:absolute;left:1%;top:20%;width:4%;height:4%;z-index:3;background-color:red;color:white;">报警</label>
         <label id="label_zhengchang" style="position:absolute;left:1%;top:40%;width:4%;height:4%;z-index:3;background-color:orange;color:white;">正常</label>
        <label id="label_lianghao" style="position:absolute;left:1%;top:60%;width:4%;height:4%;z-index:3;background-color:lightgreen;color:white;">良好</label>
        <label id="label_jihao" style="position:absolute;left:1%;top:80%;width:4%;height:4%;z-index:3;background-color:blue;color:white;">极好</label>
        
        <label id="label_biaochi" style="position:absolute;left:0%;top:10%;height:4%;width:10%;z-index:2;background-color:blue;color:white;text-align:center;border-color:black;border-style:solid;border-width:thick">标尺</label>
        <asp:Panel ID="biaochi_panel" CssClass="biaochi_panel" runat="server" BackColor="Gray" BorderStyle="Solid" BorderWidth="2" BorderColor="Black"></asp:Panel>
        
        <label id="label_pos1"  style="position:absolute;left:28%;top:20%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">1号坡道</label>
        <label id="label_pos2"  style="position:absolute;left:57%;top:15%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">2号坡道</label>
        <label id="label_pos3"  style="position:absolute;left:66%;top:35%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">3号坡道</label>
        <label id="label_pos4"  style="position:absolute;left:15%;top:55%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">1号测斜管</label>
        <label id="label_pos5"  style="position:absolute;left:35%;top:55%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">2号测斜管</label>
        <label id="label_pos6"  style="position:absolute;left:50%;top:55%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">3号测斜管</label>
        <label id="label_pos7"  style="position:absolute;left:75%;top:55%;width:10%;height:5%;z-index:2;background-color:blue;color:white;text-align:center;border-style:solid;border-width:medium;border-color:black;">4号测斜管</label>
        <!--异步更新的部分-->
        <asp:UpdatePanel ID="updatepanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Panel ID = "circle1" runat="server" CssClass="circle1" BackColor="Orange"></asp:Panel>
                <asp:Panel ID = "circle2" runat="server" CssClass="circle2" BackColor="Orange"></asp:Panel>
                <asp:Panel ID = "circle3" runat="server" CssClass="circle3" BackColor="Orange"></asp:Panel>
                <asp:Panel ID = "circle4" runat="server" CssClass="circle4" BackColor="Orange"></asp:Panel>
                <asp:Panel ID = "circle5" runat="server" CssClass="circle5" BackColor="Orange"></asp:Panel>
                <asp:Panel ID = "circle6" runat="server" CssClass="circle6" BackColor="Orange"></asp:Panel>
                <asp:Panel ID = "circle7" runat="server" CssClass="circle7" BackColor="Orange"></asp:Panel>
                <asp:Timer ID="Timer2" runat="server" Interval="1000"></asp:Timer>
                <!--用来显示当前的位置和报警程度-->
                
            </ContentTemplate>
        </asp:UpdatePanel>

        <iframe
          src="https://open.ys7.com/ezopen/h5/iframe?url=ezopen://open.ys7.com/F54508596/1.live&autoplay=1&accessToken=at.2lsxt9dfdhq719it5onvjg3r6f53y0ck-4jmoj1ddff-0gdn928-nw1jeste5"
  width="600"
  height="400"
  id="ysOpenDevice"
          style="top:3%;left:70%;width:29%;height:30%;position:absolute;z-index:3"
        >
        </iframe>

    </div>
    </form>
</body>
</html>
<script src="jsgrid/external/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript">
    <!--两个颜色之间要分五个颜色作标记-->


    // 跟声音有关的变量与函数

    //
    
   //
    var is_sound = true;
    var podao1_warning_is = false;
    var podao2_warning_is = false;
    var podao3_warning_is = false;
    var guan1_warning_is = false;
    var guan2_warning_is = false;
    var guan3_warning_is = false;
    var guan4_warning_is = false;

   // var player = document.getElementById('ysOpenDevice').contentWindow;
   // player.postMessage("play", "https://open.ys7.com/ezopen/h5/iframe") /* 播放 */

    function playpo1() {

        var audio = document.getElementById("po1");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();

    }

    function playpo2() {
        var audio = document.getElementById("po2");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }


    function playpo3() {
        var audio = document.getElementById("po3");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }

    function playguan1() {
        var audio = document.getElementById("guan1");
        if (is_sound == false)
            audio.volume = 0;
        if (is_sound == true)
            audio.volume = 1;
        audio.play();
    }

    function playguan2() {
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

    var index = 0;


    var button_sound = document.getElementById("sound_on_off");


    button_sound.onclick=function(event)
    {
        if(is_sound==false)
        {
            is_sound = true;
            button_sound.src = "/image/Sound_on.png";
        }
        else
        {
            is_sound = false;
            button_sound.src = "/image/Sound_off.png";
        }
    }

    function label_qushi(label,posname,qushi)
    {
        var qushi_num = new Number(qushi);

        if (qushi <= 0.3)
            label.textContent = posname + " 月变化:" + qushi_num.toFixed(3).toString() + " 变化平稳";
        else if(qushi>0.3 && qushi<0.9)
            label.textContent = posname + " 月变化:" + qushi_num.toFixed(3).toString() + " 变化明显";
        else if(qushi>0.9)
            label.textContent = posname + " 月变化:" + qushi_num.toFixed(3).toString() + " 变化过大";
    }

    function clock1() {

        var circle1 = document.getElementById("circle1");
        var circle2 = document.getElementById("circle2");
        var circle3 = document.getElementById("circle3");
        var circle4 = document.getElementById("circle4");
        var circle5 = document.getElementById("circle5");
        var circle6 = document.getElementById("circle6");
        var circle7 = document.getElementById("circle7");



        var label1 = document.getElementById("label_pos1");
        var label2 = document.getElementById("label_pos2");
        var label3 = document.getElementById("label_pos3");
        var label4 = document.getElementById("label_pos4");
        var label5 = document.getElementById("label_pos5");
        var label6 = document.getElementById("label_pos6");
        var label7 = document.getElementById("label_pos7");

        
        $.ajax({
            url: "/mywebserver.asmx/Get_Change_Qushi_One_Month",
            type: "Post",
            dataType: "text",
            contentType: "application/json; charset=utf-8",
            data: "{ }",
            async: false,
            success: function (data) {
                //var sub_string = data.substr(5, data.length - 6);
                //json_object = JSON.parse(sub_string);
                //for (var i = 0; i < json_object.length; i++) {
                //    pos_Array.push(json_object[i]);
                //}

                var sub_string = data.substr(5, data.length - 6);
                json_object = JSON.parse(sub_string);


                label_qushi(label1, json_object[0].posname, json_object[0].qushi);
                label_qushi(label2, json_object[1].posname, json_object[1].qushi);
                label_qushi(label3, json_object[2].posname, json_object[2].qushi);
                label_qushi(label4, json_object[3].posname, json_object[3].qushi);
                label_qushi(label5, json_object[4].posname, json_object[4].qushi);
                label_qushi(label6, json_object[5].posname, json_object[5].qushi);

                label_qushi(label7, json_object[6].posname, json_object[6].qushi);
                //label1.textContent = json_object[0].poname + " 日变化:" + json_object[0].qushi;
                //label2.textContent = json_object[1].poname + " 日变化:" + json_object[1].qushi;
                //label3.textContent = json_object[2].poname + " 日变化:" + json_object[2].qushi;
                //label4.textContent = json_object[3].poname + " 日变化:" + json_object[3].qushi;
                //label5.textContent = json_object[4].poname + " 日变化:" + json_object[4].qushi;


                // 1号坡道
                //var label1 = json_object[0].posname;
                //var bianhua1 = json_object[0].qushi;


                // 2号坡道
                //var label2 = json_object[1].posname;
                //var bianhua2 = json_object[1].qushi;


                // 3号坡道
                //var label3 = json_object[2].posname;
                //var bianhua3 = json_object[2].qushi;


                // 4号坡道
                //var label4 = json_object[1].posname;
                //var bianhua4 = json_object[1].qushi;

            },
            error: function (data) {
                //200的响应也有可能被认定为error，responseText中没有Message部分
                alert($.parseJSON(data.responseText).Message);
            },
            complete: function (data) {

            }
        });










        if (index == 0) {
            //var po1 = document.getElementById("Label_title_podao1");
            if ((circle1.style.backgroundColor=="rgb(255, 0, 0)")) {
                playpo1();
               // label1.textContent = "1号坡道\n趋势过大";
                if (podao1_warning_is == true) {
                    podao1_warning_is = false;
                   
                    // 加入信息
                }
                else
                {
                   
                }
            }
            else {
                podao1_warning_is = true;
              //  label1.textContent = "1号坡道\n趋势平稳";
            }
            index++;
        }

        else if (index == 1) {
           //var po2 = document.getElementById("Label_title_podao2");
            if (circle2.style.backgroundColor == "rgb(255, 0, 0)") {
                playpo2();
              //  label2.textContent = "2号坡道\n趋势过大";
                if (podao2_warning_is == true) {
                    podao2_warning_is = false;

                    // 加入信息
                    
                }
                else
                {
                   
                }
            }
            else {
                podao2_warning_is = true;
             //   label2.textContent = "2号坡道\n趋势平稳";
            }
            index++;
        }
        else if (index == 2) {
           // var po1 = document.getElementById("Label_title_podao3");
            if (circle3.style.backgroundColor == "rgb(255, 0, 0)") {
                playpo3();
                if (podao3_warning_is == true) {
                    podao3_warning_is = false;
                //    label3.textContent = "3号坡道/n趋势过大";
                    // 加入信息
                }
                else
                {
                    
                }
            }
            else {
                podao3_warning_is = true;
               //  label3.textContent = "3号坡道\n趋势平稳";
            }
            index++;
        }

        else if (index == 3) {
            //var po1 = document.getElementById("Label_title_podao4");
            if (circle4.style.backgroundColor == "rgb(255, 0, 0)") {
                playguan1();
               // label4.textContent = "1号测斜管\n趋势过大";
                if (guan1_warning_is == true) {
                    guan1_warning_is = false;

                    // 加入信息
                   
                }
            }
            else {
                guan1_warning_is = true;
              //  label4.textContent = "1号测斜管\n趋势平稳";
            }
            index++;
        }

        else if (index == 4) {
          // var po1 = document.getElementById("Label_title_podao5");
            if (circle5.style.backgroundColor == "rgb(255, 0, 0)") {
                playguan2();
               // label5.textContent = "2号测斜管\n趋势过大";
                if (guan2_warning_is == true) {
                    guan2_warning_is = false;

                    // 加入信息
                }
            }
            else {
                guan2_warning_is = true;
              //  label5.textContent = "2号测斜管\n趋势平稳";
            }
            index++;
        }

        else if (index == 5) {
           // var po1 = document.getElementById("Label_title_podao6");
            if (circle6.style.backgroundColor == "rgb(255, 0, 0)") {
                playguan3();
              //  label6.textContent = "3号测斜管\n趋势过大";
                if (guan3_warning_is == true) {
                    guan3_warning_is = false;

                    // 加入信息
                }
            }
            else {
                guan3_warning_is = true;
              //  label6.textContent = "3号测斜管\n趋势平稳";
            }
            index++;
        }
        else if (index >= 6) {
           // var po1 = document.getElementById("Label_title_podao7");
            if (circle7.style.backgroundColor == "rgb(255, 0, 0)") {
                playguan4();
              //  label7.textContent = "4号测斜管\n趋势过大";
                if (guan4_warning_is == true) {
                    guan4_warning_is = false;

                    // 加入信息


                }
            }
            else {
                guan4_warning_is = true;
              //   label7.textContent = "4号测斜管\n趋势平稳";
            }
            index = 0;
        }



        // 
        


        
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

    var btn_baobiao = document.getElementById("btn_baobiao");


    var btn_qushi = document.getElementById("btn_qushi");
    btn_qushi.onclick = function (event) {
        window.open("Show_bianhua_yuefen.aspx");
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

    init_view();
    
 
    // 初始化方法

    function  init_view()
    {
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


        // 获得user
        try{
            var userright = getCookie("user");
           // alert(userright);
        }
        catch(error)
        {
            //alert(error);
        }
        if(userright=="admin")
        {
            var btn_password = document.getElementById("btn_password");
            btn_password.onclick = function (event) {
                window.open("userpassword.aspx");
            }
            
        }
        else
        {
            var btn_password = document.getElementById("btn_password");
            
            btn_password.style.visibility = "hidden";
            var label_password = document.getElementById("label_password");
            label_password.style.visibility = "hidden";
        }
    }

    

    pos1_button.onmouseenter=function(event)
    {
        // 一号点的鼠标进入事件
        mouse_in_point(document.getElementById("circle1"), "1号坡");
    }

    pos1_button.onmouseout=function(event)
    {
        // 一号点的鼠标离开事件
        mouse_out_point();
    }

    pos1_button.onclick=function(event)
    {
        window.open("submap1.aspx")
    }

    pos2_button.onclick=function(event)
    {
        window.open("submap2.aspx");
    }

    pos3_button.onclick=function(event)
    {
        window.open("submap3.aspx");
    }

    pos2_button.onmouseenter=function(event)
    {
        mouse_in_point(document.getElementById("circle2"), "2号坡");
    }

    pos2_button.onmouseout=function(event)
    {
        mouse_out_point();
    }

    pos3_button.onmouseenter=function(event)
    {
        mouse_in_point(document.getElementById("circle3"), "3号坡");
    }

    pos3_button.onmouseout=function(event)
    {
        mouse_out_point();
    }


    pos4_button.onclick=function(event)
    {
        window.open("zhizhuangaspx.aspx");
    }

    pos5_button.onclick=function(event)
    {
        window.open("zhizhuangaspx.aspx");
    }

    pos6_button.onclick=function(event)
    {
        window.open("zhizhuangaspx.aspx");
    }

    pos7_button.onclick=function(event)
    {
        window.open("zhizhuangaspx.aspx");
    }

    pos4_button.onmouseenter=function(event)
    {
        mouse_in_point(document.getElementById("circle4"),"1号测斜管");
    }
   
    pos4_button.onmouseout=function(event)
    {
        mouse_out_point();
    }

    pos5_button.onmouseenter=function(event)
    {
        mouse_in_point(document.getElementById("circle5"),"2号测斜管");
    }

    pos5_button.onmouseout=function(event)
    {
        mouse_out_point();
    }

    pos6_button.onmouseenter=function(event)
    {
        mouse_in_point(document.getElementById("circle6"), "3号测斜管");
    }

    pos6_button.onmouseout=function(event)
    {
        mouse_out_point();
    }

    pos7_button.onmouseenter=function(event)
    {
        mouse_in_point(document.getElementById("circle7"), "4号测斜管");
    }

    pos7_button.onmouseout=function(event)
    {
        mouse_out_point();
    }

    btn_baobiao.onclick=function(event)
    {
        window.open("Baobiaotongji.aspx");
    }
    
    function mouse_in_point(point,point_name)
    {
        //alert(point);
        var color = point.style.backgroundColor;
        var mycolor = color.toString();

        label_biaochi.style.backgroundColor = color;
        
        if(mycolor=='rgb(0, 0, 255)')      // 要注意这里有空格！！！！！
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
            label_biaochi.textContent=point_name+":极好";
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

    function mouse_out_point()
    {
      
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

    


 </script>
