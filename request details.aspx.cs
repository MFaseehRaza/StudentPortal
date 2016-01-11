using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace WebApplication1
{
    public partial class request_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/redirect.aspx");
            }
            else
            {
                int ID = Convert.ToInt32(Request.QueryString["id"].ToString());
                var db = new DBCon();
                string sql = string.Format("SELECT * FROM request WHERE ID = {0}", ID.ToString());
                var reader = db.Execute(sql);
                while (reader.Read())
                {
                    name_rd.Text = reader["Sender"].ToString();
                    email_rd.Text = reader["Email"].ToString();
                    filename_rd.Text = reader["FileName"].ToString();
                    other_rd.Text = reader["Other"].ToString();
                }
                db.Close();
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.QueryString["id"].ToString());
            string sql = string.Format("DELETE * FROM request Where ID = {0}" , ID.ToString());
            var con = new DBCon();
            var reader = con.Execute(sql);
            con.Close();
            lbl_msg.Text = "Done!";
            Thread.Sleep(2000);
            Response.Redirect("~/view requests.aspx");
        }
    }
}