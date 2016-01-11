using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_r_Click(object sender, EventArgs e)
        {

            if (name_r.Text.Length == 0)
            {
                Label1.Text = "* This field cannot be empty";
            }
            else
            {
                if (name_r.Text.Length != 0)
                {
                    Label1.Visible = false;
                }
            }
          
            if (email_r.Text.Length == 0)
            {
                Label2.Text = "* This field cannot be empty";
            }
            else
            {
                if (email_r.Text.Length != 0)
                {
                    Label2.Visible = false;
                }
            }
            if (filename_r.Text.Length == 0)
            {
                Label3.Text = "* This field cannot be empty";
            }
            else
            {
                if (filename_r.Text.Length != 0)
                {
                    Label3.Visible = false;
                }
            }

            if(name_r.Text.Length!=0 && filename_r.Text.Length!=0 && email_r.Text.Length!=0)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                string name, email, other, filename;
                name = name_r.Text;
                email = email_r.Text;
                filename = filename_r.Text;
                other = other_r.Text;

                var con = new DBCon();
                string sql = string.Format("INSERT INTO request ([Sender] , [Email] , [Other] , [FileName]) VALUES ('{0}', '{1}', '{2}' , '{3}')", name, email, other, filename);

                con.Execute(sql);
                con.Close();
                lbl_msg.Text = "Request Delivered.";
            }
        }

        protected void name_r_TextChanged(object sender, EventArgs e)
        {
            
        }

    }
}