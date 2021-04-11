using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace baguang_new
{
    public partial class submap4 : System.Web.UI.Page
    {


        public double Get_Yuzhi()
        {
            return MainView.yuzhi;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_Time.Text = "当前时间：" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }


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


        private void update()
        {
            //
            // draw_lines(2167,2317,20,20,80,80);
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

        public ArrayList Get_All_Value_Pos()
        {
            ArrayList all_pos_value_string = new ArrayList();
            ArrayList now_value = MainView.all_Value;

            for (int i = 0; i < now_value.Count; i++)
            {
                MainView.pos_value pos_value = (MainView.pos_value)now_value[i];
                all_pos_value_string.Add(pos_value.pos.ToString() + " " + pos_value.weiyi.ToString());
            }

            return all_pos_value_string;
        }
    }
}