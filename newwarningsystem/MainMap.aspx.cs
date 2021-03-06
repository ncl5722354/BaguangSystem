using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FileOperation;
using System.Collections;
using String_Caozuo;
using System.Data;
using System.Web.Services;

namespace newwarningsystem
{
    public partial class MainMap : System.Web.UI.Page
    {
        public static IniFile ini = new IniFile("D:\\config\\Map.ini");

        public static int update_panel2_count = 1;

        public static DateTime nowupdate_time = new DateTime();

        public static bool set_visible = false;

        public  static double value1 = 0;
        public  static double value2 = 0;
        public  static double value3 = 0;
        public  static double value4 = 0;
        public  static double value5 = 0;

        public static IniFile set_yuzhi = new IniFile("D:\\config\\yuzhi.ini");

        public static IniFile warn_ini = new IniFile("D:\\config\\warning.ini");
        static string value1_string;
        static string value2_string;
        static string value3_string;
        static string value4_string;
        static string value5_string;

        public  static string x = "";
        public  static string y = "";

        public static bool Panel_Chart_Is;
        static  bool warn_po1_is = false;
        static bool warn_po2_is = false;
       static  bool warn_po3_is = false;

       static  bool warn_guan1_is = false;
       static  bool warn_guan2_is = false;
       static  bool warn_guan3_is = false;
       static  bool warn_guan4_is = false;
       System.Timers.Timer warntimer = new System.Timers.Timer();
        
       static HttpContext httpcontext = null;
       
        //System.Threading.Timer warntimer = new System.Threading.Timer(new System.Threading.TimerCallback(Warn_tick),null,1000,5000);
        //Timer warntimer = new Timer();

        protected void Page_Load(object sender, EventArgs e)
        {


            DateTime mytime = DateTime.Now;

            TimeSpan span = mytime - nowupdate_time;


            warntimer.Interval = 5000;
            warntimer.Elapsed += new System.Timers.ElapsedEventHandler(Warn_tick);
            warntimer.Start();

            string lixian_string = "系统离线";
            if(Math.Abs(span.TotalMinutes)>=30)
            {
                lixian_string = "系统离线";
            }
            else
            {
                lixian_string = "系统在线";
            }
            Label_timer.Text = mytime.ToString("yyyy-MM-dd HH:mm:ss")+" "+lixian_string;
            
            Circle_Yanse();    // 界面变化颜色
            Update_Panel2();   // 更新panel2

            y = HiddenField1.Value;
            x = HiddenField2.Value;





           

            

            if (IsPostBack == false)
            {
                TextBox_level1.Text = set_yuzhi.IniReadValue("yuzhi", "1");
                TextBox_level2.Text = set_yuzhi.IniReadValue("yuzhi", "2");
                TextBox_level3.Text = set_yuzhi.IniReadValue("yuzhi", "3");
                TextBox_level4.Text = set_yuzhi.IniReadValue("yuzhi", "4");
                TextBox_level5.Text = set_yuzhi.IniReadValue("yuzhi", "5");
            }

            if (IsPostBack == true )
            {
                set_yuzhi.IniWriteValue("yuzhi", "1", TextBox_level1.Text);
                set_yuzhi.IniWriteValue("yuzhi", "2", TextBox_level2.Text);
                set_yuzhi.IniWriteValue("yuzhi", "3", TextBox_level3.Text);
                set_yuzhi.IniWriteValue("yuzhi", "4", TextBox_level4.Text);
                set_yuzhi.IniWriteValue("yuzhi", "5", TextBox_level5.Text);
                //Response.Redirect("MainMap.aspx");
                try
                {
                    value1 = double.Parse(Set.set_yuzhi.IniReadValue("yuzhi", "1"));
                    value2 = double.Parse(Set.set_yuzhi.IniReadValue("yuzhi", "2"));
                    value3 = double.Parse(Set.set_yuzhi.IniReadValue("yuzhi", "3"));
                    value4 = double.Parse(Set.set_yuzhi.IniReadValue("yuzhi", "4"));
                    value5 = double.Parse(Set.set_yuzhi.IniReadValue("yuzhi", "5"));
                }
                catch { }
            }

            

            

            Label_label1.Text = "小于" + value1.ToString() + "mm";
            Label_label2.Text = "大于" + value1.ToString() + "mm 小于" + value2.ToString() + "mm";
            Label_label3.Text = "大于" + value2.ToString() + "mm 小于" + value5.ToString() + "mm";
            Label_label4.Text = "大于" + value5.ToString()+"mm";

           
            biaozhi1_label.Text = "<" + value1.ToString() + " mm";
            biaozhi2_label.Text = "<" + value2.ToString() + " mm";
            biaozhi3_label.Text = "<" + value3.ToString() + " mm";
            biaozhi4_label.Text = "<" + value5.ToString() + " mm";
            biaozhi5_label.Text = ">=" + value5.ToString() + " mm";
            
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
           // httpcontext = System.Web.HttpContext.Current;
            HttpBrowserCapabilities bc = Request.Browser;
            int a = bc.ScreenPixelsWidth;
            if (Panel_Chart_Is == true)
                Panel_chart.Visible = true;
            if (Panel_Chart_Is == false)
                Panel_chart.Visible = false;

            if (set_visible == true)
                panel_yuzhiset.Visible = true;
            if (set_visible == false)
                panel_yuzhiset.Visible = false;
            try
            {
                //Chart_bingzhuangtu.Style["width"] = (double.Parse(x) * 0.17).ToString() + "px";
                //Chart_bingzhuangtu.Style["height"] = (double.Parse(x) * 0.17).ToString() + "px";
            }
            catch { }
            try
            {
                if (IsPostBack == true)
                {
                    
                }

            }
            catch { }
        }

        private void Circle_Yanse()
        {
            // 计算比例
            float allcount = 0;
            float count1 = 0;
            float count2 = 0;
            float count3 = 0;
            float count4 = 0;
            int warning_count = 0;

            int level = 0;
            string now_update_time = "";

            ArrayList filelist_1 = FileCaozuo.Read_All_Files("D:\\data\\", "*.txt");

            

            string file_jizhun = (string)filelist_1[0];
            string[] jizhun_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_jizhun);

            string file_now = (string)filelist_1[filelist_1.Count - 1];
            string[] now_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_now);

            try
            {
                string nowtime=string_caozuo.Get_Dian_String(file_now,1);
                string day=string_caozuo.Get_HengGang_String(nowtime,1);
                string mytime=string_caozuo.Get_HengGang_String(nowtime,2);
                nowupdate_time = DateTime.Parse(string_caozuo.Get_Xiahuaxian_String(day, 1) + "-" + string_caozuo.Get_Xiahuaxian_String(day, 2) + "-" + string_caozuo.Get_Xiahuaxian_String(day, 3) + " " + string_caozuo.Get_Xiahuaxian_String(mytime, 1) + ":" + string_caozuo.Get_Xiahuaxian_String(mytime, 2) + ":" + string_caozuo.Get_Xiahuaxian_String(mytime, 3));

            }
            catch
            {

            }

            //Chart1.Series[0].Points.Clear();
            double circle1_max = 0; 
            double circle2_max = 0;
            double circle3_max = 0;
            double circle4_max = 0;
            double circle5_max = 0;
            double circle6_max = 0;
            double circle7_max = 0;

            double max_point1 = 0;
            double max_point2 = 0;
            double max_point3 = 0;
            double max_point4 = 0;
            double max_point5 = 0;
            double max_point6 = 0;
            double max_point7 = 0;
            
            Panel_baojing_info.Controls.Clear();
            try
            {
                for (int i = 0; i < jizhun_list.Length; i++)
                {
                    try
                    {
                        
                        string line = now_list[i];
                        string position_string = string_caozuo.Get_Table_String(line, 1);
                        string postion_value_string = string_caozuo.Get_Table_String(line, 2);
                        double positon_value = double.Parse(postion_value_string);
                        double position = double.Parse(position_string);

                        string line_jizhun = jizhun_list[i];
                        string position_string1 = string_caozuo.Get_Table_String(line_jizhun, 1);
                        string postion_value_string1 = string_caozuo.Get_Table_String(line_jizhun, 2);
                        double positon_value1 = double.Parse(postion_value_string1);
                        double position1 = double.Parse(position_string1);


                        double value = Math.Abs(positon_value - positon_value1) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                        value = Math.Round(value, 3);
                        // 
                        if (position >= 2164 && position <= 2317)
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_point1 = position;
                            }

                        }
                        if (position >= 2361 && position <= 2558)
                        {
                            if (value >= circle2_max)
                            {
                                circle2_max = value;
                                max_point2 = position;
                            }
                        }
                        if (position >= 2934 && position <= 3074)
                        {
                            if (value >= circle3_max)
                            {
                                circle3_max = value;
                                max_point3 = position;
                            }
                        }
                        if (position >= 602 && position <= 675)
                        {
                            if (value >= circle4_max)
                            {
                                circle4_max = value;
                                max_point4 = position;
                            }
                        }
                        if (position >= 742 && position <= 810)
                        {
                            if (value >= circle5_max)
                            {
                                circle5_max = value;
                                max_point5 = position;
                            }
                        }
                        if (position >= 875 && position <= 939)
                        {
                            if (value >= circle6_max)
                            {
                                circle6_max = value;
                                max_point6 = position;
                            }
                        }
                        if (position >= 994 && position <= 1069)
                        {
                            if (value >= circle7_max)
                            {
                                circle7_max = value;
                                max_point7 = position;
                            }
                        }

                        if((position >= 2164 && position <= 2317)||(position >= 2361 && position <= 2558)||(position >= 2934 && position <= 3074)||(position >= 602 && position <= 675)||(position >= 742 && position <= 810)||(position >= 875 && position <= 939)||(position >= 994 && position <= 1069))
                        {
                            allcount++;
                            if (value < value1)
                                count1++;
                            else if (value < value2)
                                count2++;
                            else if (value < value5)
                                count3++;
                            else if (value >= value5)
                            {
                                count4++;
                                
                                warning_count++;
                                // 地点
                                Label labelposition = new Label();
                                if (position >= 2164 && position <= 2317)
                                {
                                    labelposition.Text = "坡道1";
                                }

                                if (position >= 2361 && position <= 2558)
                                {
                                    labelposition.Text = "坡道2";
                                }

                                if (position >= 2934 && position <= 3074)
                                {
                                    labelposition.Text = "坡道3";
                                }

                                if (position >= 602 && position <= 675)
                                {
                                    labelposition.Text = "测斜管1";
                                }

                                if (position >= 742 && position <= 810)
                                {
                                    labelposition.Text = "测斜管2";
                                }

                                if (position >= 875 && position <= 939)
                                {
                                    labelposition.Text = "测斜管3";
                                }

                                if (position >= 994 && position <= 1069)
                                {
                                    labelposition.Text = "测斜管4";
                                }

                                labelposition.ForeColor = System.Drawing.Color.White;
                                labelposition.Style["z-index"] = "8";
                                labelposition.Style["left"] = "5%";
                                labelposition.Style["top"] = (warning_count * 30).ToString() + "%";
                                labelposition.Style["width"] = "20%";
                                labelposition.Style["position"] = "absolute";
                                Panel_baojing_info.Controls.Add(labelposition);

                                // 位置
                                Label pos = new Label();
                                pos.Text = position_string+"m";
                                pos.ForeColor = System.Drawing.Color.White;
                                pos.Style["z-index"] = "8";
                                pos.Style["left"] = "40%";
                                pos.Style["top"] = (warning_count * 30).ToString() + "%";
                                pos.Style["width"] = "20%";
                                pos.Style["position"] = "absolute";
                                Panel_baojing_info.Controls.Add(pos);

                                // 位移值
                                Label labelvalue = new Label();
                                labelvalue.Text = value.ToString()+"mm";
                                labelvalue.ForeColor = System.Drawing.Color.White;
                                labelvalue.Style["z-index"] = "8";
                                labelvalue.Style["left"] = "74%";
                                labelvalue.Style["top"] = (warning_count * 30).ToString() + "%";
                                labelvalue.Style["width"] = "20%";
                                labelvalue.Style["position"] = "absolute";
                                Panel_baojing_info.Controls.Add(labelvalue);

                            }
                           
                        }
                    }
                    catch { break; }


                }

                if (warning_count==0)
                {
                    warning_count++;
                    Label labelposition = new Label();
                    labelposition.Text = "无";
                    labelposition.ForeColor = System.Drawing.Color.White;
                    labelposition.Style["z-index"] = "8";
                    labelposition.Style["left"] = "5%";
                    labelposition.Style["top"] = (warning_count * 30).ToString() + "%";
                    labelposition.Style["width"] = "20%";
                    labelposition.Style["position"] = "absolute";
                    Panel_baojing_info.Controls.Add(labelposition);

                    // 位置
                    Label pos = new Label();
                    pos.Text = "无";
                    pos.ForeColor = System.Drawing.Color.White;
                    pos.Style["z-index"] = "8";
                    pos.Style["left"] = "40%";
                    pos.Style["top"] = (warning_count * 30).ToString() + "%";
                    pos.Style["width"] = "20%";
                    pos.Style["position"] = "absolute";
                    Panel_baojing_info.Controls.Add(pos);

                    // 位移值
                    Label labelvalue = new Label();
                    labelvalue.Text = "无";
                    labelvalue.ForeColor = System.Drawing.Color.White;
                    labelvalue.Style["z-index"] = "8";
                    labelvalue.Style["left"] = "75%";
                    labelvalue.Style["top"] = (warning_count * 30).ToString() + "%";
                    labelvalue.Style["width"] = "20%";
                    labelvalue.Style["position"] = "absolute";
                    Panel_baojing_info.Controls.Add(labelvalue);
                }

                

                if (circle1_max <= value1)
                {
                   
                    Circle1.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao1.Text = "坡道1 状态：稳定";
                    warn_po1_is = false;
                    level = 0;
                }
                else if (circle1_max <= value2)
                {
                    Circle1.BackColor = System.Drawing.Color.FromArgb(10,245, 0);
                    Label_title_podao1.Text = "坡道1 状态：良好";
                    warn_po1_is = false;
                    level = 1;
                }
                else if (circle1_max <= value3)
                {
                    Circle1.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao1.Text = "坡道1 状态：正常";
                    warn_po1_is = false;
                    level = 2;
                }
                else if (circle1_max < value5)
                {
                    Circle1.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao1.Text = "坡道1 状态：正常";
                    warn_po1_is = false;
                    level = 3;
                }
                else if (circle1_max >= value5)
                {
                    Circle1.BackColor = System.Drawing.Color.Red;
                    Label_title_podao1.Text = "坡道1 状态：位移预警";
                    warn_po1_is = true;
                    level = 4;


                }


                if (circle2_max <= value1)
                {
                    Circle2.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao2.Text = "坡道2 状态：稳定";
                    warn_po2_is = false;
                    //level = 0;
                }
                else if (circle2_max <= value2)
                {
                    Circle2.BackColor = System.Drawing.Color.FromArgb(10,245 , 0);
                    Label_title_podao2.Text = "坡道2 状态：良好";
                    warn_po2_is = false;
                    if(level<=1)
                    level = 1;
                }
                else if (circle2_max <= value3)
                {
                    Circle2.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao2.Text = "坡道2 状态：正常";
                    warn_po2_is = false;
                    if (level <= 2)
                    level = 2;
                }
                else if (circle2_max < value5)
                {
                    Circle2.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao2.Text = "坡道2 状态：正常";
                    warn_po2_is = false;
                    if (level <= 3)
                    level = 3;
                }
                else if (circle2_max >= value5)
                {
                    Circle2.BackColor = System.Drawing.Color.Red;
                    Label_title_podao2.Text = "坡道2 状态：位移预警";
                    warn_po2_is = true;
                    if (level <= 4)
                    level = 4;
                }

                if (circle3_max <= value1)
                {
                    Circle3.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao3.Text = "坡道3 状态：稳定";
                    warn_po3_is = false;
                    
                }
                else if (circle3_max <= value2)
                {
                    Circle3.BackColor = System.Drawing.Color.FromArgb(10,245 , 0);
                    Label_title_podao3.Text = "坡道3 状态：良好";
                    warn_po3_is = false;
                    if (level <= 1)
                    level = 1;
                }
                else if (circle3_max <= value3)
                {
                    Circle3.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao3.Text = "坡道3 状态：正常";
                    warn_po3_is = false;
                    if (level <= 2)
                    level = 2;
                }
                else if (circle3_max < value5)
                {
                    Circle3.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao3.Text = "坡道3 状态：正常";
                    warn_po3_is = false;
                    if (level <= 3)
                    level = 3;
                }
                else if (circle3_max >= value5)
                {
                    Circle3.BackColor = System.Drawing.Color.Red; 
                    Label_title_podao3.Text = "坡道3 状态：位移预警";
                    warn_po3_is = true;
                    if (level <= 4)
                    level = 4;
                }

                if (circle4_max <= value1)
                {
                    Circle4.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao4.Text = "测斜管1 状态：稳定";
                   warn_guan1_is=false;
                    //level = 0;
                }
                else if (circle4_max <= value2)
                {
                    Circle4.BackColor = System.Drawing.Color.FromArgb(10,245 , 0);
                    Label_title_podao4.Text = "测斜管1 状态：良好";
                    warn_guan1_is=false;
                    if (level <= 1)
                    level = 1;
                }
                else if (circle4_max <= value3)
                {
                    Circle4.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao4.Text = "测斜管1 状态：正常";
                    warn_guan1_is=false;
                    if (level <= 2)
                    level = 2;
                }
                else if (circle4_max < value5)
                {
                    Circle4.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao4.Text = "测斜管1 状态：正常";
                    warn_guan1_is=false;
                    if (level <= 3)
                    level = 3;
                }
                else if (circle4_max >= value5)
                {
                    Circle4.BackColor = System.Drawing.Color.Red;
                    Label_title_podao4.Text = "测斜管3 状态：位移预警";
                    warn_guan1_is=true;
                    if (level <= 4)
                    level = 4;
                }

                if (circle5_max <= value1)
                {
                    Circle5.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao5.Text = "测斜管2 状态：稳定";
                    warn_guan2_is=false;
                    //level = 0;
                }
                else if (circle5_max <= value2)
                {
                    Circle5.BackColor = System.Drawing.Color.FromArgb(10,245 , 0);
                    Label_title_podao5.Text = "测斜管2 状态：良好";
                     warn_guan2_is=false;
                    if (level <= 1)
                    level = 1;
                }
                else if (circle5_max <= value3)
                {
                    Circle5.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao5.Text = "测斜管2 状态：正常";
                     warn_guan2_is=false;
                    if (level <= 2)
                    level = 2;
                }
                else if (circle5_max < value5)
                {
                    Circle5.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao5.Text = "测斜管2 状态：正常";
                     warn_guan2_is=false;
                    if (level <= 3)
                    level = 3;
                }
                else if (circle5_max >= value5)
                {
                    Circle5.BackColor = System.Drawing.Color.Red;
                    Label_title_podao5.Text = "测斜管2 状态：位移预警";
                     warn_guan2_is=true;
                    if (level <= 4)
                    level = 4;
                }

                if (circle6_max <= value1)
                {
                    Circle6.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao6.Text = "测斜管3 状态：稳定";
                     warn_guan3_is=false;
                    //level = 0;
                }
                else if (circle6_max <= value2)
                {
                    Circle6.BackColor = System.Drawing.Color.FromArgb(10,245 , 0);
                    Label_title_podao6.Text = "测斜管3 状态：良好";
                    warn_guan3_is=false;
                    if (level <= 1)
                    level = 1;
                }
                else if (circle6_max <= value3)
                {
                    Circle6.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao6.Text = "测斜管3 状态：正常";
                    warn_guan3_is=false;
                    if (level <= 2)
                    level = 2;
                }
                else if (circle6_max < value5)
                {
                    Circle6.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao6.Text = "测斜管3 状态：正常";
                    warn_guan3_is=false;
                    if (level <= 3)
                    level = 3;
                }
                else if (circle6_max >= value5)
                {
                    Circle6.BackColor = System.Drawing.Color.Red;
                    Label_title_podao6.Text = "测斜管3 状态：位移预警";
                    warn_guan3_is=true;
                    if (level <= 4)
                    level = 4;
                }

                if (circle7_max <= value1)
                {
                    Circle7.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                    Label_title_podao7.Text = "测斜管4 状态：稳定";
                    warn_guan4_is=false;
                    //level = 0;
                }
                else if (circle7_max <= value2)
                {
                    Circle7.BackColor = System.Drawing.Color.FromArgb(10,245 , 0);
                    Label_title_podao7.Text = "测斜管4 状态：良好";
                     warn_guan4_is=false;
                    if (level <= 1)
                    level = 1;
                }
                else if (circle7_max <= value3)
                {
                    Circle7.BackColor = System.Drawing.Color.FromArgb(30,225 , 0);
                    Label_title_podao7.Text = "测斜管4 状态：正常";
                     warn_guan4_is=false;
                    if (level <= 2)
                    level = 2;
                }
                else if (circle7_max < value5)
                {
                    Circle7.BackColor = System.Drawing.Color.FromArgb(40,215 , 0);
                    Label_title_podao7.Text = "测斜管4 状态：正常";
                     warn_guan4_is=false;
                    if (level <= 3)
                    level = 3;

                }
                else if (circle7_max >= value5)
                {
                    Circle7.BackColor = System.Drawing.Color.Red;
                    Label_title_podao7.Text = "测斜管4 状态：位移预警";
                     warn_guan4_is=true;
                    if (level <= 4)
                    level = 4;
                }

                if (level == 0)
                {
                    Label_baojingshuoming1.Text = "整体状况：稳定";
                    Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 1)
                {
                    Label_baojingshuoming1.Text = "整体状况：良好";
                    Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 2)
                {
                    Label_baojingshuoming1.Text = "整体状况：正常";
                    Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 3)
                {
                    Label_baojingshuoming1.Text = "整体状况：正常";
                    Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 4)
                {
                    Label_baojingshuoming1.Text = "整体状况：报警";
                    Label_baojingshuoming1.ForeColor = System.Drawing.Color.Red;
                }


                // 有关坡道的
                label_quyu1.Text = "坡道1 ";// +Math.Round(max_point1, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle1_max, 3).ToString() + "mm";
                label_quyu2.Text = "坡道2 ";// +Math.Round(max_point2, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle2_max, 3).ToString() + "mm";
                label_quyu3.Text = "坡道3 ";// +Math.Round(max_point3, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle3_max, 3).ToString() + "mm";
                label_quyu4.Text = "测斜管1 ";// +Math.Round(max_point4, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle4_max, 3).ToString() + "mm";
                label_quyu5.Text = "测斜管2 ";// +Math.Round(max_point5, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle5_max, 3).ToString() + "mm";
                label_quyu6.Text = "测斜管3 ";// +Math.Round(max_point6, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle6_max, 3).ToString() + "mm";
                label_quyu7.Text = "测斜管4 ";// +Math.Round(max_point7, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle7_max, 3).ToString() + "mm";

                label_weiyi1.Text = Math.Round(circle1_max, 3).ToString() + "mm";
                label_weiyi2.Text = Math.Round(circle2_max, 3).ToString() + "mm";
                label_weiyi3.Text = Math.Round(circle3_max, 3).ToString() + "mm";
                label_weiyi4.Text = Math.Round(circle4_max, 3).ToString() + "mm";
                label_weiyi5.Text = Math.Round(circle5_max, 3).ToString() + "mm";
                label_weiyi6.Text = Math.Round(circle6_max, 3).ToString() + "mm";
                label_weiyi7.Text = Math.Round(circle7_max, 3).ToString() + "mm";

                label_weizhi1.Text = Math.Round(max_point1, 1).ToString().PadLeft(6, '0') + "m";
                label_weizhi2.Text = Math.Round(max_point2, 1).ToString().PadLeft(6, '0') + "m";
                label_weizhi3.Text = Math.Round(max_point3, 1).ToString().PadLeft(6, '0') + "m";
                label_weizhi4.Text = Math.Round(max_point4, 1).ToString().PadLeft(6, '0') + "m";
                label_weizhi5.Text = Math.Round(max_point5, 1).ToString().PadLeft(6, '0') + "m";
                label_weizhi6.Text = Math.Round(max_point6, 1).ToString().PadLeft(6, '0') + "m";
                label_weizhi7.Text = Math.Round(max_point7, 1).ToString().PadLeft(6, '0') + "m";

                if (allcount != 0)
                {
                    Label_baifenbi1.Text = (Math.Round(count1 / allcount * 100, 2)).ToString() + "%";
                    Label_baifenbi2.Text = (Math.Round(count2 / allcount * 100, 2)).ToString() + "%";
                    Label_baifenbi3.Text = (Math.Round(count3 / allcount * 100, 2)).ToString() + "%";
                    Label_baifenbi4.Text = (Math.Round(count4 / allcount * 100, 2)).ToString() + "%";

                    Panel_value1.Style["width"] = (70 * (count1 / allcount)).ToString() + "%";
                    Panel_value2.Style["width"] = (70 * (count2 / allcount)).ToString() + "%";
                    Panel_value3.Style["width"] = (70 * (count3 / allcount)).ToString() + "%";
                    Panel_value4.Style["width"] = (70 * (count4 / allcount)).ToString() + "%";
                }
            }
            catch { }

        }           

        private void Update_Panel2()
        {
           
            if(IsPostBack==false)
            {
                int a = 0;
            }
            Panel2.Controls.Clear();

            // 加入一个panel3
            Panel panel3 = new Panel();
            panel3.Style["position"] = "absolute";
            panel3.Style["top"] = "10%";
            panel3.Style["left"] = "0%";
            panel3.Style["width"] = "99%";
            panel3.Style["height"] = "85%";
            panel3.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
            panel3.BorderColor = System.Drawing.Color.Black;
            panel3.BorderStyle = BorderStyle.Solid;
            panel3.BorderWidth = 3;
            Panel2.Controls.Add(panel3);
            if(update_panel2_count==1)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size= FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point1.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }
            if (update_panel2_count == 2)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size = FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point2.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }
            if (update_panel2_count == 3)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size = FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point3.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }
            if (update_panel2_count == 4)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size = FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point4.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }
            if (update_panel2_count == 5)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size = FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point5.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }
            if (update_panel2_count == 6)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size = FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point6.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }
            if (update_panel2_count == 7)
            {
                Label mylabel = new Label();
                mylabel.Style["position"] = "absolute";
                mylabel.Font.Size = FontUnit.Medium;
                mylabel.Style["top"] = "1%";
                mylabel.Style["left"] = "25%";
                mylabel.Style["z-index"] = "5";
                mylabel.Text = Image_point7.ToolTip;
                mylabel.ForeColor = System.Drawing.Color.White;
                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                Panel2.Controls.Add(mylabel);
            }

            ArrayList filelist_1 = FileCaozuo.Read_All_Files("D:\\data\\", "*.txt");

            // 读取第一个文件作为基准
            string file_jizhun = (string)filelist_1[0];
            string[] jizhun_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_jizhun);

            string file_now = (string)filelist_1[filelist_1.Count - 1];
            string[] now_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_now);

            double circle1_max = 0; 
            double circle2_max = 0;
            double circle3_max = 0;
            double circle4_max = 0;
            double circle5_max = 0;
            double circle6_max = 0;
            double circle7_max = 0;
            double count = 0;
            string max_position="";
            //Chart1.Series.Clear();
            //Chart1.Series.Add("坡道1");
            //Chart1.Series.Add("坡道2");
            //Chart1.Series.Add("坡道3");
            //Chart1.Series.Add("测斜管1");
            //Chart1.Series.Add("测斜管2");
            //Chart1.Series.Add("测斜管3");
            //Chart1.Series.Add("测斜管4");
            panel3.Controls.Clear();
            try
            {
                for (int i = 0; i < jizhun_list.Length; i++)
                {
                    try
                    {
                        string line = now_list[i];
                        string position_string = string_caozuo.Get_Table_String(line, 1);
                        string postion_value_string = string_caozuo.Get_Table_String(line, 2);
                        double positon_value = double.Parse(postion_value_string);
                        double position = double.Parse(position_string);

                        string line_jizhun = jizhun_list[i];
                        string position_string1 = string_caozuo.Get_Table_String(line_jizhun, 1);
                        string postion_value_string1 = string_caozuo.Get_Table_String(line_jizhun, 2);
                        double positon_value1 = double.Parse(postion_value_string1);
                        double position1 = double.Parse(position_string1);


                        double value =Math.Abs(positon_value - positon_value1) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                        value = Math.Round(value, 3);
                        
                        // 
                        //Chart1.Series.Clear();
                        if (position >= 2164 && position <= 2317)
                        {

                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }

                            if(value>=value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count*7).ToString()+"%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString()+"mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
           
                                count++;
                            }
                            //Chart1.Titles[0].Text = Image_point1.ToolTip;
                            //Chart1.Series[0].Points.AddXY(position, value);
                        }
                        if (position >= 2361 && position <= 2558)
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }
                            if (value >= value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count * 7).ToString() + "%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString() + "mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
                                count++;
                            }
                            //Chart1.Titles[0].Text = Image_point2.ToolTip;
                            //Chart1.Series[1].Points.AddXY(position, value);
                        }
                        if (position >= 2934 && position <= 3074)
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }
                            if (value >= value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count * 7).ToString() + "%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString() + "mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
                                count++;
                            }
                            //Chart1.Titles[0].Text = Image_point3.ToolTip;
                            //Chart1.Series[2].Points.AddXY(position, value);
                        }
                        if (position >= 602 && position <= 675 )
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }
                            if (value >= value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count * 7).ToString() + "%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString() + "mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
                                count++;
                            }
                           // Chart1.Titles[0].Text = Image_point4.ToolTip;
                            //Chart1.Series[3].Points.AddXY(position, value);
                        }
                        if (position >= 742 && position <= 810 )
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }
                            if (value >= value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count * 7).ToString() + "%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString() + "mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
                                count++;
                            }
                            //Chart1.Titles[0].Text = Image_point5.ToolTip;
                            //Chart1.Series[4].Points.AddXY(position, value);
                        }
                        if (position >= 875 && position <= 939)
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }
                            if (value >= value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count * 7).ToString() + "%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString() + "mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
                                count++;
                            }
                            //Chart1.Titles[0].Text = Image_point6.ToolTip;
                            //Chart1.Series[5].Points.AddXY(position, value);
                        }
                        if (position >= 994 && position <= 1069 )
                        {
                            if (value >= circle1_max)
                            {
                                circle1_max = value;
                                max_position = position_string;
                            }
                            if (value >= value5)
                            {
                                Label mylabel = new Label();
                                mylabel.Style["position"] = "absolute";
                                mylabel.Font.Size = FontUnit.Medium;
                                mylabel.Style["top"] = (count * 7).ToString() + "%";
                                mylabel.Style["left"] = "0%";
                                mylabel.Style["z-index"] = "5";
                                mylabel.Text = "报警信息 位置：" + position_string + "m " + "位移量：" + value.ToString() + "mm";
                                mylabel.ForeColor = System.Drawing.Color.Red;
                                mylabel.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                                panel3.Controls.Add(mylabel);
                                count++;
                            }
                           
                        }

                    }
                    catch { break; }
                    
                       
                    

                }
                Label label = new Label();
                label.Style["position"] = "absolute";
                label.Font.Size = FontUnit.Medium;
                label.Style["top"] = (count * 7).ToString() + "%";
                label.Style["left"] = "0%";
                label.Style["z-index"] = "5";
                label.Text = "位移最大值 位置：" + max_position + "m " + "位移量：" + circle1_max.ToString() + "mm";
                label.ForeColor = System.Drawing.Color.White;
                label.BackColor = System.Drawing.Color.FromArgb(0, 255, 0);
                panel3.Controls.Add(label);
                count++;
            }
            catch { }
            
        }



        private  void Warn_tick(object sender,System.Timers.ElapsedEventArgs e)
        {
            //int a=0;

            //int a = 0;

            //if(warn_po1_is==false)
            //{
            //    if (httpcontext != null)
            //    {
            //        Response.Write("<script type='text/javascript'>alert('1');</script>");
            //    }
            //}
            //if(warn_po1_is==true)
            //{

            //}

            
        }


        public static string Return_Warning_Is(string weizhi)
        {
            bool warn_is=false;
            if (weizhi == "1") return warn_po1_is.ToString();
            if (weizhi == "2") return warn_po2_is.ToString();
            if (weizhi == "3") return warn_po3_is.ToString();

            if (weizhi == "4") return warn_guan1_is.ToString();
            if (weizhi == "5") return warn_guan2_is.ToString();
            if (weizhi == "6") return warn_guan3_is.ToString();
            if (weizhi == "7") return warn_guan4_is.ToString();

            return warn_is.ToString();
        }






        protected void Imagemap_DataBinding(object sender, EventArgs e)
        {

        }

        public string Point1_visibile()
        {
            Panel2.Visible = false;
            return "0";
        }
       

        protected void Image_point4_Click(object sender, ImageClickEventArgs e)
        {
           // zhuziview.start1 = 602;
           // zhuziview.end1 = 638;
           // zhuziview.start2 = 638;
           // zhuziview.end2 = 674;
           
           // ImageButton mybutton = (ImageButton)sender;
           // zhuziview.chafen_title = mybutton.ToolTip;
           //// Server.Transfer("zhuziview.aspx");
           // Response.Write("<script>window.open(zhuziview.aspx','_blank')</script>");

            zhuziview.start1 = 602;
            zhuziview.end1 = 638;
            zhuziview.start2 = 638;
            zhuziview.end2 = 674;
            ImageButton mybutton = (ImageButton)sender;
            zhuziview.chafen_title = mybutton.ToolTip;
            // Server.Transfer("zhuziview.aspx");
            // Response.Write("<script>window.showModelessDialog('zhuziview.aspx')</script>");
            Response.Write("<script>window.open('zhuziview.aspx','_blank')</script>");
        }

        protected void Image_point5_Click(object sender, ImageClickEventArgs e)
        {
            zhuziview.start1 = 742;
            zhuziview.end1 = 776;
            zhuziview.start2 = 776;
            zhuziview.end2 = 810;
            ImageButton mybutton = (ImageButton)sender;
            zhuziview.chafen_title = mybutton.ToolTip;
           // Server.Transfer("zhuziview.aspx");
           // Response.Write("<script>window.showModelessDialog('zhuziview.aspx')</script>");
            Response.Write("<script>window.open('zhuziview.aspx','_blank')</script>");
        }

        protected void Image_point6_Click(object sender, ImageClickEventArgs e)
        {
            zhuziview.start1 = 875;
            zhuziview.end1 = 907;
            zhuziview.start2 = 907;
            zhuziview.end2 = 939;
            ImageButton mybutton = (ImageButton)sender;
            zhuziview.chafen_title = mybutton.ToolTip;
            //Server.Transfer("zhuziview.aspx");
            Response.Write("<script>window.open('zhuziview.aspx','_blank')</script>");
        }

        protected void Image_point7_Click(object sender, ImageClickEventArgs e)
        {
            zhuziview.start1 = 994;
            zhuziview.end1 = 1031.5;
            zhuziview.start2 = 1031.5;
            zhuziview.end2 = 1069;
            ImageButton mybutton = (ImageButton)sender;
            zhuziview.chafen_title = mybutton.ToolTip;
           // Server.Transfer("zhuziview.aspx");
            Response.Write("<script>window.open('zhuziview.aspx','_blank')</script>");
            //Response.Redirect("zhuziview.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Image_point1_Click(object sender, ImageClickEventArgs e)
        {
            SubMap.pic_uri = "/Resource/1.png";
            SubMap.map_name = "一号坡";
            ImageButton mybutton = (ImageButton)sender;
            SubMap.chafen_title = mybutton.ToolTip;
            
            SubMap.start1 = 2164;
            SubMap.end2 = 2317;
            Response.Write("<script>window.open('SubMap.aspx','_blank')</script>");
           // Response.Redirect("SubMap.aspx");
        }

        protected void Image_point2_Click(object sender, ImageClickEventArgs e)
        {
            SubMap.pic_uri = "/Resource/2.png";
            SubMap.map_name = "二号坡";
            ImageButton mybutton = (ImageButton)sender;
            SubMap.chafen_title = mybutton.ToolTip;
            
            SubMap.start1 = 2361;
            SubMap.end2 = 2558;
            Response.Write("<script>window.open('SubMap.aspx','_blank')</script>");
        }

        protected void Image_point3_Click(object sender, ImageClickEventArgs e)
        {
            SubMap.pic_uri = "/Resource/3.png";
            SubMap.map_name = "三号坡";
            ImageButton mybutton = (ImageButton)sender;
            SubMap.chafen_title = mybutton.ToolTip;
            
            SubMap.start1 = 2934;
            SubMap.end2 = 3074;
            Response.Write("<script>window.open('SubMap.aspx','_blank')</script>");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>window.open('report.aspx','_blank')</script>");
           // Response.Redirect("report.aspx");
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            Image_point1.Visible = false;
        }

        protected void timer2_Tick1(object sender, EventArgs e)
        {
           
        }

        protected void UpdatePanel4_DataBinding(object sender, EventArgs e)
        {

        }

        protected void timer3_Tick(object sender, EventArgs e)
        {
            if (update_panel2_count >= 7) update_panel2_count = 1;
            update_panel2_count++;
            
        }

        protected void image_graft_Click(object sender, ImageClickEventArgs e)
        {
            //if(Panel_Chart_Is==true)
            //{
            //    Panel_Chart_Is = false;
            //}
            //else if(Panel_Chart_Is==false)
            //{
            //    Panel_Chart_Is = true;
            //}
            Response.Redirect("Chart.aspx");
        }

        protected void Image_set_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("Set.aspx");
            //Response.Write("<script>window.showModelessDialog('Set.aspx')</script>");
           // if (Login.can_edit == false) return;
            if(set_visible==true)
            {
                set_visible =false;
            }
            else if(set_visible == false)
            {
                set_visible = true;
            }
        }

        protected void Image_baojing_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.open('report.aspx','_blank')</script>");
        }

        protected void TextBox_level1_TextChanged(object sender, EventArgs e)
        {
            value1_string = TextBox_level1.Text;
        }

        protected void TextBox_level2_TextChanged(object sender, EventArgs e)
        {
            value2_string = TextBox_level2.Text;
        }

        protected void TextBox_level3_TextChanged(object sender, EventArgs e)
        {
            value3_string = TextBox_level3.Text;
        }

        protected void TextBox_level4_TextChanged(object sender, EventArgs e)
        {
            value4_string = TextBox_level4.Text;
        }

        protected void TextBox_level5_TextChanged(object sender, EventArgs e)
        {
            value5_string = TextBox_level5.Text;
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton_baobiao_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.open('report.aspx','_blank')</script>");
        }

        protected void ImageButton_chaxun_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>window.open('Chart.aspx','_blank')</script>");
            //Response.Redirect("Chart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (set_visible == true)
            {
                set_visible = false;
            }
            else if (set_visible == false)
            {
                set_visible = true;
            }
        }

        protected void mimaset_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.open('userpassword.aspx','_blank')</script>");
        }

        [WebMethod]
        public static void Insert_Warning_info(string position)
        {

        }
    }
}