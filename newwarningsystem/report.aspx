<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="newwarningsystem.report" EnableEventValidation = "false"%>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="jsgrid/demos/demos.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="jsgrid/css/jsgrid.css"/>
    <link rel="stylesheet" type="text/css" href="jsgrid/css/theme.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.0/normalize.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="datapicket/css/datepicker.css">
   
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>


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
            top: 0%;
            margin-left:5%;
           height:100%;
           width:100%;

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
        .datagrid_div
        {
            position:absolute;
            top:10%;
            width:100%;
            height:90%;
        }
        .btn_ok
        {
            position:absolute;
            top:2%;
            margin-left:300px;
            width:100px;
        }
        .mylabel{
            position:absolute;
            top:2%;
            left:500px;
            width:400px;
            font-size:x-large;
        }
        .select_time{
            position:absolute;
            top:100px;
            left:5%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  style="width:100%; height:100%;top:10%">
    
            
                
            <input id="btn_ok" type="button" class="btn_ok" value="确定" runat="server"/>
            <label  id="title" class="mylabel">报表标题</label>
            <label id="select_time" class="select_time">选择报表的日期</label>
                <div  class="c-datepicker-date-editor  J-datepicker-range-day mt10">
                    <i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
                    <input id="start_data" placeholder="Start" name="start_data" class="c-datepicker-data-input only-date" value=""/>
                    <span class="c-datepicker-range-separator">-</span>
                    <input id="end_data" placeholder="End" name="end_data" class="c-datepicker-data-input only-date" value=""/>
                   
                </div>
        <div id="jsGrid" class="datagrid_div" >

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

       

        //var mydata = new Array();    //
        //mydata.push([{ "项目": "1","位置": "10000", "位移量": "0.1122" }]);
        var mydata = new Array();

       // mydata.push([{ "项目": "1", "位置": "10000", "位移量": "0.1122" }]);
      //  mydata.push({ "项目": "1", "位置": "10000", "位移量": "0.1122" });
        var chaxun_position = new Array();
        var chaxun_weiyi1 = new Array();
        var chauxn_weiyi2 = new Array();


        var btn_ok=document.getElementById("btn_ok");
        btn_ok.onclick = function (event) {
            
            Read_Report();
        }

        function Read_Report()
        {
            // 区域变化最大值

            // 区域变化平均值

            // 报警值

            mydata = [];

            var start = '0';          // 如果是0的话从头开始
            var end = '0';            // 如果是0的话到最新的一个


            if (start_data.value.length == 10)
                start = start_data.value.substr(0, 4) + start_data.value.substr(5, 2) + start_data.value.substr(8, 2);

            if (end_data.value.length == 10)
                end = end_data.value.substr(0, 4) + end_data.value.substr(5, 2) + end_data.value.substr(8, 2);

            var mylabel = document.getElementById("title");
            mylabel.textContent = start_data.value.toString() + "到" + end_data.value.toString() + " 报表详情";
            Quyu_Report(2164, 2317, start, end, "坡道1");
            Quyu_Report(2361, 2558, start, end, "坡道2");
            Quyu_Report(2934, 3074, start, end, "坡道3");
            Quyu_Report(602, 675, start, end, "测管1");
            Quyu_Report(742, 810, start, end, "测管2");
            Quyu_Report(875, 939, start, end, "测管3");
            Quyu_Report(994, 1069, start, end, "测管4");
            myfunction();
        }


        function Quyu_Report(start_pos, end_pos, start_data, end_data, quyu){
            try {
                var value1 = "<%=value1%>";
                var value2 = "<%=value2%>";
                var value3 = "<%=value3%>";
                var value4 = "<%=value4%>";
                var value5 = "<%=value5%>";


                //alert(start_pos + " " + end_pos + " " + start_data + " " + end_data);
                TestAjaxParam(start_pos, end_pos, start_data, end_data);
                // alert("1");

                // 最大变大值

                var length = chaxun_position.length;
                //var length1 = chaxun_weiyi1.length;
                //var length2 = chauxn_weiyi2.length;


                var max_pos = "0";
                var max_chaju = 0;

                var sum_chaju = 0;
                
                for (var i = 0; i < length; i++) {
                    var position = chaxun_position[i];
                    //alert(position);
                    var weiyi1 = chaxun_weiyi1[i];
                    //alert(weiyi1);
                    var weiyi2 = chauxn_weiyi2[i];
                    //alert(weiyi2);
                    
                    var chaju = Math.abs(weiyi1 - weiyi2);

                    if (chaju >= 2.0)
                    {
                        mydata.push({"项目": quyu +" 报警","位置":position+"m","位移量":chaju.toFixed(2).toString()+"mm"});
                    }


                    sum_chaju = sum_chaju + chaju;
                    //alert(sum_chaju);
                    if (chaju >= max_chaju) {
                        max_pos = position;
                        max_chaju = chaju;
                    }
                }


                var pingjun = sum_chaju / length;

                // alert(pingjun);
                //var max_info = "项目:" + quyu + "最大位移,位置:" + max_pos + "m,位移量:" + max_chaju.toFixed(2).toString();


               // alert("最大位置：" + max_pos + " 最大位移" + max_chaju);
                  mydata.push({ "项目": quyu + " 最大位移", "位置": max_pos.toString() + "m", "位移量": max_chaju.toFixed(2).toString()+"mm" });
                  mydata.push({ "项目": quyu + " 平均值", "位置": "-", "位移量": pingjun.toFixed(2).toString() + "mm" });


              //  alert(mydata);
                

            }
            catch (err) { }
        }

       

        function TestAjaxParam(position_start, position_end, data_start, data_end) {
            $.ajax({
                type: "POST",
                url: "report.aspx/Return_Position_Value",
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
                    alert("状态码：" + xhr.status);
                    alert("状态:" + xhr.readyState);//当前状态,0-未初始化，1-正在载入，2-已经载入，3-数据进行交互，4-完成。
                    alert("错误信息:" + xhr.statusText);
                    alert("返回响应信息：" + xhr.responseText);//这里是详细的信息
                    alert("请求状态：" + textStatus);
                    alert(errorThrown);
                    alert("请求失败");
                }
            })
        }

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
                            else {
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
        }


        
        function myfunction()
        {
            //mydata.push()
            
           //alert(mydata[0].toString());
            $(function () {

                $("#jsGrid").jsGrid({
                    height: "80%",
                    width: "100%",
                    sorting: true,
                    paging: false,
                    
                    fields: [
                        { name: "项目", type: "text", width: 250 },
                        { name: "位置", type: "text", width: 150 },
                        { name: "位移量", type: "text", width: 400 }
                    ],
                    data: mydata
                });

            });
        }
        
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
        
        
        //myfunction();
    </script>
</body>
</html>
