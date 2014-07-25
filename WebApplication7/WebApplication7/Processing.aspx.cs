using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Processing : System.Web.UI.Page
    {
        public static string Name {get; private set;}

        public static string Quantity { get; private set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            Name = Request.Params["name"];
            Quantity = Request.Params["quantity"];

            NameClient.Value = Name;
            QuantityClient.Value = Quantity;


        }
    }
}