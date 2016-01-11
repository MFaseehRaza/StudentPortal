using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace WebApplication1
{
    public partial class drop_files : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btn_upload.Attributes.Add("onclick", "document.getElementById('" + FileUpload1.ClientID + "').click();"); //used to implement upload mechanism via button control. source internet. sorry I forgot to save the link.
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile) //method to upload files. from Sir kudvenkat's tutorials
            {
                string filename = FileUpload1.PostedFile.FileName;
                var path = new Upload(filename);
                string loc = path.FilePath().ToString();
                string fileext = Path.GetExtension(FileUpload1.FileName);

                if (fileext.ToLower() != ".pdf" && fileext.ToLower() != ".ppt" && fileext.ToLower() != ".pptx" && fileext.ToLower() != ".doc" && fileext.ToLower() != ".docx") //check for file formats
                {
                    lbl_upload.Text = "Only .pdf , .ppt , .pptx , .doc , .docx documents are allowed";
                    lbl_upload.ForeColor = System.Drawing.Color.Red;
                }
                else //check for file size
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;
                    if (filesize > 25165824)
                    {
                        lbl_upload.Text = "Files greater than 12 MB are not allowed < /br> You can email us the source if you wish :)";
                        lbl_upload.ForeColor = System.Drawing.Color.Red;
                    }
                    else //if everything is cool, upload the file
                    {
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/default/") + FileUpload1.FileName);
                        lbl_upload.Text = "File Uploaded";
                        lbl_upload.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
           
        }

         
    }

}