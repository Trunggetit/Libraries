using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebApplication7
{
    public partial class _Default : System.Web.UI.Page
    {
        public string XmlList = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xml = new XmlDocument();

            xml.Load(@"c:\users\small\documents\visual studio 2012\Projects\WebApplication7\WebApplication7\XMLData\inventory.xml");

            XmlList = xml.InnerXml;




        }
    }
}