using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace baguang_new.jsgrid
{
    public partial class submap1 : System.Web.UI.Page
    {


        public double Get_Yuzhi()
        {
            return MainView.yuzhi;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label_Time.Text = "当前时间：" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }
       

        struct sub_map_pos_item
        {
            public Panel panel;                 // 画面上显示的点
            public double pos;                  // 对应的线的位置
        }


        public static ArrayList points_line1 = new ArrayList();
        public static ArrayList points_line2 = new ArrayList();
        public static ArrayList points_line3 = new ArrayList();

        public static ArrayList All_Value_Pos_Array = new ArrayList();


        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                // 第一次执行
                init_view();     // 第一次加入
                
               
            }
            else
            {
                // 每一次执行
                update();
            }
        }

        private void init_view()
        {
            
            //Button panel=new Button();
            
            //panel.Style["left"]="50%";
            //panel.Style["top"]="50%";
            //panel.Style["width"]="10px";
            //panel.Style["height"]="10px";
            //panel.Style["position"]="absolute";
            //panel.ID="panel";
            //panel.Style["z-index"]="2";
            //panel.BackColor = System.Drawing.Color.Red;
            //map_panel.Controls.Add(panel);

            //Button panel1 = new Button();

            //panel1.Style["left"] = "50.5%";
            //panel1.Style["top"] = "50%";
            //panel1.Style["width"] = "10px";
            //panel1.Style["height"] = "10px";
            //panel1.Style["position"] = "absolute";
            //panel1.ID = "panel";
            //panel1.Style["z-index"] = "2";
            //panel1.Style["border-radius"] = "100%";
            //panel1.BackColor = System.Drawing.Color.Blue;
            //map_panel.Controls.Add(panel1);
                 
            
          //  ClientScript.re(Page.GetType(),"","<script type='text/javascript'>var panel = document.getElementById('map_panel');var mypanel = document.getElementById('main_map');mypanel.appendChild(panel);</script>");

            All_Value_Pos_Array = Get_All_Value_Pos();
        }
        
        private void update()
        {
            //
           // draw_lines(2167,2317,20,20,80,80);
        }

        // 返回所有的数据
        public ArrayList Get_All_Value_Pos()
        {
            ArrayList all_pos_value_string = new ArrayList();
            ArrayList now_value = MainView.all_Value;

            for(int i=0;i<now_value.Count;i++)
            {
                MainView.pos_value pos_value = (MainView.pos_value)now_value[i];
                all_pos_value_string.Add(pos_value.pos.ToString() + " " + pos_value.weiyi.ToString());
            }

            return all_pos_value_string;
        }

        private void draw_lines(double pos_start,double pos_end,double start_x,double start_y,double end_x,double end_y)
        {
           double  point_index = 0;
           double  all_point = 0;

            // 铺设一条线
            // 先计算总数
            for (int i = 0; i < MainView.all_Value.Count; i++)
            {
                MainView.pos_value this_pos_value = (MainView.pos_value)MainView.all_Value[i];
                if (this_pos_value.pos >= pos_start && this_pos_value.pos <= pos_end)
                {
                    all_point++;
                }
            }

            for (int i = 0; i < MainView.all_Value.Count; i++)
            {
                MainView.pos_value this_pos_value = (MainView.pos_value)MainView.all_Value[i];
                if (this_pos_value.pos >= pos_start && this_pos_value.pos <= pos_end)
                {
                    try
                    {
                        Button panel = new Button();

                        panel.Style["left"] = (Math.Abs(start_x - end_x) / all_point * point_index).ToString() + "px";
                        panel.Style["top"] = (Math.Abs(start_y - end_y) / all_point * point_index).ToString() + "px";
                        panel.Style["width"] = "4px";
                        panel.Style["height"] = "4px";
                        panel.Style["position"] = "absolute";
                        panel.ID = this_pos_value.pos.ToString();
                        panel.Style["z-index"] = "2";
                        panel.Style["border-radius"] = "100%";
                        panel.BackColor = System.Drawing.Color.Blue;
                        map_panel.Controls.Add(panel);
                        point_index++;

                        
                    }
                    catch { }
                }
            }


        }
    }
}