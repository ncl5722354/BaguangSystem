using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Communication;
using System.Web.ClientServices;
using System.Net.WebSockets;
using System.Net;
using System.Text;


namespace huizhou
{
    public partial class MainView : System.Web.UI.Page
    {
        string serverip = "192.168.1.3";
        int serverport = 17179;
        public static  TcpServerClient client = null;
         

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                client = new TcpServerClient(serverip, serverport);        // 建立起一个连接
                client.Data_Arrival_Event += new EventHandler(Data_Receive);


              // 读取一个html文件
            }

            if (IsPostBack == true)
            {
                if (client != null)
                {
                    // 发送心跳包
                    string send_cmd = "Package-Head:Mode:1Len:0Name:0End\n";
                    byte[] byteArray = System.Text.Encoding.ASCII.GetBytes(send_cmd);
                    client.Send_Data(byteArray);
                    
                }
            }
            label_timer.Text = DateTime.Now.ToString("yyyy年 MM月 dd日 HH:mm:ss");
        }


        private void Data_Receive(object sender,EventArgs e)
        {
            int b = 0;
            byte[] myreceive = client.receive_byte;
            string receive_string = System.Text.Encoding.ASCII.GetString(myreceive);

            int start_index = 0;

            /// 解析直接引用
            /// 


            //for(int i=0;i<receive_string.Length;i++)
            //{
            //    if (receive_string.Substring(i, 7) == "\"HEXY\":\"")
            //    {
            //        start_index = i + 7;
            //    }
            //}



        }

    }
}