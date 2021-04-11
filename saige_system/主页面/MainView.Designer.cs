namespace saige_system.主页面
{
    partial class MainView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.TreeNode treeNode1 = new System.Windows.Forms.TreeNode("项目");
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainView));
            this.treeView_main = new System.Windows.Forms.TreeView();
            this.contextMenuStrip_addproject = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.添加项目ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel_main = new System.Windows.Forms.Panel();
            this.contextMenuStrip_addproject.SuspendLayout();
            this.SuspendLayout();
            // 
            // treeView_main
            // 
            this.treeView_main.Location = new System.Drawing.Point(21, 12);
            this.treeView_main.Name = "treeView_main";
            treeNode1.ContextMenuStrip = this.contextMenuStrip_addproject;
            treeNode1.Name = "project";
            treeNode1.Text = "项目";
            this.treeView_main.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
            treeNode1});
            this.treeView_main.Size = new System.Drawing.Size(158, 672);
            this.treeView_main.TabIndex = 0;
            this.treeView_main.DoubleClick += new System.EventHandler(this.treeView_main_DoubleClick);
            this.treeView_main.MouseClick += new System.Windows.Forms.MouseEventHandler(this.treeView_main_MouseClick);
            // 
            // contextMenuStrip_addproject
            // 
            this.contextMenuStrip_addproject.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.添加项目ToolStripMenuItem});
            this.contextMenuStrip_addproject.Name = "contextMenuStrip_addproject";
            this.contextMenuStrip_addproject.Size = new System.Drawing.Size(125, 26);
            // 
            // 添加项目ToolStripMenuItem
            // 
            this.添加项目ToolStripMenuItem.Name = "添加项目ToolStripMenuItem";
            this.添加项目ToolStripMenuItem.Size = new System.Drawing.Size(124, 22);
            this.添加项目ToolStripMenuItem.Text = "添加项目";
            this.添加项目ToolStripMenuItem.Click += new System.EventHandler(this.添加项目ToolStripMenuItem_Click);
            // 
            // panel_main
            // 
            this.panel_main.BackColor = System.Drawing.SystemColors.ControlDark;
            this.panel_main.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel_main.Location = new System.Drawing.Point(202, 12);
            this.panel_main.Name = "panel_main";
            this.panel_main.Size = new System.Drawing.Size(1041, 637);
            this.panel_main.TabIndex = 2;
            // 
            // MainView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1283, 696);
            this.Controls.Add(this.panel_main);
            this.Controls.Add(this.treeView_main);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainView";
            this.Text = "赛格光纤智能组态系统";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.MainView_FormClosed);
            this.Load += new System.EventHandler(this.MainView_Load);
            this.contextMenuStrip_addproject.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TreeView treeView_main;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip_addproject;
        private System.Windows.Forms.ToolStripMenuItem 添加项目ToolStripMenuItem;
        private System.Windows.Forms.Panel panel_main;

    }
}