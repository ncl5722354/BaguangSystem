using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ViewConfig;

namespace YinRanSmart
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            init_view();                    // 界面的初始化
        }

        // 界面的初始化
        public void init_view()
        {
            ViewCaoZuo.Max_Form(this);
        }
    }
}
