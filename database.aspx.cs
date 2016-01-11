using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Data;
using System.IO;
using System.Text;

namespace WebApplication1
{
    public partial class database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Username"] = "abdullah";
            if (Session["username"] == null)
            {
                Response.Redirect("~/redirect.aspx");
            }
            else
            {
                string folder = string.Format("~/Uploads/default/");

                FileInfo name = new FileInfo(folder);
                string file_name = name.Name;
                List<string> defaultFiles = Directory.GetFiles(Server.MapPath("~/Uploads/default/")).ToList();


                var sb = new StringBuilder();
                foreach (string filename in defaultFiles)//files[key] returns list of string 
                {
                    string nameOnly = filename.Split('\\').ToList().Last();
                    sb.AppendLine("<tr>");
                    sb.Append(string.Format("<td>{0}</td>", nameOnly));

                    sb.AppendLine(string.Format("<td><a href=\"deletefile.aspx?filename={0}\">Delete</a></td>", filename));
                    sb.AppendLine(string.Format("<td><a href = \"movefile.aspx?filename={0}&&char={1}\">Save</a></td>", filename, nameOnly.ToCharArray()[0]));
                    sb.AppendLine("</tr>");
                }
                lbl_files.Text = sb.ToString();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //char[] abc = new char[] { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
            //string folder = "/";
            string val = DropDownList1.SelectedItem.Text;
            Dictionary<char, List<string>> files = new Dictionary<char, List<string>>(); //dictionary
            char[] abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string folder = string.Format("~/Uploads/{0}", val.ToString().ToUpper());

            FileInfo name = new FileInfo(folder);
            string file_name = name.Name;

            foreach (char ch in abc)
            {
                files.Add(ch, getFileNames(ch, folder));// adding items to dictionary
            }


            var sb = new StringBuilder();
            foreach (string filename in files[val.ToCharArray()[0]])//files[key] returns list of string 
            {
                string nameOnly = filename.Split('\\').ToList().Last();
                sb.AppendLine("<tr>");
                //sb.Append(string.Format("<td><a href=\"{0}\">{0}</a></td>", filename));
                sb.Append(string.Format("<td>{0}</td>", nameOnly));

                sb.AppendLine(string.Format("<td><a href=\"deletefile.aspx?filename={0}\">Delete</a></td>", filename));
                sb.AppendLine(string.Format("<td></td>", filename, nameOnly.ToCharArray()[0]));
                sb.AppendLine("</tr>");
            }
            lbl_files.Text = sb.ToString();
        }
        private List<string> getFileNames(char ch, string folder)//populates the list of files in a directory
        {
            string[] files = Directory.GetFiles(string.Format(Server.MapPath("~/Uploads/{0}/"), ch.ToString().ToUpper()));
            return files.ToList();
        }
    }
}
