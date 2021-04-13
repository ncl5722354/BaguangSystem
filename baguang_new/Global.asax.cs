using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using String_Caozuo;
using SqlConnect;


namespace baguang_new
{
    public class Global : System.Web.HttpApplication
    {

        public static SQL_Connect_Builder builder = new SQL_Connect_Builder(".", "baguangdatabase", 0, 10000);
        protected void Application_Start(object sender, EventArgs e)
        {
            try
            {
                System.Timers.Timer myTimer = new System.Timers.Timer(1000);             // 每个一分钟判断一下

                myTimer.Elapsed += new System.Timers.ElapsedEventHandler(OnTimedEvent);  //执行需要操作的代码，OnTimedEvent是要执行的方法名称

                myTimer.Interval = 1000 * 60 * 3;

                myTimer.Enabled = true;

                CreateSqlValueType[] create_type = new CreateSqlValueType[3];

                create_type[0] = new CreateSqlValueType("nvarchar(50)", "podaoname", true, true);

                create_type[1] = new CreateSqlValueType("nvarchar(50)", "status");

                create_type[2] = new CreateSqlValueType("nvarchar(50)", "datetime");

                builder.Create_Table("baguangdata", create_type);
            }
            catch { }



        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        private static void OnTimedEvent(object source, System.Timers.ElapsedEventArgs e)
        {
            // 30秒反应一次


            //   xianlan1.min = 2164;
            //   xianlan1.max = 2317;

            //   xianlan2.min = 2558;
            //   xianlan2.max = 2764;

            //   xianlan3.min = 2934;
            //   xianlan3.max = 3074;

            //   xianlan4.min = 602;
            //   xianlan4.max = 636;

            //   xianlan5.min = 742;
            //   xianlan5.max = 774;

            //   xianlan6.min = 875;
            //   xianlan6.max = 907;

            //   xianlan7.min = 994;
            //   xianlan7.max = 1026;








            
        }
    }
}