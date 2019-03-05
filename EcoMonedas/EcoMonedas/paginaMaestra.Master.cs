using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class paginaMaestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void navbarColor01_MenuItemDataBound(object sender, MenuEventArgs e)
        {
            SiteMapNode smn = (SiteMapNode)e.Item.DataItem;
            e.Item.ImageUrl = smn["image"];
        }
    }
}