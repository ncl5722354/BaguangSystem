using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace saige_system.主页面
{
    public partial class IsJumpToProject : Form
    {

        public static string project_name = "";                                   //    项目的名称
        public IsJumpToProject()
        {
            InitializeComponent();

            label1.Text = "是否跳转到项目 " + project_name;
        }

        private void button_ok_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void button_cancle_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
