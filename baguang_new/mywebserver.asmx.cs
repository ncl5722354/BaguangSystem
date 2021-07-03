using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Collections;
using FileOperation;
using String_Caozuo;

namespace baguang_new
{
    /// <summary>
    /// mywebserver 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
     [System.Web.Script.Services.ScriptService]
    public class mywebserver : System.Web.Services.WebService
    {

        public struct posname_qushi
        {
            public string posname;
            public string qushi;
        }


        struct Xianlan_Max_Min
        {
            public string xianlan_name;              // 线缆名称
            public double max;                       // 线缆的终点
            public double min;                       // 线缆的起点
            public double max_value;                 // 线缆的最大值

        }
        
        struct pos_value{
            public  string mytime;
            public  double value;
        }




        public struct mypos_value
        {
            public double pos;
            public double weiyi;
        }
        [WebMethod]
        public int HelloWorld(string name)
        {
            return 1;
            
        }

        [WebMethod]

        public ArrayList get_first_array(string first_time)
        {
            // 从数据里面找一个，使用对半查找
            ArrayList filelist = FileCaozuo.Read_All_Files(MainView.data_path,"*.txt");

            int first_index=0;
            int end_index=filelist.Count-1;

            DateTime myfirst_time = DateTime.Parse(first_time);

            string start_string=filelist[first_index].ToString();
            string  end_string=filelist[end_index].ToString();

            // 不一定是对的
            return filelist;

        }

        [WebMethod]

        public ArrayList get_pos_value(string pos)
        {
            // 最近30天记录

            // 重构返回函数
            ArrayList newlist = new ArrayList();

            double first_value;

            // 找到所有的文件
            

            // 基础 
            ArrayList all_dirs = FileCaozuo.Read_All_Dir("D:\\zhenglidata\\");

            if(all_dirs.Count<=30)
            {
                ArrayList all_values = new ArrayList();
                int index_in_file = 0;                                         // 这个数据在文件中的位置

                string dir_fist = all_dirs[0].ToString();

                ArrayList files = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir_fist + "\\","*.txt");

                string file_first = files[0].ToString();

                string[] all_lines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir_fist + "\\" + file_first);


                for (int i = 0; i < all_lines.Length; i++)
                {
                    string value_line = all_lines[i];

                    string pos_stirng = string_caozuo.Get_Table_String(value_line, 1);

                    if(pos_stirng==pos)
                    {
                        index_in_file = i;
                        break;
                    }
                    
                }

                string dir0 = all_dirs[0].ToString();

                ArrayList myfiles0 = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir0 + "\\", "*.txt");

                string file_first10 = myfiles0[0].ToString();

                string[] myall_lines0 = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir0 + "\\" + file_first10);

                string value_string0 = myall_lines0[index_in_file];

                string myvalue0 = string_caozuo.Get_Table_String(value_string0, 2);


                pos_value mypos_value0 = new pos_value();
                mypos_value0.mytime = string_caozuo.Get_Xiahuaxian_String(dir0, 1) + "-" + string_caozuo.Get_Xiahuaxian_String(dir0, 2) + "-" + string_caozuo.Get_Xiahuaxian_String(dir0, 3);
                mypos_value0.value = double.Parse(myvalue0);

                first_value = mypos_value0.value;



                // 
                for (int  i = all_dirs.Count-1; i >= 0; i--)
                {
                    string dir = all_dirs[i].ToString();

                    ArrayList myfiles = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir + "\\", "*.txt");

                    string file_first1 = myfiles[myfiles.Count-1].ToString();

                    string[] myall_lines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir + "\\" + file_first1);

                    string value_string = myall_lines[index_in_file];

                    string myvalue = string_caozuo.Get_Table_String(value_string, 2);


                    pos_value mypos_value = new pos_value();
                    mypos_value.mytime = string_caozuo.Get_Xiahuaxian_String(dir, 1) + "-" + string_caozuo.Get_Xiahuaxian_String(dir, 2) + "-" + string_caozuo.Get_Xiahuaxian_String(dir, 3);
                    mypos_value.value = (1 - Math.Sqrt(3) / 2) * Math.Abs(double.Parse(myvalue) - first_value) / 0.0482;



                    all_values.Add(mypos_value);
                    
                
                }
                ArrayList return_list = new ArrayList();

                for (int i = all_values.Count - 1; i >= 0; i--)
                {
                    return_list.Add(all_values[i]);
                }

                return return_list;
               // return all_values;
            }
            else
            {
                ArrayList all_values = new ArrayList();
                int index_in_file = 0;                                         // 这个数据在文件中的位置

                string dir_fist = all_dirs[0].ToString();

                ArrayList files = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir_fist + "\\", "*.txt");

                string file_first = files[0].ToString();

                string[] all_lines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir_fist + "\\" + file_first);


                
                for (int i = 0; i < all_lines.Length; i++)
                {
                    string value_line = all_lines[i];

                    string pos_stirng = string_caozuo.Get_Table_String(value_line, 1);

                    if (pos_stirng == pos)
                    {
                        index_in_file = i;
                        break;
                    }

                }

                string dir0 = all_dirs[0].ToString();

                ArrayList myfiles0 = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir0 + "\\", "*.txt");

                string file_first10 = myfiles0[0].ToString();

                string[] myall_lines0 = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir0 + "\\" + file_first10);

                string value_string0 = myall_lines0[index_in_file];

                string myvalue0 = string_caozuo.Get_Table_String(value_string0, 2);

                pos_value mypos_value0 = new pos_value();
                mypos_value0.mytime = string_caozuo.Get_Xiahuaxian_String(dir0, 1) + "-" + string_caozuo.Get_Xiahuaxian_String(dir0, 2) + "-" + string_caozuo.Get_Xiahuaxian_String(dir0, 3);
                mypos_value0.value = double.Parse(myvalue0);

                first_value = mypos_value0.value;

                // 
                for (int i = all_dirs.Count - 1; i >= all_dirs.Count - 30; i--)
                {
                    string dir = all_dirs[i].ToString();

                    ArrayList myfiles = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir + "\\", "*.txt");

                    string file_first1 = myfiles[myfiles.Count-1].ToString();

                    string[] myall_lines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir + "\\" + file_first1);

                    string value_string = myall_lines[index_in_file];

                    string myvalue = string_caozuo.Get_Table_String(value_string, 2);


                    pos_value mypos_value = new pos_value();
                    mypos_value.mytime = string_caozuo.Get_Xiahuaxian_String(dir, 1) + "-" + string_caozuo.Get_Xiahuaxian_String(dir, 2) + "-" + string_caozuo.Get_Xiahuaxian_String(dir, 3);
                    mypos_value.value = (1 - Math.Sqrt(3) / 2) * Math.Abs(double.Parse(myvalue) - first_value) / 0.0482;

                    all_values.Add(mypos_value);


                }

                string dir1 = all_dirs[0].ToString();

                ArrayList myfiles1 = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir1 + "\\", "*.txt");

                string file_first11 = myfiles1[0].ToString();

                string[] myall_lines1= FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir1 + "\\" + file_first11);

                string value_string1 = myall_lines1[index_in_file];

                string myvalue1 = string_caozuo.Get_Table_String(value_string1, 2);


                pos_value mypos_value1 = new pos_value();
                mypos_value1.mytime = string_caozuo.Get_Xiahuaxian_String(dir1, 1) + "-" + string_caozuo.Get_Xiahuaxian_String(dir1, 2) + "-" + string_caozuo.Get_Xiahuaxian_String(dir1, 3);
                mypos_value1.value = double.Parse(myvalue1);

               // all_values.Add(mypos_value1);

                //return all_values;


                ArrayList return_list = new ArrayList();

                for (int i = all_values.Count - 1; i >= 0; i--)
                {
                    return_list.Add(all_values[i]);
                }

                return return_list;
            }



            

           
        }


        [WebMethod]

        public ArrayList Update_Time_Value(string data_time)
        {
            // 读取第一个文件和相应的那个文件
            Xianlan_Max_Min xianlan1 = new Xianlan_Max_Min();
            Xianlan_Max_Min xianlan2 = new Xianlan_Max_Min();
            Xianlan_Max_Min xianlan3 = new Xianlan_Max_Min();
            Xianlan_Max_Min xianlan4 = new Xianlan_Max_Min();
            Xianlan_Max_Min xianlan5 = new Xianlan_Max_Min();
            Xianlan_Max_Min xianlan6 = new Xianlan_Max_Min();
            Xianlan_Max_Min xianlan7 = new Xianlan_Max_Min();


            ArrayList all_xianlan = new ArrayList();   // 保存所有的线缆
            ArrayList all_Value = new ArrayList();     // 保存所有的值

            all_xianlan.Clear();
            all_Value.Clear();

            xianlan1.xianlan_name = "坡道1";
            xianlan2.xianlan_name = "坡道2";
            xianlan3.xianlan_name = "坡道3";
            xianlan4.xianlan_name = "坡道4";
            xianlan5.xianlan_name = "坡道5";
            xianlan6.xianlan_name = "坡道6";
            xianlan7.xianlan_name = "坡道7";

            xianlan1.min = 2164;
            xianlan1.max = 2317;

            xianlan2.min = 2361;
            xianlan2.max = 2558;

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


            try
            {

                for (int j = 0; j < all_xianlan.Count; j++)
                {
                    Xianlan_Max_Min xianlan = (Xianlan_Max_Min)all_xianlan[j];
                    xianlan.max_value = 0;
                    all_xianlan[j] = xianlan;
                }
                ArrayList alldata_text = FileCaozuo.Read_All_Files(MainView.data_path, "*.txt");

                string[] jichu_lines = FileCaozuo.Read_All_Line( MainView.data_path + alldata_text[0].ToString());                      //  基础数据

                
                
                // 在这个部分去找相应的时间文件

                // 

                DateTime thisdatetime = DateTime.Parse(data_time);

                int startindex = 0;
                int endindex = alldata_text.Count - 1;
                int thisindex = 0;
                int halfindex = 0;

                while(startindex!=endindex)
                {
                    if(startindex>endindex)
                    {
                        return null;
                    }

                    if (startindex == endindex - 1)
                    {
                        string start_time_date = alldata_text[startindex].ToString();

                        // 分解开始日期
                        string start_date = string_caozuo.Get_HengGang_String(start_time_date, 1);
                        string start_time = string_caozuo.Get_HengGang_String(start_time_date, 2);

                        start_time = start_time.Substring(0, start_time.Length - 4);

                        string start_year = string_caozuo.Get_Xiahuaxian_String(start_date, 1);              // 开始年
                        string start_month = string_caozuo.Get_Xiahuaxian_String(start_date, 2);             // 开始月
                        string start_day = string_caozuo.Get_Xiahuaxian_String(start_date, 3);               // 开始日

                        string start_hour = string_caozuo.Get_Xiahuaxian_String(start_time, 1);              // 开始时
                        string start_min = string_caozuo.Get_Xiahuaxian_String(start_time, 2);               // 开始分
                        string start_sec = string_caozuo.Get_Xiahuaxian_String(start_time, 3);               // 开始秒
                        
                        string end_time_date = alldata_text[endindex].ToString();

                        string end_date = string_caozuo.Get_HengGang_String(end_time_date, 1);
                        string end_time = string_caozuo.Get_HengGang_String(end_time_date, 2);

                        end_time = end_time.Substring(0, end_time.Length - 4);

                        string end_year = string_caozuo.Get_Xiahuaxian_String(end_date, 1);              // 结束年
                        string end_month = string_caozuo.Get_Xiahuaxian_String(end_date, 2);             // 结束月
                        string end_day = string_caozuo.Get_Xiahuaxian_String(end_date, 3);               // 结束日

                        string end_hour = string_caozuo.Get_Xiahuaxian_String(end_time, 1);              // 结束时
                        string end_min = string_caozuo.Get_Xiahuaxian_String(end_time, 2);               // 结束分
                        string end_sec = string_caozuo.Get_Xiahuaxian_String(end_time, 3);               // 结束秒


                        // 分三种情况
                        DateTime nowtime = DateTime.Parse(data_time);
                        string nowtime_string = nowtime.ToString("yyyy-MM-dd");

                        if (nowtime_string == start_year + "-" + start_month + "-" + start_day)
                        {
                            thisindex = startindex;
                            break;
                        }
                        else if (nowtime_string == end_year + "-" + end_month + "-" + end_day)
                        {
                            thisindex = endindex;
                            break;
                        }
                        else
                        {
                            thisindex = startindex;
                            break;
                        }
                        

                        // 分解结束日期
                    }

                    if (startindex <= endindex - 2)
                    {
                        // 假如现在的
                        string start_time_date = alldata_text[startindex].ToString();

                        // 分解开始日期
                        string start_date = string_caozuo.Get_HengGang_String(start_time_date, 1);
                        string start_time = string_caozuo.Get_HengGang_String(start_time_date, 2);

                        start_time = start_time.Substring(0, start_time.Length - 4);

                        string start_year = string_caozuo.Get_Xiahuaxian_String(start_date, 1);              // 开始年
                        string start_month = string_caozuo.Get_Xiahuaxian_String(start_date, 2);             // 开始月
                        string start_day = string_caozuo.Get_Xiahuaxian_String(start_date, 3);               // 开始日

                        string start_hour = string_caozuo.Get_Xiahuaxian_String(start_time, 1);              // 开始时
                        string start_min = string_caozuo.Get_Xiahuaxian_String(start_time, 2);               // 开始分
                        string start_sec = string_caozuo.Get_Xiahuaxian_String(start_time, 3);               // 开始秒

                        string end_time_date = alldata_text[endindex].ToString();

                        string end_date = string_caozuo.Get_HengGang_String(end_time_date, 1);
                        string end_time = string_caozuo.Get_HengGang_String(end_time_date, 2);

                        end_time = end_time.Substring(0, end_time.Length - 4);

                        string end_year = string_caozuo.Get_Xiahuaxian_String(end_date, 1);              // 结束年
                        string end_month = string_caozuo.Get_Xiahuaxian_String(end_date, 2);             // 结束月
                        string end_day = string_caozuo.Get_Xiahuaxian_String(end_date, 3);               // 结束日

                        string end_hour = string_caozuo.Get_Xiahuaxian_String(end_time, 1);              // 结束时
                        string end_min = string_caozuo.Get_Xiahuaxian_String(end_time, 2);               // 结束分
                        string end_sec = string_caozuo.Get_Xiahuaxian_String(end_time, 3);               // 结束秒

                        DateTime start_datetime = DateTime.Parse(start_year + "-" + start_month + "-" + start_day + " " + start_hour + ":" + start_min + ":" + start_sec);
                        DateTime end_datetime = DateTime.Parse(end_year + "-" + end_month + "-" + end_day + " " + end_hour + ":" + end_min + ":" + end_sec);

                        DateTime now_datetime=DateTime.Parse(data_time);


                        //  值在最前面和最后面之间

                        if( start_datetime.ToOADate()< now_datetime.ToOADate() && end_datetime.ToOADate()>now_datetime.ToOADate() )
                        {
                            halfindex = (startindex + endindex) / 2;

                           string half = alldata_text[halfindex].ToString();


                           string half_date = string_caozuo.Get_HengGang_String(half, 1);
                           string half_time = string_caozuo.Get_HengGang_String(half, 2);

                           half_time = half_time.Substring(0, half_time.Length - 4);

                           string half_year = string_caozuo.Get_Xiahuaxian_String(half_date, 1);              // 开始年
                           string half_month = string_caozuo.Get_Xiahuaxian_String(half_date, 2);             // 开始月
                           string half_day = string_caozuo.Get_Xiahuaxian_String(half_date, 3);               // 开始日

                           string half_hour = string_caozuo.Get_Xiahuaxian_String(half_time, 1);              // 开始时
                           string half_min = string_caozuo.Get_Xiahuaxian_String(half_time, 2);               // 开始分
                           string half_sec = string_caozuo.Get_Xiahuaxian_String(half_time, 3);

                           DateTime half_datetime = DateTime.Parse(half_year + "-" + half_month + "-" + half_day + " " + half_hour + ":" + half_min + ":" + half_sec);


                           if (half_datetime == now_datetime)
                           {
                               thisdatetime = half_datetime;
                               break;
                           }

                          if(half_datetime.ToOADate()>now_datetime.ToOADate() && start_datetime.ToOADate()<now_datetime.ToOADate())
                          {
                              endindex = halfindex;
                          }

                          if (half_datetime.ToOADate() < now_datetime.ToOADate() && end_datetime.ToOADate() > now_datetime.ToOADate())
                          {
                              startindex = halfindex;
                          }

                        }
                        else if(start_datetime.ToOADate()>= now_datetime.ToOADate() )
                        {
                            thisindex = startindex;
                            break;
                        }

                        else if(end_datetime.ToOADate()<=now_datetime.ToOADate())
                        {
                            thisindex = endindex;
                            break;
                        }

                       
                    }
                }


                string[] now_lines = FileCaozuo.Read_All_Line( MainView.data_path + alldata_text[thisindex].ToString());   //  当前数据

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


                        for (int j = 0; j < all_xianlan.Count; j++)
                        {
                            Xianlan_Max_Min xianlan = (Xianlan_Max_Min)all_xianlan[j];
                            // xianlan.max_value = 0;

                            if (j == 1)
                            {
                                int b = 0;
                            }
                            if (pos >= xianlan.min && pos <= xianlan.max)
                            {
                                // 说明这个数据在某个线缆之内   // 就把这个点放到哪个点种

                                if (count_index >= all_Value.Count)
                                {
                                    // 目前计数大于等于已经有的，说明这个数字要进入进去
                                    double value = Math.Abs(jichu_value - now_value) * (1 - Math.Sqrt(3) / 2) / 0.0482;
                                    value = Math.Round(value, 3);
                                    mypos_value mypos_value = new mypos_value();
                                    mypos_value.pos = pos;

                                    if (value <= 0.01)
                                    {
                                        value = 0.01;
                                    }
                                    mypos_value.weiyi = value;
                                    all_Value.Add(mypos_value);
                                    count_index++;
                                    if (value >= xianlan.max_value)
                                    {
                                        xianlan.max_value = value;
                                        if (j == 1)
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
                                    value = Math.Round(value, 3);
                                    mypos_value mypos_value = new mypos_value();
                                    mypos_value.pos = pos;
                                    if (value <= 0.01) value = 0.01;
                                   
                                    mypos_value.weiyi = value;
                                    all_Value[count_index] = mypos_value;
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

            return all_Value;



            // 画面线缆的变化
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[0], circle1);
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[1], circle2);
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[2], circle3);
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[3], circle4);
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[4], circle5);
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[5], circle6);
            //Update_Pos_Panel((Xianlan_Max_Min)all_xianlan[6], circle7);

        }     // 现在的值

        [WebMethod]
        public string user_limit(string username,string password)
        {
            IniFile myiniflie = new IniFile("D:\\config\\userpassword.ini");

            if(password==myiniflie.IniReadValue(username,"password"))
            {
                return myiniflie.IniReadValue(username, "usertype");
            }
            else
            {
                return "none";
            }

        }

        [WebMethod]

        public void Set_Yuzhi(string yuzhi)
        {
            IniFile myiniflie = new IniFile("D:\\config\\userpassword.ini");

            try
            {
                double yuzhi_double = double.Parse(yuzhi);
                myiniflie.IniWriteValue("yuzhi", "yuzhi", yuzhi_double.ToString());
                MainView.yuzhi = yuzhi_double;
            }
            catch { }


        }


          //xianlan1.min = 2164;
          //  xianlan1.max = 2317;

          //  xianlan2.min = 2558;
          //  xianlan2.max = 2764;

          //  xianlan3.min = 2934;
          //  xianlan3.max = 3074;

          //  xianlan4.min = 602;
          //  xianlan4.max = 636;

          //  xianlan5.min = 742;
          //  xianlan5.max = 774;

          //  xianlan6.min = 875;
          //  xianlan6.max = 907;

          //  xianlan7.min = 994;
          //  xianlan7.max = 1026;
        [WebMethod]
        public ArrayList Get_All_Pos()
        {

            ArrayList all_pos=new ArrayList();
            try
            {
                ArrayList alldirs = FileCaozuo.Read_All_Dir("D:\\zhenglidata\\");

                ArrayList allfiles = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + alldirs[0].ToString(), "*.txt");

                string[] allines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + alldirs[0].ToString()+"\\"+ allfiles[0].ToString());

                for (int i = 0; i < allines.Length; i++)
                {
                    string line = allines[i];
                    string pos_string = string_caozuo.Get_Table_String(line, 1);

                    try
                    {
                        float pos_value = float.Parse(pos_string);

                        if((pos_value>=602 && pos_value<=636)||(pos_value>=742 && pos_value<=774) ||(pos_value>=875 && pos_value<=907) || (pos_value>=994 && pos_value<=1026) ||(pos_value>=2164 && pos_value<=2317) || (pos_value>=2558 && pos_value<=2764) || (pos_value>=2934 && pos_value<=3074) )
                        {
                            all_pos.Add(pos_string);
                        }

                        
                    }
                    catch { }
                }


            }
            catch { }




            return all_pos;
        }

        [WebMethod]
        public ArrayList Get_AllValue_From_Mouth(string yearmonth)
        {
            ArrayList allvalue = new ArrayList();

            try
            {
                ArrayList alldirs=FileCaozuo.Read_All_Dir("D:\\zhenglidata\\");

                for (int i = 0; i < alldirs.Count; i++)
                {
                    string dir_string = alldirs[i].ToString();
                    string year = string_caozuo.Get_Xiahuaxian_String(dir_string, 1);
                    string month = string_caozuo.Get_Xiahuaxian_String(dir_string, 2);

                    string year_string = year + "_" + month;

                    if (yearmonth == year_string)
                    {

                        ArrayList allfiles = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + alldirs[i].ToString(), "*.txt");

                        string[] allines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + alldirs[i].ToString() + "\\" + allfiles[0].ToString());

                        ArrayList filesfirst = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + alldirs[0].ToString(), "*.txt");

                        string[] allinesfirst = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + alldirs[0].ToString() + "\\" + filesfirst[0].ToString());

                        for (int j = 0; j < allines.Length; j++)
                        {
                            string line = allines[j];
                            string line_first=allinesfirst[j];
                            string value_string = string_caozuo.Get_Table_String(line, 2);
                            string value_first_string = string_caozuo.Get_Table_String(line_first, 2);

                            string pos_string = string_caozuo.Get_Table_String(line, 1);

                            try
                            {
                                float pos_value = float.Parse(pos_string);

                                if ((pos_value >= 602 && pos_value <= 636) || (pos_value >= 742 && pos_value <= 774) || (pos_value >= 875 && pos_value <= 907) || (pos_value >= 994 && pos_value <= 1026) || (pos_value >= 2164 && pos_value <= 2317) || (pos_value >= 2558 && pos_value <= 2764) || (pos_value >= 2934 && pos_value <= 3074))
                                {
                                   // allvalue.Add(value_string);

                                    float value = float.Parse(value_string);
                                    float value_first = float.Parse(value_first_string);

                                    float value_jiegou = (float)((1 - Math.Sqrt(3) / 2) * Math.Abs(value - value_first) / 0.0482);

                                    allvalue.Add(value_jiegou.ToString());
                                }


                            }
                            catch { }


                           
                        }

                        break;
                    }



                }

                

            }
            catch { }


            return allvalue;

        }


        [WebMethod]
        public ArrayList Get_AllValue_From_Day(string yearmonth,string file)
        {
            ArrayList allvalue = new ArrayList();
            try
            {

                ArrayList alldirs = FileCaozuo.Read_All_Dir("D:\\zhenglidata\\");
                string[] allines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + yearmonth + "\\" + file);
                ArrayList filesfirst = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + alldirs[0].ToString(), "*.txt");
                string[] allinesfirst = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + alldirs[0].ToString() + "\\" + filesfirst[0].ToString());
                for (int j = 0; j < allines.Length; j++)
                {
                    string line = allines[j];
                    string line_first = allinesfirst[j];
                    string value_string = string_caozuo.Get_Table_String(line, 2);
                    string value_first_string = string_caozuo.Get_Table_String(line_first, 2);

                    string pos_string = string_caozuo.Get_Table_String(line, 1);

                    try
                    {
                        float pos_value = float.Parse(pos_string);

                        if ((pos_value >= 602 && pos_value <= 636) || (pos_value >= 742 && pos_value <= 774) || (pos_value >= 875 && pos_value <= 907) || (pos_value >= 994 && pos_value <= 1026) || (pos_value >= 2164 && pos_value <= 2317) || (pos_value >= 2558 && pos_value <= 2764) || (pos_value >= 2934 && pos_value <= 3074))
                        {
                            // allvalue.Add(value_string);

                            float value = float.Parse(value_string);
                            float value_first = float.Parse(value_first_string);

                            float value_jiegou = (float)((1 - Math.Sqrt(3) / 2) * Math.Abs(value - value_first) / 0.0482);

                            allvalue.Add(value_jiegou.ToString());
                        }


                    }
                    catch { }



                }





            }
            catch { }


            return allvalue;
        }



     [WebMethod]
        public ArrayList Get_Change_Qushi_One_Month()
        {
            DateTime nowtime = DateTime.Now;

            ArrayList list = new ArrayList();

            try
            {
                DateTime thistime = nowtime;
                string dir_name = thistime.ToString("yyyy_MM_dd");
                string day_file_name = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir_name + "\\", "*.txt")[0].ToString();
                string[] alllines = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir_name + "\\" + day_file_name);

                DateTime yestodaytime = nowtime.AddMonths(-1);
                string dir_name_yestoday = yestodaytime.ToString("yyyy_MM_dd");
                string day_file_name_yestoday = FileCaozuo.Read_All_Files("D:\\zhenglidata\\" + dir_name_yestoday + "\\", "*.txt")[0].ToString();
                string[] alllines_yestoday = FileCaozuo.Read_All_Line("D:\\zhenglidata\\" + dir_name_yestoday + "\\" + day_file_name_yestoday);

                float max1 = 0;
                float max2 = 0;
                float max3 = 0;
                float max4 = 0;
                float max5 = 0;
                float max6 = 0;
                float max7 = 0;

                for (int i = 0; i < alllines.Length-1; i++)
                {
                    string pos_string = string_caozuo.Get_Table_String(alllines[i], 1);

                    string value_string = string_caozuo.Get_Table_String(alllines[i], 2);

                    string value_yestoday_string = string_caozuo.Get_Table_String(alllines_yestoday[i], 2);

                    float pos = float.Parse(pos_string);


                   
                    if (pos >= 2164 && pos <= 2317)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max1)
                            max1 = weiyi;
                    }


                    
                    if (pos >= 2558 && pos <= 2764)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max2)
                            max2 = weiyi;
                    }


                    
                    if (pos >= 2934 && pos <= 3074)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max3)
                            max3 = weiyi;
                    }


                   
                    if (pos >= 602 && pos <= 636)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max4)
                            max4 = weiyi;
                    }

                    
                    if (pos >= 742 && pos <= 774)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max5)
                            max5 = weiyi;
                    }


                    
                    if (pos >= 875 && pos <= 907)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max6)
                            max6 = weiyi;
                    }



                    
                    if (pos >= 994 && pos <= 1026)
                    {
                        float value = float.Parse(value_string);
                        float value_yes = float.Parse(value_yestoday_string);

                        float weiyi = (float)(Math.Abs(value - value_yes) * (1 - Math.Sqrt(3) / 2) / 0.0482);

                        if (weiyi >= max7)
                            max7 = weiyi;
                    }

                }

                posname_qushi qushi1 = new posname_qushi();
                posname_qushi qushi2 = new posname_qushi();
                posname_qushi qushi3 = new posname_qushi();
                posname_qushi qushi4 = new posname_qushi();
                posname_qushi qushi5 = new posname_qushi();
                posname_qushi qushi6 = new posname_qushi();
                posname_qushi qushi7 = new posname_qushi();


                qushi1.posname = "1号坡道";
                qushi1.qushi = max1.ToString();

                qushi2.posname = "2号坡道";
                qushi2.qushi = max2.ToString();

                qushi3.posname = "3号坡道";
                qushi3.qushi = max3.ToString();


                qushi4.posname = "1号测斜管";
                qushi4.qushi = max4.ToString();

                qushi5.posname = "2号测斜管";
                qushi5.qushi = max5.ToString();

                qushi6.posname = "3号测斜管";
                qushi6.qushi = max6.ToString();

                qushi7.posname = "4号测斜管";
                qushi7.qushi = max7.ToString();

                if (max1 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "1号坡道趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='1号坡道趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max1 > 0.3 && max1 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "1号坡道趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='1号坡道趋势'", update_cmd);
                    }
                    catch { }
                }
                else if(max1>=0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "1号坡道趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='1号坡道趋势'", update_cmd);
                    }
                    catch { }
                }

                if (max2 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "2号坡道趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='2号坡道趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max2 > 0.3 && max2 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "2号坡道趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='2号坡道趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max2 >= 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "2号坡道趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='2号坡道趋势'", update_cmd);
                    }
                    catch { }
                }

                if (max3 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "3号坡道趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='3号坡道趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max3 > 0.3 && max3 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "3号坡道趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='3号坡道趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max3 >= 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "3号坡道趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='3号坡道趋势'", update_cmd);
                    }
                    catch { }
                }

                if (max4 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "1号侧斜管趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='1号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max4 > 0.3 && max4 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "1号侧斜管趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='1号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max4 >= 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "1号侧斜管趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='1号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }


                if (max5 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "2号侧斜管趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='2号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max5 > 0.3 && max5 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "2号侧斜管趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='2号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max5>= 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "2号侧斜管趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='2号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }

                if (max6 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "3号侧斜管趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='3号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max6 > 0.3 && max6 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "3号侧斜管趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='3号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max6 >= 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "3号侧斜管趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='3号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }

                if (max7 <= 0.3)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "4号侧斜管趋势";
                        insert_cmd[1] = "趋势平稳";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势平稳'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='4号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max7 > 0.3 && max7 < 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "4号侧斜管趋势";
                        insert_cmd[1] = "趋势明显";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势明显'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='4号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }
                else if (max7 >= 0.9)
                {
                    try
                    {
                        string[] insert_cmd = new string[3];
                        insert_cmd[0] = "4号侧斜管趋势";
                        insert_cmd[1] = "趋势过大";
                        insert_cmd[2] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        Global.builder.Insert("baguangdata", insert_cmd);


                        //string[] update_cmd = new string[2];
                        //update_cmd[0] = "status='趋势过大'";
                        //update_cmd[1] = "datetime='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'";
                        //Global.builder.Updata("baguangdata", "podaoname='4号侧斜管趋势'", update_cmd);
                    }
                    catch { }
                }




                list.Add(qushi1);
                list.Add(qushi2);
                list.Add(qushi3);
                list.Add(qushi4);
                list.Add(qushi5);
                list.Add(qushi6);
                list.Add(qushi7);

            }
            catch { }
            return list;
        }


     [WebMethod]
     public ArrayList Get_Texts_From_Day_Data(string data)
     {
         ArrayList alltext_files = new ArrayList();

         string filename = string_caozuo.Get_HengGang_String(data, 1) + "_" + string_caozuo.Get_HengGang_String(data, 2).PadLeft(2,'0') + "_" + string_caozuo.Get_HengGang_String(data, 3).PadLeft(2,'0');

         alltext_files = FileCaozuo.Read_All_Files("D://zhenglidata//" + filename, "*.txt");

         return alltext_files;

     }

    }
}
