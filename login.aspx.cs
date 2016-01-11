using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["username"] != null || Session["password"] != null))
            {
                Response.Redirect("~/back office.aspx");
            }
            if (IsPostBack)
            {
                var con = new DBCon();
                string username = txt_user.Text;
                string password = txt_pass.Text;
                string sql = string.Format("SELECT * FROM admin WHERE Username = \"{0}\" AND Password = \"{1}\"", username, password);
                var reader = con.Execute(sql);
                if (reader.HasRows) //if username and password match
                {
                    Session["username"] = username;
                    Session["password"] = password;
                    Response.Redirect("~/back office.aspx");
                }
                else
                {
                    //fail, show error
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("<ul style=\"color:red\">");
                    sb.AppendLine("<li>Invalid Username or Password</li>");
                    sb.AppendLine("</ul>");
                    lbl_error.Text = sb.ToString();
                }
                con.Close();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        
    }
}