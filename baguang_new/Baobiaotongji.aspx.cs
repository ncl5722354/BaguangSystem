using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baguang_new
{
    public partial class Baobiaotongji : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_Time.Text = "当前时间:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }
    }
}