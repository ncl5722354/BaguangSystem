using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using FileOperation;
using String_Caozuo;
using System.Collections;
using System.IO;
using SqlConnect;
using System.Threading;

namespace update
{
    public partial class Form1 : Form
    {
        bool isupdate = false;
      //  SQL_Connect_Builder builder = new SQL_Connect_Builder(".", "saigedata", 1, 1000);

        int wenjian = 0;
        int wenjianzong = 0;
        int shuju = 0;
        int shujuzong = 0;
        public Form1()
        {
            InitializeComponent();


           
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(isupdate==false)
            {
                isupdate = true;
                Thread mythread = new Thread(thread);
                mythread.Start();
            }
            

        }

        private void thread()
        {
            ArrayList alldirs = FileCaozuo.Read_All_Files("D://坝光data//","*.txt");
            wenjianzong = alldirs.Count;
           
            for (int i = 0; i < alldirs.Count; i++)
            {
                wenjian = i;
                string filename = alldirs[i].ToString();
                string dirname = string_caozuo.Get_HengGang_String(filename, 1);
                try
                {
                    FileCaozuo.Create_Dir("D://zhenglidata//" + dirname + "//");
                    FileCaozuo.Copy("D://坝光data//" + filename, "D://zhenglidata//" + dirname + "//"+filename);
                }
                catch { }
            }

            isupdate = false;


        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            label2.Text = wenjian.ToString() + "/" + wenjianzong.ToString();
            label4.Text = shuju.ToString() + "/" + shujuzong.ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
