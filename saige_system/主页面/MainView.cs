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
using FileOperation;
using System.Collections;

// 


namespace saige_system.主页面
{
    public partial class MainView : Form
    {
        public MainView()
        {
            InitializeComponent();
            init_view();                     // 界面初始化
        }

        项目总览页面.ProjectView projectview = new 项目总览页面.ProjectView();
        /***** 功能函数*****/

        // 界面的初始化
        private void init_view()
        {
            ViewCaoZuo.Max_Form(this);            // 界面放到最大

            // 树形图
            ViewCaoZuo.Object_Position(0.01, 0.01, 0.15, 0.92, treeView_main, this.Controls);

            // 分画面显示
            ViewCaoZuo.Object_Position(0.17, 0.01, 0.82, 0.92, panel_main, this.Controls);



            // 功能初始化
            Reflush_Project_Item();
        }

        // 关闭系统
        private void Shut_Down_System()
        {
            System.Environment.Exit(0);          // 关闭系统所有的东西
        }


        // 主窗体关闭的时候，关闭系统
        private void MainView_FormClosed(object sender, FormClosedEventArgs e)
        {
            Shut_Down_System();    //   关闭系统
        }

        private void MainView_Load(object sender, EventArgs e)
        {

        }

        private void treeView_main_MouseClick(object sender, MouseEventArgs e)
        {
              // 
        }

        private void 添加项目ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // 项目上添加项目
            主页面.AddProject addproject = new AddProject();

            DialogResult result = addproject.ShowDialog();               // 添加项目返回结果
            if (result == DialogResult.OK)
            {
                // 在project文件夹中建立文件夹
                FileCaozuo.Create_Dir(Application.StartupPath + "//project//" + 主页面.AddProject.Project_Name);
                Reflush_Project_Item();
            }
        }

        // 刷新项目
        private void Reflush_Project_Item()
        {
            // 刷新项目的选项
            TreeNode[] treenodes = treeView_main.Nodes.Find("project", false);

            try
            {
                // 点集合数大于1
                if (treenodes.Length >= 1)
                {
                    TreeNode node = treenodes[0];
                    node.Nodes.Clear();                                // 清除项目下面所有的点

                    // 读取project文件夹下所有的文件夹

                    ArrayList all_project_items =  FileCaozuo.Read_All_Dir(Application.StartupPath + "//project//");
                    foreach(System.IO.DirectoryInfo dirname in all_project_items)
                    {
                        node.Nodes.Add(dirname.Name); 
                    }

                }
            }
            catch { }
        }

        private void treeView_main_DoubleClick(object sender, EventArgs e)
        {
            // 双击某个项目，然后显示出这个项目的东西
            try
            {
                TreeNode treenode = treeView_main.SelectedNode;    // 被选择的点

                // 判断此结点是不是一个project 项目下的结点
                if (treenode.Parent.Name == "project")
                {
                    IsJumpToProject.project_name = treenode.Text;

                    IsJumpToProject view = new IsJumpToProject();
                    DialogResult result = view.ShowDialog();

                    if (result == DialogResult.OK)
                    {
                        // 界面进入到project中
                        ViewCaoZuo.Show_Form_In_Panel(projectview,panel_main);
                    }
                }
            }
            catch { }

        }
    }
}
