using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;
using FileOperation;
using System.IO;
using System.IO.Ports;
using SqlConnect;

namespace phonemessage
{
    public partial class Form1 : Form
    {

        int phone_num = 4;
        int now_phone_num = 0;

        SerialPort sp1 = new SerialPort();

        SQL_Connect_Builder builder = new SQL_Connect_Builder("112.95.215.131", "baguangdatabase", 0, 1000);

        public static IniFile ini = new IniFile("E://message.ini");
        bool send_is = false;
        public int count = 3600;

        public Form1()
        {
            InitializeComponent();
            //ini.IniWriteValue("phonenum", "phone1", "15122410910");
            //ini.IniWriteValue("phonenum", "phone2", "15122410910");
            //ini.IniWriteValue("phonenum", "phone3", "15122410910");


            //ini.IniWriteValue("com", "com", "com4");

            listBox_phone_list.Items.Clear();
            
            for(int i=1;i<=phone_num;i++)
            {
               string phonenum = ini.IniReadValue("phonenum", "phone" + i.ToString());
               listBox_phone_list.Items.Add(phonenum);
            }

            string port_name = ini.IniReadValue("com", "com");
            label_port.Text = port_name;


            try
            {
                sp1.BaudRate = 115200;
                sp1.PortName = label_port.Text;
                sp1.Parity = Parity.None;
                sp1.DataBits = 8;
                sp1.StopBits = StopBits.One;
                sp1.Open();
            }
            catch { }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (count > 0)
            {
                count--;
                label_count.Text = count.ToString();
            }

            if(count==0)
            {
                count = 3600;
                timer2.Enabled = true;
            }


        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            if (now_phone_num < phone_num)
            {
                try
                {

                    string send_cmd = "";

                    //DataTable dt = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '1号坡道趋势' order by datetime desc ");
                    //send_cmd = send_cmd + dt.Rows[0][0].ToString() + ":" + dt.Rows[0][1].ToString() + "  ";

                    //DataTable dt1 = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '2号坡道趋势' order by datetime desc  ");
                    //send_cmd = send_cmd + dt1.Rows[0][0].ToString() + ":" + dt1.Rows[0][1].ToString() + "  ";

                    //DataTable dt2 = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '3号坡道趋势' order by datetime desc  ");
                    //send_cmd = send_cmd + dt2.Rows[0][0].ToString() + ":" + dt2.Rows[0][1].ToString() + "  ";

                    //DataTable dt3 = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '1号侧斜管趋势' order by datetime desc  ");
                    //send_cmd = send_cmd + dt3.Rows[0][0].ToString() + ":" + dt3.Rows[0][1].ToString() + "  ";

                   


                    //string a = "AT+CISMSSEND=86" + listBox_phone_list.Items[now_phone_num].ToString() + ",1," + send_cmd + "\x0D\x0A";

                    //byte[] byteArray = System.Text.Encoding.Default.GetBytes(a);

                    //sp1.Write(byteArray,0,byteArray.Length);


                    //// 第二波

                    //System.Threading.Thread.Sleep(1000);

                    //send_cmd = "";

                    //DataTable dt4 = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '2号侧斜管趋势' order by datetime desc  ");
                    //send_cmd = send_cmd + dt4.Rows[0][0].ToString() + ":" + dt4.Rows[0][1].ToString() + "  ";

                    //DataTable dt5 = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '3号侧斜管趋势' order by datetime desc  ");
                    //send_cmd = send_cmd + dt5.Rows[0][0].ToString() + ":" + dt5.Rows[0][1].ToString() + "  ";

                    //DataTable dt6 = builder.Select_SQL("select top 1 *   from baguangdatabase.dbo.baguangdata where podaoname = '4号侧斜管趋势' order by datetime desc  ");
                    //send_cmd = send_cmd + dt6.Rows[0][0].ToString() + ":" + dt6.Rows[0][1].ToString() + "  ";



                    DataTable dt = builder.Select_SQL("select * from baguangdata where status='状况报警' || status='趋势过大'");

                    if (dt == null || dt.Rows.Count == 0)
                    {
                        timer2.Enabled = false;
                        now_phone_num = 0;
                        return; 
                    }
                    else
                    {
                        send_cmd = "有坡道测斜管趋势过大或报警，具体位置请看软件或联系管理员";
                    }



                    send_cmd = "发送测试";

                   string a = "AT+CISMSSEND=86" + listBox_phone_list.Items[now_phone_num].ToString() + ",1," + send_cmd + "\x0D\x0A";


                   // a = "发送测试";
                    byte[] byteArray1 = System.Text.Encoding.Default.GetBytes(a);

                    sp1.Write(byteArray1, 0, byteArray1.Length);

                    // 第三波


                    now_phone_num++;
                }
                catch { }
            }
            else
            {
                timer2.Enabled = false;
                now_phone_num = 0;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string send_cmd = "发送测试";

            string a = "AT+CISMSSEND=8615122410910"  + ",1," + send_cmd + "\x0D\x0A";


            // a = "发送测试";
            byte[] byteArray1 = System.Text.Encoding.Default.GetBytes(a);

            sp1.Write(byteArray1, 0, byteArray1.Length);
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }


    }
}
