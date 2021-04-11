<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainView.aspx.cs" Inherits="huizhou.MainView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
     <link rel="shortcut icon" href="TemplateData/favicon.ico"/>
    <link rel="stylesheet" href="TemplateData/style.css"/>
    <title>惠州工地监测系统</title>
    <style type="text/css">
        body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
        #r-result{width:100%;margin-top:5px;}
		#allmap{width:100%;height:100%;}
		p{margin-left:5px; font-size:14px;}
        .bg_image         
        {
            position:absolute;
            left:0;
            top:0;
            width:100%;
            height:100%;
            z-index:0;
        }

        .title_kuang
        {
            position:absolute;
            left:0;
            top:0;
            width:100%;
            height:15%;
            z-index:1;
        }

        .label_title
        {
            position:absolute;
            left:30%;
            top:1%;
            width:40%;
            height:10%;
            color:white;
            z-index:2;
            text-align:center;
            font-family:'Adobe Fan Heiti Std';
            font-size:large;
            font-style:initial;
        }
        .label_timer{
            position:absolute;
            left:1%;
            top:2%;
            width:18%;
            height:5%;
            color:rgb(47,158,242);
            z-index:2;
            text-align:center;
            font-family:'Adobe Heiti Std';
            font-size:large;
        }

        .div_main_map
        {
            position:absolute;
            left:1%;
            top:10%;
            width:40%;
            height:60%;
            z-index:3;
            overflow:hidden;

        }

        .main_map_canvas{
           
            position:absolute;
           
            left:0;
            top:0;
            width:1080px;
            height:1080px;
            z-index:3;
           background-color:transparent;
        }

        .sub_map_div{
           
            position:absolute;
           
            left:0%;
            top:0%;
            width:100%;
            height:100%;
            z-index:2;
            background-color:white;
            border-width:2px;
            border-color:black;
           
           
        }
        .label_test
        {
            position:absolute;
            top:50%;
            left:50%;
            width:10%;
            height:3%;
            z-index:3;
        }
        .image_div
        {
            position:absolute;
            top:10%;
            left:62%;
            height:85%;
            width:37%;
            z-index:2;
            visibility:hidden;
        }

        .image_div_show
        {
            position:absolute;
            top:10%;
            left:62%;
            height:85%;
            width:37%;
            z-index:2;
            border-width:2px;
            border-color:white;
        }

        
    </style>
    <script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&ak=3E8E6Bd2Fad64694ac6507727ac6b3de"></script>
    <script type="text/javascript" src="//api.map.baidu.com/library/Heatmap/2.0/src/Heatmap_min.js"></script>
    <script type="text/javascript" src="http://www.yanhuangxueyuan.com/versions/threejsR92/build/three.js"></script>
    <script type="text/javascript" src="http://www.yanhuangxueyuan.com/versions/threejsR92/examples/js/loaders/FBXLoader.js"></script>
    <script type="text/javascript" src="http://www.yanhuangxueyuan.com/versions/threejsR92/examples/js/libs/inflate.min.js"></script>
     <script type="text/javascript" src="TemplateData/UnityProgress.js"></script>
    <script  type="text/javascript" src="Build/UnityLoader.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="maindiv" class="bg_image">
        <img id="bg_image" src="image/bg.png" class="bg_image" />
        <img  id="title_kuang" src="image/title_kuang_temp.png" class="title_kuang"/>
        <img  id="title_kuang_pang" src="image/title_bian_kuang_temp.png" class="title_kuang"/>
        <label id="label_title" class="label_title" >惠州赛格假日广场二期基坑监测系统</label>
        
        <img  id="div_main_map" class="div_main_map" src="image/map_bg.png"/>
        <asp:Panel ID="div_main_map_panel" CssClass="div_main_map" runat="server">
             <div id="allmap"></div>
        </asp:Panel>
        <div id="data_div" style="left:60%;top:10%;width:30%;height:90%;z-index:4;background-color:black;border-color:white;border-width:2px" runat="server"></div>
         <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager><!--必须包含这个控件，否则UpdatePanel无法使用-->  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
             <ContentTemplate>
                 <asp:Timer ID="Timer4" runat="server" Interval="1000"></asp:Timer>
                 
             <asp:Label id="label_timer" CssClass="label_timer" runat="server">2020年6月18日 14:20:35</asp:Label>
           </ContentTemplate>   
        </asp:UpdatePanel>
        <div id="gameContainer" style="position:absolute; width:45%;height:79%;left:50%;top:10%;z-index:3" runat="server" >
             <iframe id="unitypage" name="unitypage" src="index.html" style="left:0%;top:0%;width:100%;height:100%;z-index:2">
                    您的浏览器不支持iframe，请升级
              </iframe>
        </div>
        <img id="image_div" class="image_div" runat="server" src="~/image/图1.png"/>
        <input id="stop" type="button" value="停止" style="left:40%;top:90%;width:10%;height:10%;position:absolute;" onclick='window.frames["unitypage"].stop_qiao();'/>
         <input id="contiun" type="button" value="继续" style="left:60%;top:90%;width:10%;height:10%;position:absolute;"onclick='window.frames["unitypage"].start_qiao();'/>
    </div>
    </form>
</body>
</html>

<script type="text/javascript" >

    //var div_map_panel = document.getElementById("div_map_panel");

    ////var map_img = document.getElementById("map_img");

    //// 画面移动的

    //var button_up = document.getElementById("button_up");
    //var button_down = document.getElementById("button_down");
    //var button_left = document.getElementById("button_left");
    //var button_right = document.getElementById("button_donw");

    // 是否抓住地图得变量
    //var catch_map = false; 


    //// 
    //var before_x = -1;
    //var before_y = -1;


    // 地图相关

   // var gameInstance = UnityLoader.instantiate("gameContainer", "/Build/web.json", { onProgress: UnityProgress });

   // var div_innter = document.getElementById("gameContainer");
    

    var map = new BMap.Map("allmap");
   
    var top_left_control = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_TOP_LEFT });// 左上角，添加比例尺
    var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
    var top_right_navigation = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL }); //右上角，仅包含平移和缩放按钮
    var image_div = document.getElementById("image_div");


    init_view();
    // 对界面进行初始化
    function init_view()
    {
        map.centerAndZoom(new BMap.Point(114.441315, 23.092459), 19);
        map.enableScrollWheelZoom(true);

        // 折线相关
        var sy = new BMap.Symbol(BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW, {
            scale: 0.6,//图标缩放大小
            strokeColor: '#fff',//设置矢量图标的线填充颜色
            strokeWeight: '2',//设置线宽
        });

        var icons = new BMap.IconSequence(sy, '10', '30');
        // 创建polyline对象
        var pois = [
            new BMap.Point(114.440852, 23.092555),
            new BMap.Point(114.44193, 23.092837),
            new BMap.Point(114.442186, 23.092459),
            new BMap.Point(114.441135, 23.092264),
            new BMap.Point(114.440852, 23.092555)
        ];
        var polyline = new BMap.Polyline(pois, {
            enableEditing: false,//是否启用线编辑，默认为false
            enableClicking: true,//是否响应点击事件，默认为true
            icons: [icons],
            strokeWeight: '8',//折线的宽度，以像素为单位
            strokeOpacity: 0.8,//折线的透明度，取值范围0 - 1
            strokeColor: "#18a45b" //折线颜色
        });

        map.addOverlay(polyline);

        // 地图添加拾取坐标的操作

        //map.addEventListener("click", function (e) {
        //    alert(e.point.lng + "," + e.point.lat);
        //});



        // 几个点
        // 114.441041,23.092592
        // 114.441728,23.092796
        // 114.441998,23.092721
        // 114.441984,23.09243
        // 114.441454,23.092309
        // 114.440983,23.092413

        var marker1 = new BMap.Marker(new BMap.Point(114.441041, 23.092592));
        var marker2 = new BMap.Marker(new BMap.Point(114.441728, 23.092796));
        var marker3 = new BMap.Marker(new BMap.Point(114.441998, 23.092721));
        var marker4 = new BMap.Marker(new BMap.Point(114.441984, 23.09243));
        var marker5 = new BMap.Marker(new BMap.Point(114.441454, 23.092309));
        var marker6 = new BMap.Marker(new BMap.Point(114.440983, 23.092413));

        map.addOverlay(marker1);
        map.addOverlay(marker2);
        map.addOverlay(marker3);
        map.addOverlay(marker4);
        map.addOverlay(marker5);
        map.addOverlay(marker6);

        //添加控件和比例尺

        map.addControl(top_left_control);
        map.addControl(top_left_navigation);
        map.addControl(top_right_navigation);


        // 基坑点击标记
        var opts = {
            width: 200,     // 信息窗口宽度
            height: 100,     // 信息窗口高度
            title: "赛格假日广场", // 信息窗口标题
            enableMessage: true,//设置允许信息窗发送短息
            message: "111"
        }

        var infoWindow1 = new BMap.InfoWindow("基坑标记点1", opts);
        var infoWindow2 = new BMap.InfoWindow("基坑标记点2", opts);
        var infoWindow3 = new BMap.InfoWindow("基坑标记点3", opts);
        var infoWindow4 = new BMap.InfoWindow("基坑标记点4", opts);
        var infoWindow5 = new BMap.InfoWindow("基坑标记点5", opts);
        var infoWindow6 = new BMap.InfoWindow("基坑标记点6", opts);

        marker1.addEventListener("click",function () {
            map.openInfoWindow(infoWindow1, new BMap.Point(114.441041, 23.092592)); //开启信息窗口
            image_div.src = "/image/图1.png";
        });

        marker2.addEventListener("click", function () {
            map.openInfoWindow(infoWindow2, new BMap.Point(114.441728, 23.092796)); //开启信息窗口
            image_div.src = "/image/图2.png";
        });

        marker3.addEventListener("click", function () {
            map.openInfoWindow(infoWindow3, new BMap.Point(114.441998, 23.092721)); //开启信息窗口
            image_div.src = "/image/图3.png";
        });

        marker4.addEventListener("click", function () {
            map.openInfoWindow(infoWindow4, new BMap.Point(114.441984, 23.09243)); //开启信息窗口
            image_div.src = "/image/图4.png";
        });

        marker5.addEventListener("click", function () {
            map.openInfoWindow(infoWindow5, new BMap.Point(114.441454, 23.092309)); //开启信息窗口
            image_div.src = "/image/图5.png";
        });

        marker6.addEventListener("click", function () {
            map.openInfoWindow(infoWindow6, new BMap.Point(114.440983, 23.092413)); //开启信息窗口
            image_div.src = "/image/图6.png";
        });

        // 热点图
        var points = [
    { "lng": 114.441041, "lat": 23.092592, "count": 10 },
    { "lng": 114.441728, "lat": 23.092796, "count": 30 },
    { "lng": 114.441998, "lat": 23.092721, "count": 50 },
    { "lng": 114.441984, "lat": 23.09243, "count": 70 },
    { "lng": 114.441454, "lat": 23.092309, "count": 90 },
    { "lng": 114.440983, "lat": 23.092413, "count": 110 }
        ];
       

       var heatmapOverlay = new BMapLib.HeatmapOverlay({ "radius": 40 });
        map.addOverlay(heatmapOverlay);
        heatmapOverlay.setDataSet({ data: points, max: 100 });

        heatmapOverlay.show();

    }

    
    // 读取一个3D 模型
    // 创建一个scene

    var scene = new THREE.Scene();          // 创建一个场景

   // read_fbx();

    function read_fbx()
    {


        //var geometry = new THREE.BoxGeometry(100100, 100); //创建一个立方体几何对象Geometry
        //var material = new THREE.MeshLambertMaterial({
        //    color: 0x0000ff
        //}); //材质对象Material
        //var mesh = new THREE.Mesh(geometry, material); //网格模型对象Mesh
        //scene.add(mesh); //网格模型添加到场景中

        var loader = new THREE.FBXLoader();//创建一个FBX加载器
        
        loader.load('/image/huizhou.FBX', function (obj) {
             console.log(obj);//查看加载后返回的模型对象
            scene.add(obj);
            //object.scale.set(10, 10, 10);
        }, function (process) { }, function (error) { alert(error); });



        var point = new THREE.PointLight(0xffffff);
        point.position.set(400, 200, 300); //点光源位置
        scene.add(point); //点光源添加到场景中
        //环境光
        var ambient = new THREE.AmbientLight(0x444444);
        scene.add(ambient);

        var width = 400; //窗口宽度
        var height = 300; //窗口高度
        var k = width / height; //窗口宽高比
        var s = 2000; //三维场景显示范围控制系数，系数越大，显示的范围越大
        //创建相机对象
        var camera = new THREE.OrthographicCamera(-s * k, s * k, s, -s, 1, 1000);
        camera.position.set(200, 300, 200); //设置相机位置
        camera.lookAt(scene.position); //设置相机方向(指向的场景对象)
        /**
         * 创建渲染器对象
         */
        var renderer = new THREE.WebGLRenderer();
        renderer.setSize(width, height);//设置渲染区域尺寸
        renderer.setClearColor(0xb9d3ff, 1); //设置背景颜色

        var div = document.getElementById("canvas_main");
        div.appendChild(renderer.domElement); //body元素中插入canvas对象
        //执行渲染操作   指定场景、相机作为参数
        renderer.render(scene, camera);


    }
    

    
       

    
</script>



