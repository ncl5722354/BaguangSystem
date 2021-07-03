using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using FileOperation;
using String_Caozuo;

namespace baguang_new
{

    
    public partial class MainView : System.Web.UI.Page
    {

        public static string podao1_status;
        public static string podao2_status;
        public static string podao3_status;

        public static string guandao1_status;
        public static string guandao2_status;
        public static string guandao3_status;
        public static string guandao4_status;

        int count = 0;


        public static IniFile ini = new IniFile("E://config.ini");

        // 位置与位移量
        public  struct pos_value
        {
           public  double pos;
           public  double weiyi;
        }



        // 位置位称与趋势
        public struct posname_qushi
        {
            public string posname;
            public string qushi;
        }


        // 时间与值
        public struct time_value
        {
            public string time;
            public string value;
        }

        // 一段线揽的最大位置和最小位置
        struct Xianlan_Max_Min
        {
            public string xianlan_name;              // 线缆名称
            public double max;                       // 线缆的终点
            public double min;                       // 线缆的起点
            public double max_value;                 // 线缆的最大值

        }

        // 等级结构
        struct Level
        {
            // 等级的名称
            public string level_name;
            
            // 等级的最大值
            public double max_value;
            
            // 等级的最小值
            public double  min_value;
            
            // 等级是否为最大值
            public bool max_is;
            
            // 等级是否为最小值
            public bool min_is;

            // 表示当前的颜色
            public System.Drawing.Color color;
        }


        public static ArrayList all_Value = new ArrayList();     // 保存所有的值
        public static ArrayList all_xianlan = new ArrayList();   // 保存所有的线缆
        
        public static string data_path = "D:\\坝光data\\";                          // 保存所有的数据

        public static double yuzhi = 2;


       static  Level level1 = new Level();

       static   Level level1_1 = new Level();
       static  Level level1_2 = new Level();
       static  Level level1_3 = new Level();
       static  Level level1_4 = new Level();

       static  Level level2 = new Level();

       static  Level level2_1 = new Level();
       static  Level level2_2 = new Level();
       static  Level level2_3 = new Level();
       static  Level level2_4 = new Level();


       static Level level3 = new Level();

       static Level level3_1 = new Level();
       static Level level3_2 = new Level();
       static Level level3_3 = new Level();
       static Level level3_4 = new Level();


       static Level level4 = new Level();

        // 定义几个线揽
        Xianlan_Max_Min xianlan1 = new Xianlan_Max_Min();
        Xianlan_Max_Min xianlan2 = new Xianlan_Max_Min();
        Xianlan_Max_Min xianlan3 = new Xianlan_Max_Min();
        Xianlan_Max_Min xianlan4 = new Xianlan_Max_Min();
        Xianlan_Max_Min xianlan5 = new Xianlan_Max_Min();
        Xianlan_Max_Min xianlan6 = new Xianlan_Max_Min();
        Xianlan_Max_Min xianlan7 = new Xianlan_Max_Min();


        protected void Page_Load(object sender, EventArgs e)
        {
            Label_Time.Text = "当前时间:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            
            if(IsPostBack==false)
            {
                // 页面第一次加载
                // 初始化线缆的信息
                init_system();
            }
            else
            {
                // 页面非第一次加载
                try
                {
                    Update_Now_Value();             // 周期性的读取数据
                }
                catch { }
                
            }
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                init_system();
            }
        }


        //  更新最新的数据状态

        private void init_system()
        {
            // 初始化状态
            // 初始化线缆的状态
            all_xianlan.Clear();
           

            xianlan1.xianlan_name = "坡道1";
            xianlan2.xianlan_name = "坡道2";
            xianlan3.xianlan_name = "坡道3";
            xianlan4.xianlan_name = "坡道4";
            xianlan5.xianlan_name = "坡道5";
            xianlan6.xianlan_name = "坡道6";
            xianlan7.xianlan_name = "坡道7";

            xianlan1.min = 2164;
            xianlan1.max = 2317;

            xianlan2.min = 2558;
            xianlan2.max = 2764;

            xianlan3.min = 2934;
            xianlan3.max = 3074;

            xianlan4.min = 602;
            xianlan4.max = 636;

            xianlan5.min = 742;
            xianlan5.max = 774;

            xianlan6.min = 875;
            xianlan6.max = 907;

            xianlan7.min = 994;
            xianlan7.max = 1026;

            all_xianlan.Add(xianlan1);
            all_xianlan.Add(xianlan2);
            all_xianlan.Add(xianlan3);
            all_xianlan.Add(xianlan4);
            all_xianlan.Add(xianlan5);
            all_xianlan.Add(xianlan6);
            all_xianlan.Add(xianlan7);

            // 定义等级

           
            
            try
            {
                IniFile myinifile = new IniFile("D:\\config\\userpassword.ini");

                yuzhi = double.Parse(myinifile.IniReadValue("yuzhi", "yuzhi"));

            }
            catch { }
            

            // 蓝色
            level1.level_name = "状况极好";
            level1.max_value = 0.1 * yuzhi / 2;
            level1.min_value = 0.1 * yuzhi / 2;
            level1.min_is = true;
            level1.max_is = false;
            level1.color = System.Drawing.Color.FromArgb(0, 0, 0xff);

            level1_1.level_name = "状况极好";
            level1_1.max_value = 0.2 * yuzhi / 2;
            level1_1.min_value = 0.1 * yuzhi / 2;
            level1_1.min_is = false;
            level1_1.max_is = false;
            level1_1.color = System.Drawing.Color.FromArgb(0, 0x33, 0xcc);

            level1_2.level_name = "状况极好";
            level1_2.max_value = 0.3 * yuzhi / 2;
            level1_2.min_value = 0.2 * yuzhi / 2;
            level1_2.min_is = false;
            level1_2.max_is = false;
            level1_2.color = System.Drawing.Color.FromArgb(0, 0x66, 0x99);

            level1_3.level_name = "状况极好";
            level1_3.max_value = 0.4 * yuzhi / 2;
            level1_3.min_value = 0.3 * yuzhi / 2;
            level1_3.min_is = false;
            level1_3.max_is = false;
            level1_3.color = System.Drawing.Color.FromArgb(0, 0x99, 0x66);

            level1_4.level_name = "状况极好";
            level1_4.max_value = 0.5 * yuzhi / 2;
            level1_4.min_value = 0.4 * yuzhi / 2;
            level1_4.min_is = false;
            level1_4.max_is = false;
            level1_4.color = System.Drawing.Color.FromArgb(0, 0xcc, 0x33);

            // 绿色
            level2.level_name = "状况良好";
            level2.max_value = 0.6 * yuzhi / 2;
            level2.min_value = 0.5 * yuzhi / 2;
            level2.min_is = false;
            level2.max_is = false;
            level2.color = System.Drawing.Color.FromArgb(0x00, 0xff, 0);


            level2_1.level_name = "状况良好";
            level2_1.max_value = 0.7 * yuzhi / 2;
            level2_1.min_value = 0.6 * yuzhi / 2;
            level2_1.min_is = false;
            level2_1.max_is = false;
            level2_1.color = System.Drawing.Color.FromArgb(0x33, 0xff, 0);

            level2_2.level_name = "状况良好";
            level2_2.max_value = 0.8 * yuzhi / 2;
            level2_2.min_value = 0.7 * yuzhi / 2;
            level2_2.min_is = false;
            level2_2.max_is = false;
            level2_2.color = System.Drawing.Color.FromArgb(0x66, 0xff, 0);

            level2_3.level_name = "状况良好";
            level2_3.max_value = 0.9 * yuzhi / 2;
            level2_3.min_value = 0.8 * yuzhi / 2;
            level2_3.min_is = false;
            level2_3.max_is = false;
            level2_3.color = System.Drawing.Color.FromArgb(0x99, 0xff, 0);

            level2_4.level_name = "状况良好";
            level2_4.max_value = 1.0 * yuzhi / 2;
            level2_4.min_value = 0.9 * yuzhi / 2;
            level2_4.min_is = false;
            level2_4.max_is = false;
            level2_4.color = System.Drawing.Color.FromArgb(0xcc, 0xff, 0);

            // 橙色
            level3.level_name = "状况正常";
            level3.max_value = 1.2 * yuzhi / 2;
            level3.min_value = 1.0 * yuzhi / 2;
            level3.min_is = false;
            level3.max_is = false;
            level3.color = System.Drawing.Color.FromArgb(0xff,0xff,0);

            level3_1.level_name = "状况正常";
            level3_1.max_value = 1.4 * yuzhi / 2;
            level3_1.min_value = 1.2 * yuzhi / 2;
            level3_1.min_is = false;
            level3_1.max_is = false;
            level3_1.color = System.Drawing.Color.FromArgb(0xff, 0xcc, 0);

            level3_2.level_name = "状况正常";
            level3_2.max_value = 1.6 * yuzhi / 2;
            level3_2.min_value = 1.4 * yuzhi / 2;
            level3_2.min_is = false;
            level3_2.max_is = false;
            level3_2.color = System.Drawing.Color.FromArgb(0xff, 0x99, 0);

            level3_3.level_name = "状况正常";
            level3_3.max_value = 1.8 * yuzhi / 2;
            level3_3.min_value = 1.6 * yuzhi / 2;
            level3_3.min_is = false;
            level3_3.max_is = false;
            level3_3.color = System.Drawing.Color.FromArgb(0xff, 0x66, 0);

            level3_4.level_name = "状况正常";
            level3_4.max_value = 1.8 * yuzhi / 2;
            level3_4.min_value = 1.6 * yuzhi / 2;
            level3_4.min_is = false;
            level3_4.max_is = false;
            level3_4.color = System.Drawing.Color.FromArgb(0xff, 0x33, 0);

            // 红色
            level4.level_name = "状况报警";
            level4.max_value = 2.0 * yuzhi / 2;
            level4.min_value = 2.0 * yuzhi / 2;
            level4.min_is = false;
            level4.max_is = true;
            level4.color = System.Drawing.Color.FromArgb(0xff, 0, 0);

        }          // 系统的初始化

        private void Update_Now_Value()
        {
             // 读取第一个文件和最后一个文件
            try
            {

                for (int j = 0; j < all_xianlan.Count; j++)
                {
                    Xianlan_Max_Min xianlan = (Xianlan_Max_Min)all_xianlan[j];
                    xianlan.max_value = 0;
                    all_xianlan[j] = xianlan;
                }
                ArrayList alldata_text = FileCaozuo.Read_All_Files(data_path, "*.txt");

                string[] jichu_lines = FileCaozuo.Read_All_Line(data_path + alldata_text[0].ToString());                      //  基础数据

                string[] now_lines = FileCaozuo.Read_All_Line(data_path + alldata_text[alldata_text.Count - 1].ToString());   //  当前数据


                string read_time = alldata_text[alldata_text.Count - 1].ToString();
                try
                {
                    DateTime myread_time = DateTime.Parse(read_time.Substring(0, 4) + "-" + read_time.Substring(5, 2) + "-" + read_time.Substring(8, 2) + " " + read_time.Substring(11, 2) + ":" + read_time.Substring(14, 2) + ":" + read_time.Substring(17, 2));
                    DateTime now_time = DateTime.Now;
                    TimeSpan ts1 = now_time - myread_time;

                    if (ts1.TotalMinutes <= 30)
                    {
                        // 系统在线
                        Label_Online_is.Text = "系统在线";
                    }
                    else
                    {
                        // 系统离线
                        Label_Online_is.Text = "系统离线";
                    }

                }
                catch { }



                int count_index = 0;                          // 用来更新计数

                for (int i = 0; i < jichu_lines.Length; i++)
                {
                    //  把数据处理过去
                    try
                    {
                        string jichu_value_string_info = jichu_lines[i];    // 基础信息的整体信息
                        
                        string now_value_string_info = now_lines[i];        // 现在数据的整体信息

                        string pos_string = string_caozuo.Get_Table_String(jichu_value_string_info, 1);     // 位置信息

                        string jichu_value_string = string_caozuo.Get_Table_String(jichu_value_string_info, 2);    // 基础数据字符串

                        string now_value_string = string_caozuo.Get_Table_String(now_value_string_info, 2);

                        double pos = double.Parse(pos_string);                        // 位置

                        

                        double jichu_value = double.Parse(jichu_value_string);         // 基础数据

                        double now_value = double.Parse(now_value_string);           // 目前数据


                        for(int j=0;j<all_xianlan.Count;j++)
                        {
                            Xianlan_Max_Min xianlan=(Xianlan_Max_Min)all_xianlan[j];
                           // xianlan.max_value = 0;

                            if(j==1)
                            {
                                int b = 0;
                            }
                            if(pos>=xianlan.min && pos<=xianlan.max)
                            {
                                // 说明这个数据在某个线缆之内   // 就把这个点放到哪个点种

                                if(count_index>=all_Value.Count)
                                {
                                    // 目前计数大于等于已经有的，说明这个数字要进入进去
                                    double value=Math.Abs(jichu_value - now_value) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                                     pos_value mypos_value=new pos_value();
                                    mypos_value.pos=pos;

                                    if (value <= 0.1)
                                    {
                                        value = 0.12823984;
                                    }
                                    mypos_value.weiyi=value;
                                    all_Value.Add(mypos_value);
                                    count_index++;
                                    if (value >= xianlan.max_value)
                                    {
                                        xianlan.max_value = value;
                                        if(j==1)
                                        {
                                            int b = 0;
                                        }
                                        all_xianlan[j] = xianlan;
                                    }
                                
                                }
                                else
                                {
                                    // 目前计数没有大于已经有的，就直接代替
                                    double value = Math.Abs(jichu_value - now_value) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                                     pos_value mypos_value=new pos_value();
                                    mypos_value.pos=pos;
                                    if (value <= 0.1) value = 0.11239849;
                                    mypos_value.weiyi=value;
                                    all_Value[count_index]=mypos_value;
                                    count_index++;
                                    if (value >= xianlan.max_value)
                                    {
                                        
                                            xianlan.max_value = value;
                                            all_xianlan[j] = xianlan;
                                        
                                    }
                                }

                                
                            }
                        }

                    }
                    catch { }
                }


            }
            catch { }

            // 画面线缆的变化
            count=count+100;
            if (count >= 2000) count = 0;
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[0], circle1);
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[1], circle2);
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[2], circle3);
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[3], circle4);
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[4], circle5);
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[5], circle6);
            Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[6], circle7);
            
        }     // 现在的值

        private void Update_Pos_Panel(Xianlan_Max_Min xianlan_min_max,Panel pos_panel)
        {
           
            Update_Level(xianlan_min_max, pos_panel, level1);
            Update_Level(xianlan_min_max, pos_panel, level2);
            Update_Level(xianlan_min_max, pos_panel, level3);
            Update_Level(xianlan_min_max, pos_panel, level4);
            Update_Level(xianlan_min_max, pos_panel, level1_1);
            Update_Level(xianlan_min_max, pos_panel, level1_2);
            Update_Level(xianlan_min_max, pos_panel, level1_3);
            Update_Level(xianlan_min_max, pos_panel, level1_4);
            Update_Level(xianlan_min_max, pos_panel, level2_1);
            Update_Level(xianlan_min_max, pos_panel, level2_2);
            Update_Level(xianlan_min_max, pos_panel, level2_3);
            Update_Level(xianlan_min_max, pos_panel, level2_4);
            Update_Level(xianlan_min_max, pos_panel, level3_1);
            Update_Level(xianlan_min_max, pos_panel, level3_2);
            Update_Level(xianlan_min_max, pos_panel, level3_3);
            Update_Level(xianlan_min_max, pos_panel, level3_4);
        }

        // 判断一个panel与xianlan_min_max是否在一个Level中，并用Level的颜色赋予值 
        private void Update_Level(Xianlan_Max_Min xianlan_min_max,Panel pos_panel,Level level)
        {


           
            // 如果是最小值
            if(level.max_is==false && level.min_is==true)
            {
                if (xianlan_min_max.max_value < level.max_value)
                {
                    pos_panel.BackColor = level.color;
                   

                    try
                    {

                        try
                        {
                            if (pos_panel.ID == "circle1")
                            {
                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "1号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                                    //if(count==1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='1号坡道状态'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle2")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "2号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                 //   if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);



                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //    Global.builder.Updata("baguangdata", "podaoname='2号坡道状态'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle3")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "3号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                    //if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='3号坡道状态'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle4")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "1号侧斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                   // if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='1号侧斜管'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle5")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "2号侧斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                   // if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='2号侧斜管'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle6")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "3号侧斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                    //if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='3号侧斜管'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle7")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "4号侧斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                  ///  if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='4号侧斜管'", update_cmd);
                                }
                                catch { }

                            }
                        }
                        catch { }
                    }
                    catch { }
                }
               
                return;
            }

            // 如果是大于小于
            if(level.max_is==false && level.min_is==false)
            {
                if(xianlan_min_max.max_value>=level.min_value && xianlan_min_max.max_value<level.max_value)
                {
                    pos_panel.BackColor = level.color;
                    try
                    {
                        
                        try
                        {
                            if (pos_panel.ID == "circle1")
                            {
                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "1号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                   // if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                               
                                        //string[] update_cmd = new string[2];
                                        //update_cmd[0] = "status='" + level.level_name + "'";
                                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                        //if (count == 1000)
                                        //Global.builder.Updata("baguangdata", "podaoname='1号坡道状态'", update_cmd);
                                  }
                                    catch { }
                                
                            }
                            if (pos_panel.ID == "circle2")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "2号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                   // if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                
                               
                                        //string[] update_cmd = new string[2];
                                        //update_cmd[0] = "status='" + level.level_name + "'";
                                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                        //if (count == 1000)
                                        //Global.builder.Updata("baguangdata", "podaoname='2号坡道状态'", update_cmd);
                                    }
                                    catch { }
                                
                            }
                            if (pos_panel.ID == "circle3")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "3号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                 //   if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='3号坡道状态'", update_cmd);
                                }
                                catch { }
                                
                            }
                            if (pos_panel.ID == "circle4")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "1号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                  //  if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                               
                                        //string[] update_cmd = new string[2];
                                        //update_cmd[0] = "status='" + level.level_name + "'";
                                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                        //if (count == 1000)
                                        //Global.builder.Updata("baguangdata", "podaoname='1号测斜管'", update_cmd);
                                    }
                                    catch { }
                                
                            }
                            if (pos_panel.ID == "circle5")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "2号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                   // if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                        //string[] update_cmd = new string[2];
                                        //update_cmd[0] = "status='" + level.level_name + "'";
                                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                        //if (count == 1000)
                                        //Global.builder.Updata("baguangdata", "podaoname='2号测斜管'", update_cmd);
                                    }
                                    catch { }
                                
                            }
                            if (pos_panel.ID == "circle6")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "3号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                  //  if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                               
                                        //string[] update_cmd = new string[2];
                                        //update_cmd[0] = "status='" + level.level_name + "'";
                                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                        //if (count == 1000)
                                        //Global.builder.Updata("baguangdata", "podaoname='3号测斜管'", update_cmd);
                                    }
                                    catch { }
                                
                            }
                            if (pos_panel.ID == "circle7")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "4号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                 //   if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                              
                                        //string[] update_cmd = new string[2];
                                        //update_cmd[0] = "status='" + level.level_name + "'";
                                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                        //if (count == 1000)
                                        //Global.builder.Updata("baguangdata", "podaoname='4号测斜管'", update_cmd);
                                    }
                                    catch { }
                                
                            }
                        }
                        catch { }
                    }
                    catch { }
                }
            }

            // 如果是最大值
            if(level.max_is==true && level.min_is==false)
            {
                if (xianlan_min_max.max_value >= level.max_value )
                {
                    pos_panel.BackColor = level.color;
                    try
                    {

                        try
                        {
                            if (pos_panel.ID == "circle1")
                            {
                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "1号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                   // if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='1号坡道状态'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle2")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "2号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"); 
                                  //  if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);



                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='2号坡道状态'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle3")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "3号坡道状态";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                               //     if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='3号坡道状态'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle4")
                            {

                                // ini.IniWriteValue("1号坡道", "状态", level.level_name);
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "1号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                 //   if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='1号测斜管'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle5")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "2号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                //    if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);

                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='2号测斜管'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle6")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "3号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                              //      if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='3号测斜管'", update_cmd);
                                }
                                catch { }

                            }
                            if (pos_panel.ID == "circle7")
                            {
                                try
                                {
                                    string[] insert_cmd = new string[3];
                                    insert_cmd[0] = "4号测斜管";
                                    insert_cmd[1] = level.level_name;
                                    insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                 //   if (count == 1000)
                                    Global.builder.Insert("baguangdata", insert_cmd);


                                    //string[] update_cmd = new string[2];
                                    //update_cmd[0] = "status='" + level.level_name + "'";
                                    //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                                    //if (count == 1000)
                                    //Global.builder.Updata("baguangdata", "podaoname='4号测斜管'", update_cmd);
                                }
                                catch { }

                            }
                        }
                        catch { }
                    }
                    catch { }
                }
            }
        }
         //   xianlan1.min = 2164;
         //   xianlan1.max = 2317;

         //   xianlan2.min = 2558;
         //   xianlan2.max = 2764;

         //   xianlan3.min = 2934;
         //   xianlan3.max = 3074;

         //   xianlan4.min = 602;
         //   xianlan4.max = 636;

         //   xianlan5.min = 742;
         //   xianlan5.max = 774;

         //   xianlan6.min = 875;
         //   xianlan6.max = 907;

         //   xianlan7.min = 994;
         //   xianlan7.max = 1026;
    }
}