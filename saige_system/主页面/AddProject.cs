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
    public partial class AddProject : Form
    {

        public static string Project_Name = "";                                  // 项目名称

        public AddProject()
        {
            InitializeComponent();
        }

        private void button_ok_Click(object sender, EventArgs e)
        {
            if(textBox1.Text.Trim()=="")
            {
                MessageBox.Show("项目名称");
                return;
            }
            Project_Name = textBox1.Text;                                        // 返回项目名称
            this.DialogResult = DialogResult.OK;                                 // 确认返回
        }

        private void button_cancal_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;                             // 取消返回
        }
    }
}
