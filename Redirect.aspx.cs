using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;
using System.Threading;
namespace WebApplication1
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {        
            
        }
        private void redirect()
        {
            Thread.Sleep(3000);
            Response.Redirect("~/welcome.aspx");
        }

        
    }
}