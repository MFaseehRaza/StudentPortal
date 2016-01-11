using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_submit_fb_Click(object sender, EventArgs e)
        {
            if (name_fb.Text.Length == 0)
            {
                Label1.Text = "* This field cannot be empty";
            }
            else
            {
                if (name_fb.Text.Length != 0)
                {
                    Label1.Visible = false;
                }
            }

            if (email_fb.Text.Length == 0)
            {
                Label2.Text = "* This field cannot be empty";
            }
            else
            {
                if (email_fb.Text.Length != 0)
                {
                    Label2.Visible = false;
                }
            }
            if (name_fb.Text.Length != 0 && email_fb.Text.Length != 0)
            {
                string name, email, other;
                name = name_fb.Text;
                email = email_fb.Text;
                other = other_fb.Text;

                var con = new DBCon();
                string sql = string.Format("INSERT INTO feedback ([Sender] , [Email] , [Other]) VALUES ('{0}', '{1}', '{2}')", name, email, other);

                con.Execute(sql);
                con.Close();
                lbl_msg.Text = "Feedback Delivered.";
            }
        }
    }
}