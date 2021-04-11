using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using FileOperation;
using System.Web.Services;

namespace newwarningsystem
{
    public partial class userpassword : System.Web.UI.Page
    {
        public static IniFile username_password_ini = new IniFile("D:\\config\\userpassword.ini");

        // 结构体 用户名与密码
        struct username_password
        {
            public string username;  // 结构体中的用户名
            public string password;  // 结构体中的密码
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static ArrayList return_admin_userandpass()
        {
            ArrayList all_admin = new ArrayList();
            return all_admin;
        }


        // 添加管理员用户名密码
        
        [WebMethod]
        public static void Insert_Admin_UserName_PassWord(string username,string password)
        {
            username_password_ini.IniWriteValue(username, "password", password);
            username_password_ini.IniWriteValue(username,"usertype","admin");
        }

        [WebMethod]
        public static void Insert_User_UserName_PassWord(string username, string password)
        {
            username_password_ini.IniWriteValue(username, "password", password);
            username_password_ini.IniWriteValue(username, "usertype", "user");
        }

        [WebMethod]
        public static ArrayList Return_Admin_UserName_Password()
        {
            ArrayList list = new ArrayList();
            foreach(string key in username_password_ini.ReadSections())
            {
                string type = username_password_ini.IniReadValue(key, "usertype");
                if(type=="admin")
                {
                    username_password user_struct = new username_password();
                    user_struct.username = key;
                    user_struct.password = username_password_ini.IniReadValue(key, "password");
                    list.Add(user_struct);
                }
            }
            return list;
        }
        [WebMethod]
        public static ArrayList Return_User_UserName_Password()
        {
            ArrayList list = new ArrayList();
            foreach (string key in username_password_ini.ReadSections())
            {
                string type = username_password_ini.IniReadValue(key, "usertype");
                if (type == "user")
                {
                    username_password user_struct = new username_password();
                    user_struct.username = key;
                    user_struct.password = username_password_ini.IniReadValue(key, "password");
                    list.Add(user_struct);
                }
            }
            return list;
        }
    }
}