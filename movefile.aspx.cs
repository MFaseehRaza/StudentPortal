using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;

namespace WebApplication1
{
    public partial class movefile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/redirect.aspx");
            }
            else
            {
                string filename = Request.QueryString["filename"].ToString();
                string folder = Request.QueryString["char"].ToString();
                string nameonly = filename.Split('\\').ToList().Last(); 
                string dest = Server.MapPath(string.Format("~/Uploads/{0}/{1}", folder, nameonly));
                if (!File.Exists(dest))
                {
                    File.Move(filename, dest);
                    Response.Redirect("database.aspx");
                }
                else
                {
                    Response.Write("File already exists!");
                }
            }
        }
    }
}