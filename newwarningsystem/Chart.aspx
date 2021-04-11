<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="newwarningsystem.Chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="datapicket/css/datepicker.css">
    <title>各种时间和日期选择器 可以指定具体月份或者某天等</title>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
    <style type="text/css">
        body {
            font-family: 'Roboto Condensed';
            background: #fafafa;
        }
        .p20 {
            padding: 20px;
        }

        .mt20 {
            margin-top: 20px;
        }

        .mt40 {
            position:absolute;
            top: 20%;
            margin-left:5%;
           
        }

        .mt10 {
            margin-top: 10px;
        }

        .hide {
            display: none;
        }

        body {
            height: 1000px;
        }

        .c999 {
            color: #999;
            font-size: 12px;
        }
        .Panel_gongneng {
            position: absolute;
            top: 61%;
            left: 81%;
            width: 19%;
            height: 38%;
            z-index: 10;
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
        .auto-style86 {
            position: absolute;
            top: 0px;
            left: 20px;
            width: 6%;
            z-index: 4;
            height:10%;
        }
        .auto-style12 {
            position: absolute;
            top: 0%;
            left: 1%;
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
            height: 10%;
        }
        .auto-style14 {
            position: absolute;
            top: 6%;
            left: 70%;
            z-index: 4;
            width: 20%;
            height: 5%;
        }
        .bg{
            position: absolute;
            z-index:1;
        }
        .zongchar{
            position: absolute;
            top:15%;
            left:20px;
            width:1920px;
            z-index:5;
            height:1080px;
        }
        .fenchar{
            position: absolute;
            top:60%;
            left:20px;
            z-index:5;
            width:1920px;
            height:1080px;
        }
        .Button1{
            position: absolute;
            top:55%;
            left:10%;
            z-index:6;
            width:5%;
            height:5%;
        } 
        .Button2{
            position: absolute;
            top:55%;
            left:18%;
            z-index:6;
            width:5%;
            height:5%;
        }     
        .Button3{
            position: absolute;
            top:55%;
            left:26%;
            z-index:6;
            width:5%;
            height:5%;
        }     
        .Button4{
            position: absolute;
            top:55%;
            left:34%;
            z-index:6;
            width:5%;
            height:5%;
        } 
        .Button5{
            position: absolute;
            top:55%;
            left:42%;
            z-index:6;
            width:5%;
            height:5%;
        } 
        .Button6{
            position: absolute;
            top:55%;
            left:50%;
            z-index:6;
            width:5%;
            height:5%;
        }  
        .Button7{
            position: absolute;
            top:55%;
            left:58%;
            z-index:6;
            width:5%;
            height:5%;
        }     
        .Image_home1
        {
            position:absolute;
            top:0%;
            left:90%;
            width:30px;
            height:30px;
            z-index:11;
        }
        .Label_line1
        {
            position:absolute;
            top:15%;
            left:75%;
            width:20%;
            height:5%;
            z-index:18;
            text-align:center;
        }
        .Panel_line1{
            position:absolute;
            top:20%;
            left:72%;
            width:27%;
            height:35%;
            z-index:11;
            text-align:center;
        }
        .Label_line2
        {
            position:absolute;
            top:55%;
            left:75%;
            width:20%;
            height:5%;
            z-index:11;
            text-align:center;
        }
        .Panel_line2{
            position:absolute;
            top:59%;
            left:72%;
            width:27%;
            height:35%;
            z-index:11;
            text-align:center;
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
        .btnPrint
        {
            position:absolute;
            top:10%;
            left:78%;
            width:10%;
            height:3%;
            z-index:11;
            text-align:center;
        }
        .calender1{
            position:absolute;
        }
        .calender2{
            position:absolute;
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
        .panel_datatime
        {
            position:absolute;
            top:15%;
            left:81%;
            width:19%;
            height:38%;
            z-index:15;
        }
        .Label_datetime_pick1
        {
            position:absolute;
            top:1%;
            left:10%;
            width:90%;
            height:20%;
            z-index:16;
        }
        .Label_datetime_pick2
        {
            position:absolute;
            top:45%;
            left:10%;
            width:90%;
            height:20%;
            z-index:7;
        }
        .Label_time_xuanze1
        {
            position:absolute;
            top:20%;
            left:10%;
            width:30%;
            height:10%;
            z-index:7;
            text-align:center;
        }

        .Label_time_xuanze1_month
        {
            position:absolute;
            top:20%;
            left:40%;
            width:30%;
            height:10%;
            z-index:7;
           text-align:center;
        }
        .Label_time_xuanze1_day
        {
            position:absolute;
            top:20%;
            left:70%;
            width:30%;
            height:10%;
            z-index:7;
           text-align:center;
        }
        .Label_time_xuanze2
        {
            position:absolute;
            top:60%;
            left:10%;
            width:30%;
            height:10%;
            z-index:7;
           text-align:center;
        }
         .Label_time_xuanze2_month
        {
            position:absolute;
            top:60%;
            left:40%;
            width:30%;
            height:10%;
            z-index:7;
            text-align:center;
        }
        .Label_time_xuanze2_day
        {
            position:absolute;
            top:60%;
            left:70%;
            width:30%;
            height:10%;
            z-index:7;
           text-align:center;
        }
        .button_time1_year_add
        {
            position:absolute;
            top:10%;
            left:18%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
        .button_time1_year_min
        {
             position:absolute;
            top:33%;
            left:18%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
        .button_time1_min_add
        {
            position:absolute;
            top:10%;
            left:50%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
        .button_time1_min_min
        {
            position:absolute;
            top:33%;
            left:50%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
       .button_time1_day_add
       {
            position:absolute;
            top:10%;
            left:80%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
       } 
       .button_time1_day_min
       {
           position:absolute;
            top:33%;
            left:80%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
       }




       .button_time2_year_add
        {
            position:absolute;
            top:52%;
            left:18%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
        .button_time2_year_min
        {
             position:absolute;
            top:75%;
            left:18%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
        .button_time2_min_add
        {
            position:absolute;
            top:52%;
            left:50%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
        .button_time2_min_min
        {
            position:absolute;
            top:75%;
            left:50%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
        }
       .button_time2_day_add
       {
            position:absolute;
            top:52%;
            left:80%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
       } 
       .button_time2_day_min
       {
           position:absolute;
            top:75%;
            left:80%;
            width:10%;
            height:6%;
            z-index:7;
            text-align:center;
       }
       .button_time_ok
       {
            position:absolute;
            top:88%;
            left:60%;
            width:33%;
            height:10%;
            z-index:7;
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

        .auto-style88 {
            position: absolute;
            top: 1%;
            left: 55%;
            width: 3%;
            z-index: 9;
            height: 5%;
            right: 356px;
        }
        .mybutton_ok{
            position:absolute;
            top:20%;
            left:400px;
            width:80px;
            height:30px;
            z-index:20;
        }
        .mybutton_ok1{
            position:absolute;
            top:20%;
            left:500px;
            width:80px;
            height:30px;
            z-index:20;
        }

        .mybutton_ok2{
            position:absolute;
            top:20%;
            left:600px;
            width:80px;
            height:30px;
            z-index:20;
        }
        .mybutton_ok3{
            position:absolute;
            top:20%;
            left:700px;
            width:80px;
            height:30px;
            z-index:20;
        }
        .mybutton_ok4{
            position:absolute;
            top:20%;
            left:800px;
            width:80px;
            height:30px;
            z-index:20;
        }
        .mybutton_ok5{
            position:absolute;
            top:20%;
            left:900px;
            width:80px;
            height:30px;
            z-index:20;
        }

        .mybutton_ok6{
            position:absolute;
            top:20%;
            left:1000px;
            width:80px;
            height:30px;
            z-index:20;
        }

        .MyChart{
             position: absolute;
            top: 30%;
            left: 10%;
            z-index: 14;
            width: 80%;
            height: 50%;

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

         .canvas1
         {
             position: absolute;
            top: 0%;
            left: 0%;
            z-index: 14;
            width: 100%;
            height: 100%;
            
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

         .qianjin{
             position:absolute;
             top:10%;
             left:35%;
             z-index:15;
             width:10%;
             height:3%;
             visibility:hidden;
         }
         .houtui{
             position:absolute;
             top:10%;
             left:25%;
             z-index:15;
             width:10%;
             height:3%;
             visibility:hidden;
         }
         .fuwei{
             position:absolute;
             top:50%;
             left:25%;
             z-index:15;
             width:5%;
             height:4%;
             visibility:hidden;
         }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">

      
            
    <div id="main_demo">

        <div class="p20 container">
            
            <input id="btn_ok" type="button" name="btn_ok" value="坡道1" class="mybutton_ok" />
             <input id="btn_ok1" type="button" name="btn_ok" value="坡道2" class="mybutton_ok1" />
            <input id="btn_ok2" type="button" name="btn_ok" value="坡道3" class="mybutton_ok2" />
            <input id="btn_ok3" type="button" name="btn_ok" value="测斜管1" class="mybutton_ok3" />
             <input id="btn_ok4" type="button" name="btn_ok" value="测斜管2" class="mybutton_ok4" />
            <input id="btn_ok5" type="button" name="btn_ok" value="测斜管3" class="mybutton_ok5" />
            <input id="btn_ok6" type="button" name="btn_ok" value="测斜管4" class="mybutton_ok6" />
            <div class="mt40">
                
                <div>选择比较日期</div>
                <div class="c-datepicker-date-editor  J-datepicker-range-day mt10">
                    <i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
                    <input id="start_data" placeholder="Start" name="start_data" class="c-datepicker-data-input only-date" value=""/>
                    <span class="c-datepicker-range-separator">-</span>
                    <input id="end_data" placeholder="End" name="end_data" class="c-datepicker-data-input only-date" value=""/>
                    
                </div>
            </div>
        </div>
    </div>
            

           




            

        
    


         <asp:ImageButton ID="ImageButton_zhuye" CssClass="ImageButton_zhuye" runat="server" ImageUrl="~/Resource/主页.png" OnClick="ImageButton_zhuye_Click" />
        <input id="btn_close" class="closelabel_hiden" type="button" aria-expanded="false" aria-grabbed="false" value="关闭"/>
        <input id="btn_qianjin" class="qianjin" type="button" value="前进" />
        <input id="btn_houtui"  class="houtui" type="button" value="后退"/>
        <input  id="btn_fuwei" class="fuwei" type="button" value="复位"/>
        
        
        <asp:ImageButton ID="ImageButton_baobiao" CssClass="auto-style88"  runat="server" ImageUrl="~/Resource/报表.png" OnClick="ImageButton_baobiao_Click" />
        
        
        
        <asp:ImageButton ID="ImageButton_chaxun" CssClass="ImageButton_chaxun" runat="server" ImageUrl="~/Resource/查询.png" OnClick="ImageButton_chaxun_Click" />

        <asp:Label ID="Label_zhuye" CssClass="Label_zhuye" runat="server" Text="主页" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        <asp:Label ID="Label_baobiao" CssClass="Label_baobiao" runat="server" Text="报表" Font-Names="微软雅黑" Font-Size="10pt" ForeColor="White"></asp:Label>
        
        
        <asp:Label ID="Label_chaxun" CssClass="Label_chaxun" runat="server" Text="查询" Font-Names="微软雅黑" ForeColor="White" Font-Size="10pt"></asp:Label>
        
        <asp:Image ID="Image_title_name" CssClass="Image_title_name" runat="server" ImageUrl="~/Resource/坝光收费站边坡健康监测系统-文字效果.png" />
        
        <asp:Image ID="Image_icon" CssClass="auto-style86" runat="server"  ImageUrl="~/Resource/LOGO.png" />
        <asp:Image ID="Image_title" CssClass="auto-style12" runat="server"  ImageUrl="~/Resource/上侧背景条1.png"  />
        
         <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager><!--必须包含这个控件，否则UpdatePanel无法使用-->  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">  
                <ContentTemplate> 
            <!--Lable和Timer控件必须都包含在UpdatePanel控件中 -->  
                        <asp:Label ID="Label_timer" CssClass="auto-style14" runat="server" Text="Label" Font-Names="微软雅黑" ForeColor="White"></asp:Label>  <!--用于显示时间-->  
                        <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->  
                   
                   </ContentTemplate>
            </asp:UpdatePanel>
        

        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional" >  
           </asp:UpdatePanel>
        
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
            </asp:UpdatePanel>

        <asp:HiddenField ID="HiddenField_start" runat="server" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenField_end" runat="server" />

        <asp:Image ID="Image_time" CssClass="auto-style13" runat="server" BackColor="#0066FF" />
        <asp:Button ID="btnPrint" runat="server" CssClass="btnPrint" Text="打印" OnClientClick="return PrintArticle();" />
        <asp:Menu ID="Menu1" CssClass="Menu1"  runat="server" BackColor="#000099" ForeColor="#33CCCC" Font-Names="微软雅黑" Orientation="Horizontal" BorderColor="Black" BorderStyle="Solid" Visible="False">
            <Items>
                <asp:MenuItem Text="主页" Value="曲线与查询" NavigateUrl="~/MainMap.aspx"></asp:MenuItem>
                <asp:MenuItem Text="报表" Value="报表" NavigateUrl="~/report.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
       
       <div id="chart_wrapper" class="MyChart" runat="server">
          <asp:Panel ID="panel1" CssClass="canvas2" BackColor="White" runat="server"></asp:Panel>
           <canvas id="myChart" class="canvas1" runat="server"></canvas>
       </div>
        
    </div>
    </form>
    <script src="chart/dist/Chart.js"></script>
   <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="datapicket/js/datepicker.all.js"></script>
    <script src="datapicket/js/datepicker.en.js"></script>
   

   
    <script type="text/javascript">
       

        var chaxun_position = new Array();
        var chaxun_weiyi1 = new Array();
        var chauxn_weiyi2 = new Array();

        $(function () {
            $('.J-datepicker-time').datePicker({
                format: 'HH:mm:ss',
                min: '04:23:11'
            });
            $('.J-datepicker-time-range').datePicker({
                format: 'HH:mm:ss',
                isRange: true,
                min: '04:23:11',
                max: '20:59:59'
            });

            var DATAPICKERAPI = {
                activeMonthRange: function () {
                    //alert(1);
                    return {
                        begin: moment().set({ 'date': 1, 'hour': 0, 'minute': 0, 'second': 0 }).format('YYYY-MM-DD HH:mm:ss'),
                        end: moment().set({ 'hour': 23, 'minute': 59, 'second': 59 }).format('YYYY-MM-DD HH:mm:ss')
                    }
                },
                shortcutMonth: function () {
                    //alert(2);
                    var nowDay = moment().get('date');
                    var prevMonthFirstDay = moment().subtract(1, 'months').set({ 'date': 1 });
                    var prevMonthDay = moment().diff(prevMonthFirstDay, 'days');
                    return {
                        now: '-' + nowDay + ',0',
                        prev: '-' + prevMonthDay + ',-' + nowDay
                    }
                },
                shortcutPrevHours: function (hour) {
                    //alert(3);
                    var nowDay = moment().get('date');
                    var prevHours = moment().subtract(hour, 'hours');
                    var prevDate = prevHours.get('date') - nowDay;
                    var nowTime = moment().format('HH:mm:ss');
                    var prevTime = prevHours.format('HH:mm:ss');
                    return {
                        day: prevDate + ',0',
                        time: prevTime + ',' + nowTime,
                        name: 'Nearly ' + hour + ' Hours'
                    }
                },
                rangeMonthShortcutOption1: function () {
                    //alert(4);
                    var result = DATAPICKERAPI.shortcutMonth();
                    var resultTime = DATAPICKERAPI.shortcutPrevHours(18);
                    return [{
                        name: 'Yesterday',
                        day: '-1,-1',
                        time: '00:00:00,23:59:59'
                    }, {
                        name: 'This Month',
                        day: result.now,
                        time: '00:00:00,'
                    }, {
                        name: 'Lasy Month',
                        day: result.prev,
                        time: '00:00:00,23:59:59'
                    }, {
                        name: resultTime.name,
                        day: resultTime.day,
                        time: resultTime.time
                    }];
                },
                rangeShortcutOption1: [{
                    name: 'Last week',
                    day: '-7,0'
                }, {
                    name: 'Last Month',
                    day: '-30,0'
                }, {
                    name: 'Last Three Months',
                    day: '-90, 0'
                }],
                singleShortcutOptions1: [{
                    name: 'Today',
                    day: '0',
                    time: '00:00:00'
                }, {
                    name: 'Yesterday',
                    day: '-1',
                    time: '00:00:00'
                }, {
                    name: 'One Week Ago',
                    day: '-7'
                }]
            };
            $('.J-datepicker').datePicker({
                hasShortcut: true,
                min: '2018-01-01 04:00:00',
                max: '2029-10-29 20:59:59',
                shortcutOptions: [{
                    name: 'Today',
                    day: '0'
                }, {
                    name: 'Yesterday',
                    day: '-1',
                    time: '00:00:00'
                }, {
                    name: 'One Week Ago',
                    day: '-7'
                }],
                hide: function () {
                   // alert(1);
                    console.info(this)
                }
            });


            $('.J-datepicker-day').datePicker({
                hasShortcut: true,
                shortcutOptions: [{
                    name: 'Today',
                    day: '0'
                }, {
                    name: 'Yesterday',
                    day: '-1'
                }, {
                    name: 'One week ago',
                    day: '-7'
                }]
            });


            $('.J-datepicker-range-day').datePicker({
                hasShortcut: true,
                format: 'YYYY-MM-DD',
                isRange: true,
                shortcutOptions: DATAPICKERAPI.rangeShortcutOption1
            });


            $('.J-datepickerTime-single').datePicker({
                format: 'YYYY-MM-DD HH:mm'
            });


            $('.J-datepickerTime-range').datePicker({
                format: 'YYYY-MM-DD HH:mm',
                isRange: true
            });


            $('.J-datepicker-range').datePicker({
                hasShortcut: true,
                min: '2018-01-01 06:00:00',
                max: '2029-04-29 20:59:59',
                isRange: true,
                shortcutOptions: [{
                    name: 'Yesterday',
                    day: '-1,-1',
                    time: '00:00:00,23:59:59'
                }, {
                    name: 'Last Week',
                    day: '-7,0',
                    time: '00:00:00,'
                }, {
                    name: 'Last Month',
                    day: '-30,0',
                    time: '00:00:00,'
                }, {
                    name: 'Last Three Months',
                    day: '-90, 0',
                    time: '00:00:00,'
                }],
                hide: function (type) {
                    alert(2);
                    console.info(this.$input.eq(0).val(), this.$input.eq(1).val());
                    console.info('Type:', type)
                }
            });
            $('.J-datepicker-range-betweenMonth').datePicker({
                isRange: true,
                between: 'month',
                hasShortcut: true,
                shortcutOptions: DATAPICKERAPI.rangeMonthShortcutOption1()
            });


            $('.J-datepicker-range-between30').datePicker({
                isRange: true,
                between: 30
            });

            $('.J-yearMonthPicker-single').datePicker({
                format: 'YYYY-MM',
                min: '2018-01',
                max: '2029-04',
                hide: function (type) {
                    //alert(3);
                    console.info(this.$input.eq(0).val());
                }
            });

            $('.J-yearPicker-single').datePicker({
                format: 'YYYY',
                min: '2018',
                max: '2029'
            });


        });
       // alert(4);
       // alert(1);
        var button_ok = document.getElementById("btn_ok");
        var button_ok1 = document.getElementById("btn_ok1");
        var button_ok2 = document.getElementById("btn_ok2");
        var button_ok3 = document.getElementById("btn_ok3");
        var button_ok4 = document.getElementById("btn_ok4");
        var button_ok5 = document.getElementById("btn_ok5");
        var button_ok6 = document.getElementById("btn_ok6");

        var start_data = document.getElementById("start_data");
        var end_data = document.getElementById("end_data");
        //alert(2);
        // 日期的问题
        // 前端的技术


        function TestAjaxParam(position_start, position_end, data_start, data_end) {
            $.ajax({
                type: "POST",
                url: "Chart.aspx/Return_Position_Value",
                async: false,
                data: '{"start_position":' + position_start.toString() + ',"end_position":' + position_end.toString() + ',"start_data":' + data_start.toString() + ',"end_data":' + data_end.toString() + '}',
                //  data: '{"start_position": position_start ,"end_position":  position_end ,"start_data": data_start ,"end_data": data_end }',
                //   data:{},
                dataType: "text",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                   // alert(data);
                    red_json_value(data);
                },
                error: function (xhr, textStatus, errorThrown) {
                    $("#p_test").innerHTML = "there is something wrong!";
                    alert("进入error---");
                    alert("状态码："+xhr.status);
                    alert("状态:" + xhr.readyState);//当前状态,0-未初始化，1-正在载入，2-已经载入，3-数据进行交互，4-完成。
                    alert("错误信息:"+xhr.statusText );
                    alert("返回响应信息："+xhr.responseText );//这里是详细的信息
                    alert("请求状态："+textStatus); 　　　　　　　　
                    alert(errorThrown); 　　　　　　　　
                    alert("请求失败"); 
                }
            })
        }


        button_ok.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

           // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);
            
            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('2164', '2317', start, end,"坡道1");

        }
        button_ok1.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

            // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('2361', '2558', start, end, "坡道2");

        }

        button_ok2.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

            // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('2934', '3074', start, end, "坡道3");

        }

        button_ok3.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

            // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('602', '675', start, end, "侧斜管1");

        }
        button_ok4.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

            // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('742', '810', start, end, "侧斜管2");

        }

        button_ok5.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

            // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('875', '939', start, end, "侧斜管3");

        }

        button_ok6.onclick = function (event) {
            // alert(start_data.value + " " + end_data.value);
            // 这里不知道为什么不能有字母

            // alert(start_data.value.length);
            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个

            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            //TestAjaxParam('0', '4000', start, end);
            Draw_Chart('994', '1069', start, end, "侧斜管4");

        }
       

        // 这里要加处理字符串的函数
        function red_json_value(string) {

            var length = string.length;
            //alert(string);
            // 数量读出来之后
            //jubu_time_list = [];
            //jubu_value_list = [];
            chaxun_position = [];
            chaxun_weiyi1 = [];
            chauxn_weiyi2 = [];

            var pos_is = true;
            var mycount = 0;
            for (var i = 0; i < length - 1; i++) {
               
                if (string.substr(i, 2) == '":') {
                    

                    for (var j = i; j < length; j++) {
                        if (string.substr(j, 1) == ',') {
                            // 日期
                            
                           // alert(i + "  " + j);
                           // alert(string.substr(i + 2, j - i - 2));

                            if (pos_is == true) {
                                chaxun_position.push(string.substr(i + 2, j - i - 2));
                               // alert("position:" + string.substr(i + 2, j - i - 2));
                                pos_is = false;
                                break;
                            }
                            else
                            {
                                chaxun_weiyi1.push(string.substr(i + 2, j - i - 2));
                                //alert("weiyi1:" + string.substr(i + 2, j - i - 2));
                                pos_is = true;
                                break;
                            }
                           
                           
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
                            var weiyi = string.substr(i + 2, j - i - 2);
                            //alert("位移2："+ weiyi);
                            chauxn_weiyi2.push(weiyi);

                            break;
                        }


                    }


                }
            }
            //alert(chaxun_position);
            //alert(chaxun_weiyi1);
            //alert(chauxn_weiyi2);
        }




        function Draw_Chart(start_position,end_position,start_date,end_date,title) {
            // 每次图像只有十个
            try {
               // btn_close = document.getElementById("btn_close");

               // qianjin = document.getElementById("btn_qianjin");

                //houtui = document.getElementById("btn_houtui");
               // btn_fuwei = document.getElementById("btn_fuwei");

              //  btn_close.style.visibility = "visible";
                //qianjin.style.visibility="";
                //houtui.style.visibility = "visible";
                //btn_fuwei.style.visibility = "visible";

                try {
                    myLineChart.destroy();
                }
                catch (err) {
                    // alert(err);
                }
                //btn_close.onclick = function (event) {

                //    btn_close.style.visibility = "hidden";
                //    qianjin.style.visibility = "hidden";
                //    houtui.style.visibility = "hidden";
                //    btn_fuwei.style.visibility = "hidden";
                //    //myLineChart.canvas.style.visibility = "hidden";
                //    //myLineChart = new Chart();
                //    document.getElementById("chart_wrapper").style.display = "none";
                //}

                chaxun_position = [];
                chaxun_weiyi1 = [];
                chauxn_weiyi2 = [];

                //jubu_time_list = [];
                //jubu_value_list = [];

                


                //var now_jubu_time_list = new Array();
                //var now_jubu_value_list = new Array();

                //now_jubu_time_list = [];
                //now_jubu_value_list = [];


                TestAjaxParam(start_position, end_position, start_date, end_date);


                //qianjin.onclick = function (event) {
                //    if (start_index > 0) {
                //        start_index = start_index - 1;
                //        //Draw_Chart(myposition, datetime, start_index);
                //        start = start_index;
                //    }
                //}

                //houtui.onclick = function (event) {
                //    if (start_index < jubu_time_list.length) {
                //        start_index = start_index + 1;
                //     //   Draw_Chart(myposition, datetime, start_index);
                //        start = start_index;
                //    }
                //}

                //btn_fuwei.onclick = function (event) {
                //    start_index = 0;
                //    start = 0;
                //   // Draw_Chart(myposition, datetime, start_index);
                //}


                //alert(jubu_time_list.length.toString());
                //if (jubu_time_list.length >= start_index + 10) {
                //    // 完整的显示10个
                //    // alert(jubu_time_list.length);
                //    now_jubu_time_list.push(0);
                //    now_jubu_value_list.push(0);
                //    for (var i = jubu_time_list.length - 1 - start_index - 9; i <= jubu_time_list.length - 1 - start_index; i++) {
                //        now_jubu_time_list.push(jubu_time_list[i]);
                //        now_jubu_value_list.push(jubu_value_list[i]);
                //        //alert(i);
                //    }
                //    now_jubu_time_list.push("阈值点");
                //    now_jubu_value_list.push(2);
                //    //alert(now_jubu_time_list);

                //}
                //else if (jubu_time_list.length >= start_index) {
                //    // 只显示一部分
                //    now_jubu_time_list.push(0);
                //    now_jubu_value_list.push(0);
                //    for (var i = 0 ; i < jubu_time_list.length - 1 - start_index; i++) {
                //        now_jubu_time_list.push(jubu_time_list[i]);
                //        now_jubu_value_list.push(jubu_value_list[i]);
                //    }
                //    now_jubu_time_list.push("阈值点");
                //    now_jubu_value_list.push(2);
                //    //alert(now_jubu_time_list);

                //}








                var data = {

                    labels:chaxun_position,
                    datasets: [
                        {
                            label: title + "位移线1(mm)",
                            fill: true,
                            lineTension: 0.1,
                            backgroundColor: "rgba(255,192,192,0.4)",
                            borderColor: "rgba(255,192,192,1)",
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
                            data: chaxun_weiyi1,
                            spanGaps: false,

                        }
                        ,
                        {
                            label:title+ "位移线2(mm)",
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
                            data: chauxn_weiyi2,
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


        //alert(3);
</script>
</body>
</html>






