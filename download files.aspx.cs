
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace WebApplication1
{
    public partial class download_files : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            char[] abc = new char[] { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
            string path = null;
            string val = DropDownList1.SelectedItem.Text;
            foreach (char ch in abc)
            {
                if (val == ch.ToString().ToUpper())
                {
                    path = string.Format("~/Uploads/{0}", ch.ToString().ToUpper());
                    Session["Selected_Char"] = ch.ToString().ToUpper();
                    
                }
            }
            if (path != null)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("File", typeof(string));
                dt.Columns.Add("Size", typeof(string));
                dt.Columns.Add("Type", typeof(string));

                foreach (string strFile in Directory.GetFiles(Server.MapPath(path)))
                {
                    FileInfo fi = new FileInfo(strFile);
                    dt.Rows.Add(fi.Name, fi.Length / 1024, GetFileType(fi.Extension));
                }
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
            
        }
        private string GetFileType(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";
                case ".pdf":
                    return "Picture Document File";
                case ".ppt":
                case ".pptx":
                    return "Microsoft PowerPoint Document";

                default:
                    return "Unknown";
            }
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string value = Session["Selected_Char"].ToString();
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath(string.Format("~/Uploads/{0}/" , value)) + e.CommandArgument);
                Response.End();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}