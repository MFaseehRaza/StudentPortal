using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebApplication1
{
    public partial class feedback_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/redirect.aspx");
            }
            else
            {
                var db = new DBCon();
                string sql = "SELECT * FROM feedback";
                var reader = db.Execute(sql);
                var sb = new StringBuilder();
                while (reader.Read())
                {
                    sb.AppendLine("<tr>");
                    sb.AppendLine(string.Format("<td>{0}</td>", reader["ID"]));
                    sb.AppendLine(string.Format("<td><a href=\"view feedback details.aspx?id={1}\">{0}</a></td>", reader["Sender"], reader["ID"], reader["Email"]));
                    sb.AppendLine(string.Format("<td>{0}</td>", reader["Email"]));
                    sb.AppendLine("</tr>");
                }
                lbl_data.Text = sb.ToString();
                db.Close();
            }
        }
    }
}