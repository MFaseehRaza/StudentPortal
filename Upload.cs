using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace WebApplication1
{
    public class Upload
    {
        string fn = null; //file name
        public Upload(string name) 
        {
             fn = name;
        }

        public string FilePath()
        {
            return string.Format("~/Uploads/{0}/", fn.ToUpper().ToCharArray()[0].ToString());
        }
        
        /*public  string filepath()
        {
            if (fn.ToUpper().ToCharArray()[0].ToString() == "a")
            {
                path = "~/Uploads/A/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "b")
            {
                path = "~/Uploads/B/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "c")
            {
                path = "~/Uploads/C/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "d")
            {
                path = "~/Uploads/D/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "e")
            {
                path = "~/Uploads/E/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "f")
            {
                path = "~/Uploads/F/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "g")
            {
                path = "~/Uploads/G/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "h")
            {
                path = "~/Uploads/H/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "i")
            {
                path = "~/Uploads/I/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "j")
            {
                path = "~/Uploads/J/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "k")
            {
                path = "~/Uploads/K/";
                return path;
            }
                else if (fn.ToUpper().ToCharArray()[0].ToString() == "l")
            {
                path = "~/Uploads/L/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "m")
            {
                path = "~/Uploads/M/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "n")
            {
                path = "~/Uploads/N/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "o")
            {
                path = "~/Uploads/O/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "p")
            {
                path = "~/Uploads/P/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "q")
            {
                path = "~/Uploads/Q/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "r")
            {
                path = "~/Uploads/R/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString().Equals("s"))
            {
                path = "~/Uploads/S/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "t")
            {
                path = "~/Uploads/T/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "u")
            {
                path = "~/Uploads/U/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "v")
            {
                path = "~/Uploads/V/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "w")
            {
                path = "~/Uploads/W/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "x")
            {
                path = "~/Uploads/X/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "y")
            {
                path = "~/Uploads/Y/";
                return path;
            }
            else if (fn.ToUpper().ToCharArray()[0].ToString() == "z")
            {
                path = "~/Uploads/Z/";
                return path;
            }

            else
            {
                path = "~/Uploads/default/";
                return path;
            }
        }*/
    }
}