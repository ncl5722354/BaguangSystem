using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;

using System.Text;

using System.Windows.Forms;
using System.Runtime.InteropServices;


namespace 检测错误窗体
{


    public partial class Form1 : Form
    {
        [DllImport("User32.dll", EntryPoint = "FindWindow")]
        private static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

        [DllImport("user32.dll", EntryPoint = "FindWindow")]
        private static extern IntPtr FindWindowEx(IntPtr hwndParent, IntPtr hwndChildAfter, string lpszClass, string lpszWindow);
        const int BM_CLICK = 0xF5;

        [DllImport("user32.dll", EntryPoint = "SendMessageA")]
        private static extern int SendMessage(IntPtr hwnd, uint wMsg, int wParam, int lParam);

       
       // [return: MarshalAs(UnmanagedType.Bool)]
       // public static extern bool EnumChildWindows(IntPtr hwndParent, EnumWindowsProc lpEnumFunc, IntPtr lParam);

        [DllImport("user32.dll")]
        public static extern int GetWindowText(int hWnd, IntPtr lpString, int nMaxCount);


        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool EnumChildWindows(IntPtr hwndParent, EnumWindowsProc lpEnumFunc, IntPtr lParam);

        public Form1()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {


            IntPtr hWnd = FindWindow(null, "错误");
            label1.Text = hWnd.ToString();

            if (hWnd.ToString() != "0")
            {
                //IntPtr childHwnd = FindWindowEx(hWnd, IntPtr.Zero, "Button", "重试(R)");


                IntPtr lpString = Marshal.AllocHGlobal(200);
                GetWindowText(hWnd.ToInt32(), lpString, 200);//这里获得控件text
                var text = Marshal.PtrToStringAnsi(lpString);
                try
                {
                    label1.Text = label1.Text + text;
                }
                catch { }
               // return true;
            }




            //if (childHwnd != IntPtr.Zero)
            //{
            //    try
            //    {
            //        label1.Text = "找到子窗体";
            //        SendMessage(childHwnd, BM_CLICK, 0, 0);     //发送点击按钮的消息 
            //    }
            //    catch (Exception ex){ MessageBox.Show(ex.ToString()); }
            //}
            //else
            //{
            //   // MessageBox.Show("没有找到子窗口");
            //}   

        }

    }
    
}
