<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="newwarningsystem.report" EnableEventValidation = "false"%>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style86 {
            position: absolute;
            top: 1px;
            left: 20px;
            width: 3%;
            z-index: 10;
            height:5%;
        }
        .auto-style12 {
            position: absolute;
            top: 0%;
            left: 0%;
            z-index: 9;
            width: 100%;
            height: 5%;
        }
        .auto-style4 {
            position: absolute;
            top: 1%;
            left: 40%;
            z-index: 9;
            width: 100%;
            height: 4%;
            margin-right: 0px;
        }
        .Image_home
        {
            position:absolute;
            top:0%;
            left:90%;
            width:3%;
            height:4%;
            z-index:9;
        }
        .report
        {
            position:absolute;
            top:20%;
            left:0%;
            width:60%;
            height:75%;
            z-index:9;
        }
         .auto-style1 {
            height: 628px;
        }
         .reportview
         {
              position:absolute;
            top:20%;
            left:0%;
            width:80%;
            height:75%;
            z-index:10;
         }
         .Panel_port
         {
             position:absolute;
            top:20%;
            left:10%;
            width:60%;
            height:75%;
            z-index:10;
         }
         .Panel_rili
         {
             position:absolute;
            top:20%;
            left:75%;
            width:24%;
            height:75%;
            z-index:10;
         }
         .Label_Title
         {
              position:absolute;
            top:10%;
            left:10%;
            width:60%;
            height:8%;
            z-index:10;
            text-align:center;
         }
         .Label_rili
         {
             position:absolute;
            top:10%;
            left:75%;
            width:24%;
            height:8%;
            z-index:10;
            text-align:center;
         }
         .Batton_Save
         {
             position:absolute;
            top:10%;
            left:59%;
            width:10%;
            height:4%;
            z-index:10;
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
         .panel_shuliangtongji {
            position: absolute;
            top: 56%;
            left: 75%;
            width: 24%;
            z-index: 10;
            height:40%;
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
    </style>
</head>
<body>
    <form id="form1" runat="server"  style="width:100%; height:100%">
    <div class="auto-style1">
        <asp:Image ID="Image_icon" CssClass="auto-style86" runat="server"  ImageUrl="~/Resource/图片2.png" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
        <asp:Image ID="Image_title" CssClass="auto-style12" runat="server" BackColor="#0000CC" ImageUrl="~/Resource/图片1.png"  />
        <asp:Label ID="Label_title" runat="server" CssClass="auto-style4" Text="坝光收费站边坡防护预警系统" Font-Names="黑体" Font-Size="15pt" ForeColor="White"></asp:Label>
        
         <asp:ImageButton ID="Image_home" CssClass="Image_home" runat="server" ImageUrl="~/Resource/home.png" OnClick="ImageButton_home_Click"  />
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="mypanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
        <asp:Panel ID="Panel_shuliangtongji" CssClass="panel_shuliangtongji" runat="server" BorderColor="#00CCFF" BorderStyle="Groove" BorderWidth="3px" BackColor="#0C2B61" >
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
            <asp:Timer runat="server" Interval="2000"></asp:Timer>
        </asp:Panel>
          </ContentTemplate>                  
        </asp:UpdatePanel>  
        
        <asp:Panel ID="Panel_port" CssClass="Panel_port" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ScrollBars="Vertical">
        </asp:Panel>
        <asp:Label ID="Label_Title1" CssClass="Label_Title" runat="server"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Text="详情报表"></asp:Label>
        <asp:Button ID="Button_Save" CssClass="Batton_Save" runat="server"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Text="保存报表" OnClick="Button_Save_Click"/>
        <asp:Label ID="Label_rili" CssClass="Label_rili" runat="server"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Text="日期选择"></asp:Label>
        <asp:Panel ID="Panel_rili" CssClass="Panel_rili" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ScrollBars="Vertical">
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"></asp:Calendar>

            
        }  
        </asp:Panel>
        
        
        <asp:Menu ID="Menu1" CssClass="Menu1"  runat="server" BackColor="#000099" ForeColor="#33CCCC" Font-Names="微软雅黑" Orientation="Horizontal" BorderColor="Black" BorderStyle="Solid">
            <Items>
                <asp:MenuItem Text="曲线与查询" Value="曲线与查询" NavigateUrl="~/Chart.aspx"></asp:MenuItem>
                <asp:MenuItem Text="报表" Value="报表" NavigateUrl="~/report.aspx"></asp:MenuItem>
                <asp:MenuItem Text="设置" Value="设置" NavigateUrl="~/Set.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
        
    </form>
</body>
</html>
