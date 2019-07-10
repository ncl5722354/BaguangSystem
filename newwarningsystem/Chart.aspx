<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="newwarningsystem.Chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style86 {
            position: absolute;
            top: 0px;
            left: 20px;
            width: 3%;
            z-index: 4;
            height:5%;
        }
        .auto-style12 {
            position: absolute;
            top: 0%;
            left: 1%;
            z-index: 3;
            width: 100%;
            height: 5%;
        }
        .auto-style4 {
            position: absolute;
            top: 1%;
            left: 40%;
            z-index: 4;
            width: 100%;
            height: 4%;
            margin-right: 0px;
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
            z-index:5;
            height:40%;
        }
        .fenchar{
            position: absolute;
            top:60%;
            left:20px;
            z-index:5;
            height:40%;
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
        .auto-style87 {
            position: absolute;
            top: 55%;
            left: 10%;
            z-index: 6;
            width: 5%;
            height: 5%;
            right: 771px;
        }
        .Image_home
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
            z-index:11;
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
            top:60%;
            left:72%;
            width:27%;
            height:35%;
            z-index:11;
            text-align:center;
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
        .auto-style89 {
            position: absolute;
            left: 109px;
            top: -2px;
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1" onmousedown="down()" onmouseup="up()" onmousemove="move()">
        <asp:Button ID="Button1" runat="server" Text="坡道1"  CssClass="auto-style87" OnClick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" Text="坡道2" CssClass="Button2" OnClick="Button2_Click" />
         <asp:Button ID="Button3" runat="server" Text="坡道3" CssClass="Button3" OnClick="Button3_Click" />
         <asp:Button ID="Button4" runat="server" Text="管道1" CssClass="Button4" OnClick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Text="管道2" CssClass="Button5" OnClick="Button5_Click" />
        <asp:Button ID="Button6" runat="server" Text="管道3" CssClass="Button6" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Text="管道4" CssClass="Button7" OnClick="Button7_Click" />
       
        <asp:ImageButton ID="Image_home" CssClass="Image_home" runat="server" ImageUrl="~/Resource/home.png" OnClick="ImageButton_home_Click" BackColor="#000066" />
            
           
            
        
        <asp:Image ID="Image_icon" CssClass="auto-style86" runat="server"  ImageUrl="~/Resource/图片2.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
        <asp:Image ID="Image_title" CssClass="auto-style12" runat="server" BackColor="#0000CC" ImageUrl="~/Resource/图片1.png"  />
        <asp:Label ID="Label_title" runat="server" CssClass="auto-style4" Text="坝光收费站边坡防护预警系统" Font-Names="黑体" Font-Size="15pt" ForeColor="White"></asp:Label>
         <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager><!--必须包含这个控件，否则UpdatePanel无法使用-->  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">  
                <ContentTemplate> 
            <!--Lable和Timer控件必须都包含在UpdatePanel控件中 -->  
                        <asp:Label ID="Label_timer" CssClass="auto-style14" runat="server" Text="Label" Font-Names="微软雅黑" ForeColor="White"></asp:Label>  <!--用于显示时间-->  
                        <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer><!-- 用于更新时间，每1秒更新一次-->  
                   
                   </ContentTemplate>
            </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">  
                <ContentTemplate> 
           
                <asp:Chart ID="Chart1" runat="server" CssClass="zongchar" BorderlineColor="Black" BorderlineDashStyle="Solid" BorderlineWidth="3" Height="193px" Width="834px">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY Title="位移(mm)">
                        </AxisY>
                        <AxisX Title="位置(m)" Interval="100">
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="位移总览">
                    </asp:Title>
                </Titles>
                   <BorderSkin SkinStyle="Sunken" />
            </asp:Chart>
                    <asp:Chart ID="Chart2" CssClass="fenchar" runat="server" BorderlineColor="Black" BorderlineDashStyle="Solid" BorderlineWidth="3" Height="193px" Width="834px">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY Title="位移(mm)">
                        </AxisY>
                        <AxisX Title="位置(m)" Interval="10">
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="位移总览">
                    </asp:Title>
                </Titles>
                   <BorderSkin SkinStyle="Sunken" />
            </asp:Chart>

                   </ContentTemplate>
            </asp:UpdatePanel>
        <asp:Label ID="Label_line1" runat="server" CssClass="Label_line1" BorderStyle="Solid" BorderWidth="2px" Font-Names="微软雅黑" ForeColor="Black" Text="曲线1日期"></asp:Label>
        <asp:Panel ID="Panel_line1" runat="server" CssClass="Panel_line1" BorderStyle="Solid" BorderWidth="2px" Font-Size="8pt">
            <asp:Calendar ID="calender1" CssClass="calender1" runat="server" BackColor="#00FFCC" OnDayRender="calender1_DayRender" Width="100%" Height="100%">
            </asp:Calendar>
        </asp:Panel>
        <asp:Label ID="Label_line2" runat="server" CssClass="Label_line2" BorderStyle="Solid" BorderWidth="2px" Font-Names="微软雅黑" ForeColor="Black" Text="曲线2日期"></asp:Label>
        <asp:Panel ID="Panel_line2" runat="server" CssClass="Panel_line2" BorderStyle="Solid" BorderWidth="2px">
            <asp:Calendar ID="Calendar2" CssClass="calender2" runat="server" BackColor="#00FFCC" OnDayRender="Calendar2_DayRender" OnSelectionChanged="Calendar2_SelectionChanged" Width="100%" Height="100%" Font-Size="7pt">
            </asp:Calendar>
        </asp:Panel>

        <asp:Image ID="Image_time" CssClass="auto-style13" runat="server" BackColor="#0066FF" />
        <asp:Button ID="btnPrint" runat="server" CssClass="btnPrint" Text="打印" OnClientClick="return PrintArticle();" />
        <asp:Menu ID="Menu1" CssClass="Menu1"  runat="server" BackColor="#000099" ForeColor="#33CCCC" Font-Names="微软雅黑" Orientation="Horizontal" BorderColor="Black" BorderStyle="Solid">
            <Items>
                <asp:MenuItem Text="主页" Value="曲线与查询" NavigateUrl="~/MainMap.aspx"></asp:MenuItem>
                <asp:MenuItem Text="报表" Value="报表" NavigateUrl="~/report.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>

    </div>
    </form>
</body>
</html>




<script>
    var isdonw = false;   // 鼠标的状态
    var m_move_x, m_move_y, m_down_x, m_down_y, dx, dy, md_x, md_y, ndx, ndy;  // 需要操作的坐标值
    var chart1_width, chart1_height, chart2_width, chart2_height;
    function PrintArticle()
    {
        var pc = document.getElementById("div1");
        var pw = window.open('', '', 'width=900,height=800');
        pw.document.write('<html>'); pw.document.write('<head>');
        pw.document.write('<title>ASP.NET网页打印测试</title>');
        pw.document.write('</head>'); pw.document.write('<body>');
        pw.document.write(pc.innerHTML); pw.document.write('</body>');
        pw.document.write('</html>'); pw.document.close(); setTimeout(function () { pw.print(); }, 500); return false;
    }







    function down() {
        chart1 = document.getElementById("Chart1");
        isDown = true;

        //获取鼠标按下时坐标
        m_down_x = event.pageX;
        m_down_y = event.pageY;

        //获取div坐标
        dx = move_div.offsetLeft;
        dy = move_div.offsetTop;

        chart1_width = chart1.offsetWidth;
        chart1_height = chart1.offsetHeight;


        //获取鼠标与div偏移量
        md_x = m_down_x - dx;
        md_y = m_down_y - dy;

        
    }

    //鼠标移动
    function move() {
        chart1 = document.getElementById("Chart1");

        //实时更新div的坐标
        dx = move_div.offsetLeft;
        dy = move_div.offsetTop;

        //获取鼠标移动实时坐标
        m_move_x = event.pageX;
        m_move_y = event.pageY;

        //鼠标按下时移动才触发
        if (isDown) {

            //获取新div坐标，鼠标实时坐标 - 鼠标与div的偏移量
            ndx = m_move_x - md_x;
            ndy = m_move_y - md_y;

            //把新div坐标值赋给div对象
            

        }

    }

    //鼠标释放
    function up() {
        isDown = false;
    }


</script>
