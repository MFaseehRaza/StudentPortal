using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Text;

namespace WebApplication1
{
    public partial class dictionary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            char selected = 'A';
            Session["char"] = selected;
            Dictionary<char, List<string>> files = new Dictionary<char, List<string>>(); //dictionary
            char[] abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            foreach (char ch in abc)
            {
                files.Add(ch, getFileNames(ch));// adding items to dictionary
            }
            var sb = new StringBuilder();
            foreach (string filename in files[selected])//files[key] returns list of string 
            {
                sb.AppendLine("<tr>");
                sb.Append(string.Format("<td><a href=\"{0}\">{0}</a></td>",filename));
                sb.AppendLine(string.Format("<td><a href=\"deletefile.aspx?filename={0}\">Delete</a></td>",filename));
                sb.AppendLine("</tr>");
            }
            lbl_files.Text = sb.ToString();
        }
        private List<string> getFileNames(char ch)//populates the list of files in a directory
        {
            string[] files = Directory.GetFiles(string.Format(Server.MapPath("~/Uploads/{0}/"), ch.ToString().ToUpper()));
            return files.ToList();
        }
       
    }
}