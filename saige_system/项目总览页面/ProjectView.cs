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
using ViewConfig;

namespace saige_system.项目总览页面
{
    public partial class ProjectView : Form
    {
        public ProjectView()
        {
            InitializeComponent();
            init_view();
        }

        private void init_view()
        {
            // 界面最大化
            ViewCaoZuo.Max_Form(this);

            // 初始化界面位置
            ViewCaoZuo.Object_Position(0.02, 0.2, 0.96, 0.74, panel_main, this.Controls);

        }

        private void ProjectView_Resize(object sender, EventArgs e)
        {
            init_view();
        }
    }
}
