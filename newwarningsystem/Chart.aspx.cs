using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using FileOperation;
using String_Caozuo;
using FileOperation;
using System.IO;

namespace newwarningsystem
{
    public partial class Chart : System.Web.UI.Page
    {
        static int line1 = 1;
        static DateTime datetime1 = DateTime.Parse("1900-01-01");
        static DateTime datetime2 = DateTime.Parse("1900-01-01");

        static DateTime datetime1_old = DateTime.Parse("1900-01-01");
        static DateTime datetime2_old = DateTime.Parse("1900-01-01");

        

        public static double start = -1;
        public static double end = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime mytime = DateTime.Now;
            Label_timer.Text = mytime.ToString("yyyy-MM-dd HH:mm:ss");


            
            
            if(IsPostBack==false)
            {
                // 第一次运行

                start = -1;
                end = -1;
                datetime1 = DateTime.Parse("1900-01-01");
                datetime2 = DateTime.Parse("1900-01-01");
                //Label_time_xuanze1.Text = DateTime.Now.ToString("yyyy");
                //Label_time_xuanze2.Text = DateTime.Now.ToString("yyyy");
                //Label_time_xuanze1_month.Text = DateTime.Now.ToString("MM");
                //Label_time_xuanze2_month.Text = DateTime.Now.ToString("MM");
                //Label_time_xuanze1_day.Text = DateTime.Now.ToString("dd");
                //Label_time_xuanze2_day.Text = DateTime.Now.ToString("dd");
            }

            

           //Update_Panel2();
            try
            {
                
               // double screenwith = double.Parse(MainMap.x);
               // double screenheight = double.Parse(MainMap.y);

                
                //Chart1.Style["width"] = (1920 * 0.7).ToString() + "px";
                //Chart2.Style["width"] = (1920 * 0.7).ToString() + "px";
                //Chart1.Style["height"] = (1080 * 0.3).ToString() + "px";
                //Chart2.Style["height"] = (1080 * 0.3).ToString() + "px";
                
            }
            catch {
                //Chart1.Style["width"] = (1920 * 0.7).ToString() + "px";
                //Chart2.Style["width"] = (1920 * 0.7).ToString() + "px";
                //Chart1.Style["height"] = (1080 * 0.3).ToString() + "px";
                //Chart2.Style["height"] = (1080 * 0.3).ToString() + "px";
 
            }
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Update_Panel2();
            
        }

        struct position_value
        {
            public double position;
            public double weiyi1;
            public double weiyi2;
        }

        private void Update_Panel2()
        {
            //double screenwith = double.Parse(MainMap.x);
            //double screenheight = double.Parse(MainMap.y);
            //Chart1.Style["width"] = (screenwith * 0.7).ToString() + "px";
            //Chart2.Style["width"] = (screenwith * 0.7).ToString() + "px";
            //Chart1.Style["height"] = (screenheight * 0.3).ToString() + "px";
            //Chart2.Style["height"] = (screenheight * 0.3).ToString() + "px";
            double circle1_max = 0;
            double circle2_max = 0;
            double circle3_max = 0;
            double circle4_max = 0;
            double circle5_max = 0;
            double circle6_max = 0;
            double circle7_max = 0;
            double count = 0;
            string max_position = "";
            //Chart1.Series.Clear();
            //Chart2.Series.Clear();
            //Chart1.Series.Add("坡道1");

            //Chart1.Series.Add("坡道2");
            //Chart1.Series.Add("坡道3");
            //Chart1.Series.Add("侧斜管1");
            //Chart1.Series.Add("侧斜管2");
            //Chart1.Series.Add("侧斜管3");
            //Chart1.Series.Add("侧斜管4");

            //Chart1.Series[0].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart1.Series[1].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart1.Series[2].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart1.Series[3].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart1.Series[4].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart1.Series[5].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart1.Series[6].ToolTip = "位置：#VALX,位移量：#VAL";


            //Chart1.Legends.Add("坡道1");
            //Chart1.Legends.Add("坡道2");
            //Chart1.Legends.Add("坡道3");
            //Chart1.Legends.Add("侧斜管1");
            //Chart1.Legends.Add("侧斜管2");
            //Chart1.Legends.Add("侧斜管3");
            //Chart1.Legends.Add("侧斜管4");

            //Chart2.Legends.Add("");
            //Chart2.Series.Add("");
            //Chart2.Series.Add("");
            //Chart2.Series[0].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart2.Series[1].ToolTip = "位置：#VALX,位移量：#VAL";
            //Chart2.Series[0].Points.Clear();
            //Chart2.Series[1].Points.Clear();
            //Chart2.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Spline;
            //Chart2.Series[1].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Spline;
            ArrayList filelist_1 = FileCaozuo.Read_All_Files("D:\\data\\", "*.txt");

            // 读取第一个文件作为基准
            string file_jizhun = (string)filelist_1[0];
            string[] jizhun_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_jizhun);

            string file_now = (string)filelist_1[filelist_1.Count - 1];
            string[] now_list = FileCaozuo.Read_All_Line("D:\\data\\" + file_now);

            string file1;
            string file2;
           // Label_time_xuanze1.Text = DateTime.Now.ToString("yyyy - MM - dd");
           // Label_time_xuanze2.Text = DateTime.Now.ToString("yyyy - MM - dd");
            if (datetime1.Year != 1900)
            {
                string selectedate = "";
                //Label_time_xuanze1.Text = datetime1.ToString("yyyy - MM - dd");
                for (int z = 0; z < filelist_1.Count; z++)
                {
                    try
                    {
                        file1 = (string)filelist_1[z];
                       
                        selectedate = string_caozuo.Get_HengGang_String(file1, 1);
                        if (selectedate != datetime1.ToString("yyyy_MM_dd")) continue;
                        string[] list = FileCaozuo.Read_All_Line("D:\\data\\" + file1);
                        try
                        {
                            for (int i = 0; i < jizhun_list.Length; i++)
                            {
                                try
                                {
                                    string line = list[i];
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

                                   // Chart1.Series.Clear();
                                    if (position >= 2164 && position <= 2317)
                                    {
                                        ////Chart1.Titles[0].Text = Image_point1.ToolTip;
                                        // Chart1.Series[0].Points.AddXY(position, value);
                                        //if (line1 == 1)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "坡道1";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "坡道1";
                                        //}
                                    }
                                    if (position >= 2361 && position <= 2558)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point2.ToolTip;
                                        //Chart1.Series[1].Points.AddXY(position, value);
                                        //if (line1 == 2)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "坡道2";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "坡道2";
                                        //}
                                    }
                                    if (position >= 2934 && position <= 3074)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point3.ToolTip;
                                        // Chart1.Series[2].Points.AddXY(position, value);
                                        //if (line1 == 3)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "坡道3";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "坡道3";
                                        //}
                                    }
                                    if (position >= 602 && position <= 675)
                                    {

                                        //// Chart1.Titles[0].Text = Image_point4.ToolTip;
                                        //Chart1.Series[3].Points.AddXY(position, value);
                                        //if (line1 == 4)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管1";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管1";
                                        //}
                                    }
                                    if (position >= 742 && position <= 810)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point5.ToolTip;
                                        //Chart1.Series[4].Points.AddXY(position, value);
                                        //if (line1 == 5)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管2";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管2";
                                        //}
                                    }
                                    if (position >= 875 && position <= 939)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point6.ToolTip;
                                        //Chart1.Series[5].Points.AddXY(position, value);
                                        //if (line1 == 6)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管3";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管3";
                                        //}
                                    }
                                    if (position >= 994 && position <= 1069)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point7.ToolTip;
                                        //Chart1.Series[6].Points.AddXY(position, value);
                                        //if (line1 == 7)
                                        //{
                                        //    Chart2.Series[0].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管4";
                                        //    Chart2.Series[0].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管4";
                                        //}
                                    }

                                }
                                catch { break; }

                            }
                        }
                        catch { }
                    }
                    catch { }
                    if (selectedate == datetime1.ToString("yyyy_MM_dd")) break;
                }
            }
           
            if(datetime2.Year!=1900)
            {
                string selectedate = "";
                //Label_time_xuanze2.Text = datetime2.ToString("yyyy - MM - dd");
                for (int z = 0; z < filelist_1.Count; z++)
                {
                    try
                    {
                        file2 = (string)filelist_1[z];
                       
                        selectedate = string_caozuo.Get_HengGang_String(file2, 1);
                        if (selectedate != datetime2.ToString("yyyy_MM_dd")) continue;
                        string[] list = FileCaozuo.Read_All_Line("D:\\data\\" + file2);
                        try
                        {
                            for (int i = 0; i < jizhun_list.Length; i++)
                            {
                                try
                                {
                                    string line = list[i];
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
                                        //Chart1.Titles[0].Text = Image_point1.ToolTip;
                                        // Chart1.Series[0].Points.AddXY(position, value);
                                        //if (line1 == 1)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "坡道1";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "坡道1";
                                        //}
                                    }
                                    if (position >= 2361 && position <= 2558)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point2.ToolTip;
                                        //Chart1.Series[1].Points.AddXY(position, value);
                                        //if (line1 == 2)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "坡道2";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "坡道2";
                                        //}
                                    }
                                    if (position >= 2934 && position <= 3074)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point3.ToolTip;
                                        // Chart1.Series[2].Points.AddXY(position, value);
                                        //if (line1 == 3)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "坡道3";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "坡道3";
                                        //}
                                    }
                                    if (position >= 602 && position <= 675)
                                    {

                                        //// Chart1.Titles[0].Text = Image_point4.ToolTip;
                                        //Chart1.Series[3].Points.AddXY(position, value);
                                        //if (line1 == 4)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管1";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管1";
                                        //}
                                    }
                                    if (position >= 742 && position <= 810)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point5.ToolTip;
                                        //Chart1.Series[4].Points.AddXY(position, value);
                                        //if (line1 == 5)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管2";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管2";
                                        //}
                                    }
                                    if (position >= 875 && position <= 939)
                                    {

                                        ////Chart1.Titles[0].Text = Image_point6.ToolTip;
                                        //Chart1.Series[5].Points.AddXY(position, value);
                                        //if (line1 == 6)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管3";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管3";
                                        //}
                                    }
                                    if (position >= 994 && position <= 1069)
                                    {

                                        //Chart1.Titles[0].Text = Image_point7.ToolTip;
                                        //Chart1.Series[6].Points.AddXY(position, value);
                                        //if (line1 == 7)
                                        //{
                                        //    Chart2.Series[1].Points.AddXY(position, value);
                                        //    Chart2.Legends[0].Title = "侧斜管4";
                                        //    Chart2.Series[1].Name = selectedate;
                                        //    Chart2.Titles[0].Text = "侧斜管4";
                                        //}
                                    }

                                }
                                catch { break; }

                            }
                        }
                        catch { }
                    }
                    catch { }
                    if (selectedate == datetime2.ToString("yyyy_MM_dd")) break;
                }
            }


           

            for (int i = 0; i < 7;i++ )
            {
                
            }
            // panel3.Controls.Clear();
            if (datetime1.Year != 1900 || datetime1.Year!=1900)
            {
                return;
            }
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
                                 //Chart1.Titles[0].Text = Image_point1.ToolTip;
                                //Chart1.Series[0].Points.AddXY(position, value);
                                //if(line1==1)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "坡道1";
                                //    Chart2.Series[0].Name = "坡道1";
                                //    Chart2.Titles[0].Text = "坡道1";
                                //}
                            }
                            if (position >= 2361 && position <= 2558)
                            {

                                ////Chart1.Titles[0].Text = Image_point2.ToolTip;
                                //Chart1.Series[1].Points.AddXY(position, value);
                                //if (line1 == 2)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "坡道2";
                                //    Chart2.Series[0].Name = "坡道2";
                                //    Chart2.Titles[0].Text = "坡道2";
                                //}
                            }
                            if (position >= 2934 && position <= 3074)
                            {

                                ////Chart1.Titles[0].Text = Image_point3.ToolTip;
                                //Chart1.Series[2].Points.AddXY(position, value);
                                //if (line1 == 3)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "坡道3";
                                //    Chart2.Series[0].Name = "坡道3";
                                //    Chart2.Titles[0].Text = "坡道3";
                                //}
                            }
                            if (position >= 602 && position <= 675)
                            {

                                // Chart1.Titles[0].Text = Image_point4.ToolTip;
                                //Chart1.Series[3].Points.AddXY(position, value);
                                //if (line1 == 4)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "侧斜管1";
                                //    Chart2.Series[0].Name = "侧斜管1";
                                //    Chart2.Titles[0].Text = "侧斜管1";
                                //}
                            }
                            if (position >= 742 && position <= 810)
                            {

                                //Chart1.Titles[0].Text = Image_point5.ToolTip;
                                //Chart1.Series[4].Points.AddXY(position, value);
                                //if (line1 == 5)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "侧斜管2";
                                //    Chart2.Series[0].Name = "侧斜管2";
                                //    Chart2.Titles[0].Text = "侧斜管2";
                                //}
                            }
                            if (position >= 875 && position <= 939)
                            {

                                //Chart1.Titles[0].Text = Image_point6.ToolTip;
                                //Chart1.Series[5].Points.AddXY(position, value);
                                //if (line1 == 6)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "侧斜管3";
                                //    Chart2.Series[0].Name = "侧斜管3";
                                //    Chart2.Titles[0].Text = "侧斜管3";
                                //}
                            }
                            if (position >= 994 && position <= 1069)
                            {

                                //Chart1.Titles[0].Text = Image_point7.ToolTip;
                                //Chart1.Series[6].Points.AddXY(position, value);
                                //if (line1 == 7)
                                //{
                                //    Chart2.Series[0].Points.AddXY(position, value);
                                //    Chart2.Legends[0].Title = "侧斜管4";
                                //    Chart2.Series[0].Name = "侧斜管4";
                                //    Chart2.Titles[0].Text = "侧斜管4";
                                //}
                            }

                        }
                        catch { break; }

                    }
                }
                catch { }

            //try
            //{
            //    start = double.Parse(HiddenField_start.Value);
            //    end = double.Parse(HiddenField_end.Value);
            //}

            //catch { }

            if(start!=-1 && end!=-1)
            {
                //Chart2.ChartAreas[0].AxisX.Maximum = end;
                //Chart2.ChartAreas[0].AxisX.Minimum = start;
            }

            //if (Chart2.ChartAreas[0].AxisX.Minimum > 0)
            //{
                
            //}
            //else
            //{
            //    start = Chart2.Series[0].Points[0].XValue;
            //    end = Chart2.Series[0].Points[Chart2.Series[0].Points.Count - 1].XValue;

               
            //}
            //if (IsPostBack == false)
            //{
            //    HiddenField_start.Value = Convert.ToInt32(start).ToString();
            //    HiddenField_end.Value = Convert.ToInt32(end).ToString();
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            line1 = 1;
            start = -1;
            end = -1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            line1 = 2;
            start = -1;
            end = -1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            line1 = 3;
            start = -1;
            end = -1;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            line1 = 4;
            start = -1;
            end = -1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            line1 = 5;
            start = -1;
            end = -1;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            line1 = 6;
            start = -1;
            end = -1;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            line1= 7;
            start = -1;
            end = -1;
        }

        protected void ImageButton_home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MainMap.aspx");
        }

        protected void calender1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsSelected == true)
            {
                datetime1 = e.Day.Date;
                if (datetime1 != datetime1_old) 
                {
                    Response.AddHeader("Refresh", "0");
                }
                datetime1_old = datetime1;
            }
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsSelected == true)
            {
                datetime2 = e.Day.Date;
                if(datetime2!=datetime2_old)
                {
                    Response.AddHeader("Refresh", "0");
                }
                datetime2_old = datetime2;
            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
           // DateTime mytime = Calendar2.SelectedDate;
        }

        protected void image_graft_Click(object sender, ImageClickEventArgs e)
        {
            if(start>0 && end>0)
            {
                if(end-start>=50)
                {
                    end = end - 10;
                    start = start + 10;
                }
            }
        }

        protected void Image_baojing_Click(object sender, ImageClickEventArgs e)
        {
            if (start > 0 && end > 0)
            {
                if (end - start <= 1000)
                {
                    end = end + 10;
                    start = start - 10;
                }
            }
        }

        protected void Image_set_Click(object sender, ImageClickEventArgs e)
        {
            if (start > 0 && end > 0)
            {
                start = start - 10;
                end = end - 10;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (start > 0 && end > 0)
            {
                start = start + 10;
                end = end + 10;
            }
        }

        protected void button_time1_year_add_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
                //mydate = mydate.AddYears(1);
                //Label_time_xuanze1.Text = mydate.ToString("yyyy");
                //Label_time_xuanze1_month.Text = mydate.ToString("MM");
                //Label_time_xuanze1_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time1_year_min_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
                //mydate = mydate.AddYears(-1);
                //Label_time_xuanze1.Text = mydate.ToString("yyyy");
                //Label_time_xuanze1_month.Text = mydate.ToString("MM");
                //Label_time_xuanze1_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time1_min_add_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
                //mydate = mydate.AddMonths(1);
                //Label_time_xuanze1.Text = mydate.ToString("yyyy");
                //Label_time_xuanze1_month.Text = mydate.ToString("MM");
                //Label_time_xuanze1_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time1_min_min_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
                //mydate = mydate.AddMonths(-1);
                //Label_time_xuanze1.Text = mydate.ToString("yyyy");
                //Label_time_xuanze1_month.Text = mydate.ToString("MM");
                //Label_time_xuanze1_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time1_day_add_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
                //mydate = mydate.AddDays(1);
                //Label_time_xuanze1.Text = mydate.ToString("yyyy");
                //Label_time_xuanze1_month.Text = mydate.ToString("MM");
                //Label_time_xuanze1_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time1_day_min_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
                //mydate = mydate.AddDays(-1);
                //Label_time_xuanze1.Text = mydate.ToString("yyyy");
                //Label_time_xuanze1_month.Text = mydate.ToString("MM");
                //Label_time_xuanze1_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time2_year_add_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
                //mydate = mydate.AddYears(1);
                //Label_time_xuanze2.Text = mydate.ToString("yyyy");
                //Label_time_xuanze2_month.Text = mydate.ToString("MM");
                //Label_time_xuanze2_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time2_year_min_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
                //mydate = mydate.AddYears(-1);
                //Label_time_xuanze2.Text = mydate.ToString("yyyy");
                //Label_time_xuanze2_month.Text = mydate.ToString("MM");
                //Label_time_xuanze2_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time2_min_add_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
                //mydate = mydate.AddMonths(1);
                //Label_time_xuanze2.Text = mydate.ToString("yyyy");
                //Label_time_xuanze2_month.Text = mydate.ToString("MM");
                //Label_time_xuanze2_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time2_min_mi_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
                //mydate = mydate.AddMonths(-1);
                //Label_time_xuanze2.Text = mydate.ToString("yyyy");
                //Label_time_xuanze2_month.Text = mydate.ToString("MM");
                //Label_time_xuanze2_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time2_day_add_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
                //mydate = mydate.AddDays(1);
                //Label_time_xuanze2.Text = mydate.ToString("yyyy");
                //Label_time_xuanze2_month.Text = mydate.ToString("MM");
                //Label_time_xuanze2_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time2_day_min_Click(object sender, EventArgs e)
        {
            try
            {

                //DateTime mydate = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
                //mydate = mydate.AddDays(-1);
                //Label_time_xuanze2.Text = mydate.ToString("yyyy");
                //Label_time_xuanze2_month.Text = mydate.ToString("MM");
                //Label_time_xuanze2_day.Text = mydate.ToString("dd");
            }
            catch { }
        }

        protected void button_time_ok_Click(object sender, EventArgs e)
        {
            //datetime1 = DateTime.Parse(Label_time_xuanze1.Text + "-" + Label_time_xuanze1_month.Text + "-" + Label_time_xuanze1_day.Text);
            //datetime2 = DateTime.Parse(Label_time_xuanze2.Text + "-" + Label_time_xuanze2_month.Text + "-" + Label_time_xuanze2_day.Text);
        }

        protected void ImageButton_zhuye_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MainMap.aspx");
        }

        protected void ImageButton_baobiao_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("report.aspx");
        }

        protected void ImageButton_chaxun_Click(object sender, ImageClickEventArgs e)
        {

        }


        // 返回某个点几天的数据
        [System.Web.Services.WebMethod]

        public static string Return_Values_Posision(string position)
        {
            return "yes";
        }

        [System.Web.Services.WebMethod]
        public static ArrayList Return_Position_Value(string start_position, string end_position, string start_data, string end_data)
        {
            ArrayList mylist = new ArrayList();
            mylist.Clear();
            // start_data是开始日期
            // end_data是结束日期

            ArrayList start_list = new ArrayList();
            ArrayList end_list = new ArrayList();

            ArrayList alldirs = FileCaozuo.Read_All_Dir("D:\\zhenglidata\\");

            ArrayList jichu_list = new ArrayList();         // 基础文件


            string[] jichu_value_list = null;
            string[] start_value_list = null;
            string[] end_value_list = null;


            jichu_list = FileCaozuo.Read_All_Files(((DirectoryInfo)alldirs[0]).FullName, "*.txt");

            jichu_value_list = FileCaozuo.Read_All_Line(((DirectoryInfo)alldirs[0]).FullName + "\\" + ((string)jichu_list[0]));



            try
            {
                if (start_data == "0")
                {
                    start_list = FileCaozuo.Read_All_Files(((DirectoryInfo)alldirs[0]).FullName, "*.txt");
                    start_value_list = FileCaozuo.Read_All_Line(((DirectoryInfo)alldirs[0]).FullName + "\\" + ((string)start_list[0]));
                }
                else
                {
                    string start_data_string = start_data.Substring(0, 4) + "_" + start_data.Substring(4, 2) + "_" + start_data.Substring(6, 2);
                    start_list = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + start_data_string + "\\", "*.txt");
                    start_value_list = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + start_data_string + "\\" + ((string)start_list[0]));
                }

            }
            catch { }

            try
            {
                if (end_data == "0")
                {
                    end_list = FileCaozuo.Read_All_Files(((DirectoryInfo)alldirs[alldirs.Count - 1]).FullName, "*.txt");
                    end_value_list = FileCaozuo.Read_All_Line(((DirectoryInfo)alldirs[alldirs.Count - 1]).FullName + "\\" + ((string)end_list[0]));
                }
                else
                {
                    string end_data_string = end_data.Substring(0, 4) + "_" + end_data.Substring(4, 2) + "_" + end_data.Substring(6, 2);
                    end_list = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + end_data_string + "\\", "*.txt");
                    end_value_list = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + end_data_string + "\\" + ((string)end_list[0]));
                }
            }
            catch { }



            //foreach (DirectoryInfo dir in alldirs)
            //{
            //    ArrayList allfiles = FileCaozuo.Read_All_Files(dir.FullName, "*.txt");
            //}


            for (int i = 0; i < jichu_value_list.Length; i++)
            {
                double weiyi1 = 0;
                double weiyi2 = 0;
                string jichuline = (string)jichu_value_list[i];
                string jichuposition_string = string_caozuo.Get_Table_String(jichuline, 1);
                string jichuvalue_string = string_caozuo.Get_Table_String(jichuline, 2);

                try
                {
                    double position = double.Parse(jichuposition_string);
                    double start = double.Parse(start_position);
                    double end = double.Parse(end_position);

                    if (position >= start && position <= end)
                    {
                        double jichuvalue = double.Parse(jichuvalue_string);

                        try
                        {
                            string line1_line = (string)start_value_list[i];

                            double value1 = double.Parse(string_caozuo.Get_Table_String(line1_line, 2));
                            weiyi1 = Math.Abs(value1 - jichuvalue) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                            weiyi1 = Math.Round(weiyi1, 2);


                        }
                        catch { }


                        try
                        {
                            string line2_line = (string)end_value_list[i];

                            double value2 = double.Parse(string_caozuo.Get_Table_String(line2_line, 2));
                            weiyi2 = Math.Abs(value2 - jichuvalue) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                            weiyi2 = Math.Round(weiyi2, 2);


                        }
                        catch { }

                        position_value myvalue = new position_value();
                        myvalue.position = position;
                        myvalue.weiyi1 = weiyi1;
                        myvalue.weiyi2 = weiyi2;
                        mylist.Add(myvalue);
                    }


                }
                catch { }

            }
            return mylist;
        }
    }
}