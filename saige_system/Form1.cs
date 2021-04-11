using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace saige_system
{
    public partial class Begin_View : Form
    {
        public Begin_View()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            // 启动主页面
            主页面.MainView view = new 主页面.MainView();           // 初始化主页面
            view.Show();                                            // 显示主页面信息
            timer1.Enabled = false;                                 // 时钟停止
            this.Hide();                                            // 隐藏页面

        }
    }
}
