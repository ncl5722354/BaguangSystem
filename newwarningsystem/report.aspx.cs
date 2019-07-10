using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.Reporting.WebForms;
using FileOperation;
using System.Collections;
using String_Caozuo;
using System.IO;

namespace newwarningsystem
{
    public partial class report : System.Web.UI.Page
    {
        //DataSet ds = new DataSet(); 

        public static DateTime selected_date = DateTime.Now;
        public static DateTime selected_old = DateTime.Parse("1900-01-01");

        DataTable dt = new DataTable();
        double circle1_max = 0; 
        double circle2_max = 0;
        double circle3_max = 0;
        double circle4_max = 0;
        double circle5_max = 0;
        double circle6_max = 0;
        double circle7_max = 0;

        string max_pos1 = "";
        string max_pos2 = "";
        string max_pos3 = "";
        string max_pos4 = "";
        string max_pos5 = "";
        string max_pos6 = "";
        string max_pos7 = "";

        static double value1 = 0;
        static double value2 = 0;
        static double value3 = 0;
        static double value4 = 0;
        static double value5 = 0;
            double count = 0;
            string max_position="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                
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
            Circle_Yanse();
            user_Chart();
            
        }
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (this.DesignMode == true)
            {
                this.EnsureChildControls();
            }
            this.Page.RegisterRequiresControlState(this);
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

            ArrayList filelist_1 = FileCaozuo.Read_All_Files("D:\\data\\", "*.txt");



            string file_jizhun = (string)filelist_1[0];
            string[] jizhun_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_jizhun);

            string file_now = (string)filelist_1[filelist_1.Count - 1];
            string[] now_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_now);
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
            //Panel_baojing_info.Controls.Clear();
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

                        if ((position >= 2164 && position <= 2317) || (position >= 2361 && position <= 2558) || (position >= 2934 && position <= 3074) || (position >= 602 && position <= 675) || (position >= 742 && position <= 810) || (position >= 875 && position <= 939) || (position >= 994 && position <= 1069))
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
                                    labelposition.Text = "管道1";
                                }

                                if (position >= 742 && position <= 810)
                                {
                                    labelposition.Text = "管道2";
                                }

                                if (position >= 875 && position <= 939)
                                {
                                    labelposition.Text = "管道3";
                                }

                                if (position >= 994 && position <= 1069)
                                {
                                    labelposition.Text = "管道4";
                                }

                                labelposition.ForeColor = System.Drawing.Color.White;
                                labelposition.Style["z-index"] = "8";
                                labelposition.Style["left"] = "5%";
                                labelposition.Style["top"] = (warning_count * 30).ToString() + "%";
                                labelposition.Style["width"] = "20%";
                                labelposition.Style["position"] = "absolute";
                                //Panel_baojing_info.Controls.Add(labelposition);

                                // 位置
                                Label pos = new Label();
                                pos.Text = position_string + "m";
                                pos.ForeColor = System.Drawing.Color.White;
                                pos.Style["z-index"] = "8";
                                pos.Style["left"] = "40%";
                                pos.Style["top"] = (warning_count * 30).ToString() + "%";
                                pos.Style["width"] = "20%";
                                pos.Style["position"] = "absolute";
                                //Panel_baojing_info.Controls.Add(pos);

                                // 位移值
                                Label labelvalue = new Label();
                                labelvalue.Text = value.ToString() + "mm";
                                labelvalue.ForeColor = System.Drawing.Color.White;
                                labelvalue.Style["z-index"] = "8";
                                labelvalue.Style["left"] = "74%";
                                labelvalue.Style["top"] = (warning_count * 30).ToString() + "%";
                                labelvalue.Style["width"] = "20%";
                                labelvalue.Style["position"] = "absolute";
                               // Panel_baojing_info.Controls.Add(labelvalue);

                            }

                        }
                    }
                    catch { break; }


                }

                if (warning_count == 0)
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
                    //Panel_baojing_info.Controls.Add(labelposition);

                    // 位置
                    Label pos = new Label();
                    pos.Text = "无";
                    pos.ForeColor = System.Drawing.Color.White;
                    pos.Style["z-index"] = "8";
                    pos.Style["left"] = "40%";
                    pos.Style["top"] = (warning_count * 30).ToString() + "%";
                    pos.Style["width"] = "20%";
                    pos.Style["position"] = "absolute";
                   // Panel_baojing_info.Controls.Add(pos);

                    // 位移值
                    Label labelvalue = new Label();
                    labelvalue.Text = "无";
                    labelvalue.ForeColor = System.Drawing.Color.White;
                    labelvalue.Style["z-index"] = "8";
                    labelvalue.Style["left"] = "75%";
                    labelvalue.Style["top"] = (warning_count * 30).ToString() + "%";
                    labelvalue.Style["width"] = "20%";
                    labelvalue.Style["position"] = "absolute";
                   // Panel_baojing_info.Controls.Add(labelvalue);
                }


                if (circle1_max <= value1)
                {
                    //Circle1.BackColor = System.Drawing.Color.DarkBlue;
                    //Label_title_podao1.Text = "坡道1 状态：稳定";
                    level = 0;
                }
                else if (circle1_max <= value2)
                {
                    //Circle1.BackColor = System.Drawing.Color.Blue;
                    //Label_title_podao1.Text = "坡道1 状态：良好";
                    level = 1;
                }
                else if (circle1_max <= value3)
                {
                    //Circle1.BackColor = System.Drawing.Color.LightGreen;
                    //Label_title_podao1.Text = "坡道1 状态：正常";
                    level = 2;
                }
                else if (circle1_max < value5)
                {
                    //Circle1.BackColor = System.Drawing.Color.Yellow;
                    //Label_title_podao1.Text = "坡道1 状态：正常";
                    level = 3;
                }
                else if (circle1_max >= value5)
                {
                   // Circle1.BackColor = System.Drawing.Color.Red;
                   // Label_title_podao1.Text = "坡道1 状态：位移预警";
                    level = 4;
                }


                if (circle2_max <= value1)
                {
                   // Circle2.BackColor = System.Drawing.Color.DarkBlue;
                   // Label_title_podao2.Text = "坡道2 状态：稳定";
                    //level = 0;
                }
                else if (circle2_max <= value2)
                {
                   // Circle2.BackColor = System.Drawing.Color.Blue;
                   // Label_title_podao2.Text = "坡道2 状态：良好";
                    if (level <= 1)
                        level = 1;
                }
                else if (circle2_max <= value3)
                {
                   // Circle2.BackColor = System.Drawing.Color.LightGreen;
                   // Label_title_podao2.Text = "坡道2 状态：正常";
                    if (level <= 2)
                        level = 2;
                }
                else if (circle2_max < value5)
                {
                   // Circle2.BackColor = System.Drawing.Color.Yellow;
                   // Label_title_podao2.Text = "坡道2 状态：正常";
                    if (level <= 3)
                        level = 3;
                }
                else if (circle2_max >= value5)
                {
                   // Circle2.BackColor = System.Drawing.Color.Red;
                  //  Label_title_podao2.Text = "坡道2 状态：位移预警";
                    if (level <= 4)
                        level = 4;
                }

                if (circle3_max <= 0.01)
                {
                   // Circle3.BackColor = System.Drawing.Color.DarkBlue;
                   // Label_title_podao3.Text = "坡道3 状态：稳定";

                }
                else if (circle3_max <= 0.1)
                {
                   // Circle3.BackColor = System.Drawing.Color.Blue;
                   // Label_title_podao3.Text = "坡道3 状态：良好";
                    if (level <= 1)
                        level = 1;
                }
                else if (circle3_max <= 1.0)
                {
                  //  Circle3.BackColor = System.Drawing.Color.LightGreen;
                   // Label_title_podao3.Text = "坡道3 状态：正常";
                    if (level <= 2)
                        level = 2;
                }
                else if (circle3_max < 2)
                {
                  //  Circle3.BackColor = System.Drawing.Color.Yellow;
                 //   Label_title_podao3.Text = "坡道3 状态：正常";
                    if (level <= 3)
                        level = 3;
                }
                else if (circle3_max >= 2)
                {
                  //  Circle3.BackColor = System.Drawing.Color.Red;
                  //  Label_title_podao3.Text = "坡道3 状态：位移预警";
                    if (level <= 4)
                        level = 4;
                }

                if (circle4_max <= 0.01)
                {
                    //Circle4.BackColor = System.Drawing.Color.DarkBlue;
                    //Label_title_podao4.Text = "管道1 状态：稳定";
                    //level = 0;
                }
                else if (circle4_max <= 0.1)
                {
                   // Circle4.BackColor = System.Drawing.Color.Blue;
                   // Label_title_podao4.Text = "管道1 状态：良好";
                    if (level <= 1)
                        level = 1;
                }
                else if (circle4_max <= 1.0)
                {
                  //  Circle4.BackColor = System.Drawing.Color.LightGreen;
                   // Label_title_podao4.Text = "管道1 状态：正常";
                    if (level <= 2)
                        level = 2;
                }
                else if (circle4_max < 2)
                {
                    //Circle4.BackColor = System.Drawing.Color.Yellow;
                   // Label_title_podao4.Text = "管道1 状态：正常";
                    if (level <= 3)
                        level = 3;
                }
                else if (circle4_max >= 2)
                {
                   // Circle4.BackColor = System.Drawing.Color.Red;
                   // Label_title_podao4.Text = "管道3 状态：位移预警";
                    if (level <= 4)
                        level = 4;
                }

                if (circle5_max <= value1)
                {
                   // Circle5.BackColor = System.Drawing.Color.DarkBlue;
                   // Label_title_podao5.Text = "管道2 状态：稳定";
                    //level = 0;
                }
                else if (circle5_max <= value2)
                {
                   // Circle5.BackColor = System.Drawing.Color.Blue;
                  //  Label_title_podao5.Text = "管道2 状态：良好";
                    if (level <= 1)
                        level = 1;
                }
                else if (circle5_max <= value3)
                {
                    //Circle5.BackColor = System.Drawing.Color.LightGreen;
                  //  Label_title_podao5.Text = "管道2 状态：正常";
                    if (level <= 2)
                        level = 2;
                }
                else if (circle5_max < value5)
                {
                   // Circle5.BackColor = System.Drawing.Color.Yellow;
                   // Label_title_podao5.Text = "管道2 状态：正常";
                    if (level <= 3)
                        level = 3;
                }
                else if (circle5_max >= value5)
                {
                   // Circle5.BackColor = System.Drawing.Color.Red;
                   // Label_title_podao5.Text = "管道2 状态：位移预警";
                    if (level <= 4)
                        level = 4;
                }

                if (circle6_max <= value1)
                {
                   // Circle6.BackColor = System.Drawing.Color.DarkBlue;
                   // Label_title_podao6.Text = "管道3 状态：稳定";
                    //level = 0;
                }
                else if (circle6_max <= value2)
                {
                  //  Circle6.BackColor = System.Drawing.Color.Blue;
                  //  Label_title_podao6.Text = "管道3 状态：良好";
                    if (level <= 1)
                        level = 1;
                }
                else if (circle6_max <= value3)
                {
                  //  Circle6.BackColor = System.Drawing.Color.LightGreen;
                  //  Label_title_podao6.Text = "管道3 状态：正常";
                    if (level <= 2)
                        level = 2;
                }
                else if (circle6_max < value5)
                {
                  //  Circle6.BackColor = System.Drawing.Color.Yellow;
                  //  Label_title_podao6.Text = "管道3 状态：正常";
                    if (level <= 3)
                        level = 3;
                }
                else if (circle6_max >= value5)
                {
                   // Circle6.BackColor = System.Drawing.Color.Red;
                   // Label_title_podao6.Text = "管道3 状态：位移预警";
                    if (level <= 4)
                        level = 4;
                }

                if (circle7_max <= value1)
                {
                   // Circle7.BackColor = System.Drawing.Color.DarkBlue;
                   // Label_title_podao7.Text = "管道4 状态：稳定";
                    //level = 0;
                }
                else if (circle7_max <= value2)
                {
                    //Circle7.BackColor = System.Drawing.Color.Blue;
                   // Label_title_podao7.Text = "管道4 状态：良好";
                    if (level <= 1)
                        level = 1;
                }
                else if (circle7_max <= value3)
                {
                    //Circle7.BackColor = System.Drawing.Color.LightGreen;
                   // Label_title_podao7.Text = "管道4 状态：正常";
                    if (level <= 2)
                        level = 2;
                }
                else if (circle7_max < value5)
                {
                  //  Circle7.BackColor = System.Drawing.Color.Yellow;
                  //  Label_title_podao7.Text = "管道4 状态：正常";
                    if (level <= 3)
                        level = 3;

                }
                else if (circle7_max >= value5)
                {
                  //  Circle7.BackColor = System.Drawing.Color.Red;
                   // Label_title_podao7.Text = "管道4 状态：位移预警";
                    if (level <= 4)
                        level = 4;
                }

                if (level == 0)
                {
                  //  Label_baojingshuoming1.Text = "整体状况：稳定";
                   // Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 1)
                {
                  ///  Label_baojingshuoming1.Text = "整体状况：良好";
                  //  Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 2)
                {
                   // Label_baojingshuoming1.Text = "整体状况：正常";
                  //  Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 3)
                {
                   // Label_baojingshuoming1.Text = "整体状况：正常";
                   // Label_baojingshuoming1.ForeColor = System.Drawing.Color.White;
                }
                if (level == 4)
                {
                   // Label_baojingshuoming1.Text = "整体状况：报警";
                  //  Label_baojingshuoming1.ForeColor = System.Drawing.Color.Red;
                }


                // 有关坡道的
               // label_quyu1.Text = "坡道1 " + Math.Round(max_point1, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle1_max, 3).ToString() + "mm";
               // label_quyu2.Text = "坡道2 " + Math.Round(max_point2, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle2_max, 3).ToString() + "mm";
               // label_quyu3.Text = "坡道3 " + Math.Round(max_point3, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle3_max, 3).ToString() + "mm";
               // label_quyu4.Text = "管道1 " + Math.Round(max_point4, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle4_max, 3).ToString() + "mm";
               // label_quyu5.Text = "管道2 " + Math.Round(max_point5, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle5_max, 3).ToString() + "mm";
               // label_quyu6.Text = "管道3 " + Math.Round(max_point6, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle6_max, 3).ToString() + "mm";
               // label_quyu7.Text = "管道4 " + Math.Round(max_point7, 1).ToString().PadLeft(6, '0') + "m   " + Math.Round(circle7_max, 3).ToString() + "mm";

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

        public void user_Chart()
        {
            Panel_port.Controls.Clear();

            Label date_title = new Label();
            date_title.Text = selected_date.ToString("yyyy年MM月dd日")+"报表详情";
            date_title.Style["width"] = "100%";
            date_title.Style["height"] = "5%";
            date_title.Style["text-align"] = "center";
            date_title.Style["top"] = "0%";
            date_title.Style["left"] = "0%";
            date_title.Style["position"] = "absolute";
            date_title.BorderStyle = BorderStyle.Solid;
            date_title.BorderWidth = 2;
            date_title.BorderColor = System.Drawing.Color.Black;
            Panel_port.Controls.Add(date_title);

            ArrayList filelist_1 = FileCaozuo.Read_All_Files("D:\\data\\", "*.txt");

            // 读取第一个文件作为基准
            string file_jizhun = (string)filelist_1[0];
            string[] jizhun_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_jizhun);

            string[] now_list = null;
            for (int z = 0; z < filelist_1.Count; z++)
            {
                string file_now = (string)filelist_1[filelist_1.Count - 1];
                now_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_now);
                string thisdate = string_caozuo.Get_HengGang_String(file_now,1);
                if (thisdate == selected_date.ToString("yyyy_MM_dd"))
                {
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
                                //Chart1.Series.Clear();
                                if (position >= 2164 && position <= 2317)
                                {

                                    if (value >= circle1_max)
                                    {
                                        circle1_max = value;
                                        max_pos1 = position_string;
                                    }


                                }
                                if (position >= 2361 && position <= 2558)
                                {
                                    if (value >= circle2_max)
                                    {
                                        circle2_max = value;
                                        max_pos2 = position_string;
                                    }

                                }
                                if (position >= 2934 && position <= 3074)
                                {
                                    if (value >= circle3_max)
                                    {
                                        circle3_max = value;
                                        max_pos3 = position_string;
                                    }

                                }
                                if (position >= 602 && position <= 675)
                                {
                                    if (value >= circle4_max)
                                    {
                                        circle4_max = value;
                                        max_pos4 = position_string;
                                    }

                                }
                                if (position >= 742 && position <= 810)
                                {
                                    if (value >= circle5_max)
                                    {
                                        circle5_max = value;
                                        max_pos5 = position_string;
                                    }

                                }
                                if (position >= 875 && position <= 939)
                                {
                                    if (value >= circle6_max)
                                    {
                                        circle6_max = value;
                                        max_pos6 = position_string;
                                    }

                                }
                                if (position >= 994 && position <= 1069)
                                {
                                    if (value >= circle7_max)
                                    {
                                        circle7_max = value;
                                        max_pos7 = position_string;
                                    }

                                }

                            }
                            catch { break; }
                        }
                    }
                    catch { }
                    for (int i = 0; i <= 7; i++)
                    {
                        Label left = new Label();
                        Label middle = new Label();
                        Label right = new Label();
                        
                        if (i == 0)
                        {
                            left.Text = "区域";
                            middle.Text = "最大位移(mm)";
                            right.Text = "位置(m)";
                        }
                        if (i == 1)
                        {
                            left.Text = "坡道1";
                            middle.Text = Math.Round(circle1_max, 3).ToString();
                            right.Text = max_pos1;
                        }
                        if (i == 2)
                        {
                            left.Text = "坡道2";
                            middle.Text = Math.Round(circle2_max, 3).ToString();
                            right.Text = max_pos2;
                        }
                        if (i == 3)
                        {
                            left.Text = "坡道3";
                            middle.Text = Math.Round(circle3_max, 3).ToString();
                            right.Text = max_pos3;
                        }
                        if (i == 4)
                        {
                            left.Text = "管道1";
                            middle.Text = Math.Round(circle4_max, 3).ToString();
                            right.Text = max_pos4;
                        }
                        if (i == 5)
                        {
                            left.Text = "管道2";
                            middle.Text = Math.Round(circle5_max, 3).ToString();
                            right.Text = max_pos5;
                        }
                        if (i == 6)
                        {
                            left.Text = "管道3";
                            middle.Text = Math.Round(circle6_max, 3).ToString();
                            right.Text = max_pos6;
                        }
                        if (i == 7)
                        {
                            left.Text = "管道4";
                            middle.Text = Math.Round(circle7_max, 3).ToString();
                            right.Text = max_pos7;
                        }
                        left.Style["position"] = "absolute";
                        left.Style["left"] = "0%";
                        left.Style["top"] = (i * 7 + 6).ToString() + "%";
                        left.Style["width"] = "20%";
                        left.Style["hegit"] = "7%";
                        left.Style["text-align"] = "center";
                        left.BorderColor = System.Drawing.Color.Black;
                        left.BorderStyle = BorderStyle.Solid;
                        left.BorderWidth = 2;


                        middle.Style["position"] = "absolute";
                        middle.Style["left"] = "21%";
                        middle.Style["top"] = (i * 7 + 6).ToString() + "%";
                        middle.Style["width"] = "28%";
                        middle.Style["hegit"] = "7%";
                        middle.Style["text-align"] = "center";
                        middle.BorderColor = System.Drawing.Color.Black;
                        middle.BorderStyle = BorderStyle.Solid;
                        middle.BorderWidth = 2;

                        right.Style["position"] = "absolute";
                        right.Style["left"] = "50%";
                        right.Style["top"] = (i * 7 + 6).ToString() + "%";
                        right.Style["width"] = "39%";
                        right.Style["hegit"] = "7%";
                        right.Style["text-align"] = "center";
                        right.BorderColor = System.Drawing.Color.Black;
                        right.BorderStyle = BorderStyle.Solid;
                        right.BorderWidth = 2;

                        Panel_port.Controls.Add(left);
                        Panel_port.Controls.Add(middle);
                        Panel_port.Controls.Add(right);
                    }
                    break;
                }

                
            }

           
        }
             

        protected void ImageButton_home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MainMap.aspx");
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsSelected == true)
            {
                selected_date = e.Day.Date;
                if(selected_date!=selected_old)
                {
                    Response.AddHeader("Refresh", "0");
                }
                selected_old = selected_date;
            }
        }

        protected void Button_Save_Click(object sender, EventArgs e)
        {
            try
            {
                HttpContext.Current.Response.Buffer = true;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.Charset = "gb2312";
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.ClearHeaders();
                Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                HttpContext.Current.Response.ContentType = "application/ms-doc";
                HttpContext.Current.Response.AppendHeader("Content-Disposition", "attachment;filename=fileDown.doc");
                //关闭控件的视图状态  ,如果仍然为true，RenderControl将启用页的跟踪功能，存储与控件有关的跟踪信息
                this.EnableViewState = false;
                //将要下载的页面输出到HtmlWriter  
                System.IO.StringWriter writer = new System.IO.StringWriter();
                System.Web.UI.HtmlTextWriter htmlWriter = new System.Web.UI.HtmlTextWriter(writer);
                //this.RegisterScriptControl();
                
              
                this.RenderControl(htmlWriter);
                //提取要输出的内容  
                string pageHtml = writer.ToString();
                int startIndex = pageHtml.IndexOf("<div class=\"auto-style1\">");
                int endIndex = pageHtml.LastIndexOf("</div>");
                int lenth = endIndex - startIndex;
                pageHtml = pageHtml.Substring(startIndex, lenth);
                //输出
                foreach (Label mylabel in Panel_port.Controls)
                {
                    HttpContext.Current.Response.Write(mylabel.Text + "\n");
                }

                HttpContext.Current.Response.End();
            }
            catch { }
        }
    }
}