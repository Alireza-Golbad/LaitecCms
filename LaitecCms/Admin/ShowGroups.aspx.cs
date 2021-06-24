using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using DataLayer.Services;

namespace LaitecCms.Admin
{
    public partial class ShowGroups : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GroupService gs = new GroupService();
            listGroup.DataSource = gs.getAll();
            listGroup.DataBind();
        }
    }
}