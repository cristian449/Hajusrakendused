using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;

namespace TARpe23_XML_Donnet
{
    public partial class Parameeter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                XsltArgumentList p = new XsltArgumentList();
                p.AddParam("otsing", "", kast1.Text);

                int abi;
                if (int.TryParse(kast2.Text, out abi))
                {
                    p.AddParam("pikkus", "", kast2.Text);
                }
                p.AddParam("aasta", "", DateTime.Now.Year.ToString());

                // Sünniaastate parameetrid
                int algus, lopp;
                if (int.TryParse(kast3.Text, out algus))
                {
                    p.AddParam("algusAasta", "", algus);
                }
                if (int.TryParse(kast4.Text, out lopp))
                {
                    p.AddParam("loppAasta", "", lopp);
                }

                xml1.TransformArgumentList = p;
            }


        }
    }
}