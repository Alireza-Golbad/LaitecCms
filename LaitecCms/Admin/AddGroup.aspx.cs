using DataLayer;
using DataLayer.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaitecCms.Admin
{
    public partial class AddGroup : System.Web.UI.Page
    {
        //public object GroupTitle { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            GroupService gs = new GroupService();
            PageGroup p = new PageGroup();
            p.GroupTitle = GroupTitle.Text.Trim();
            if (gs.addGroup(p))
            {
               Response.Redirect("/Admin/ShowGroups.aspx"); 
            }
            else
            {
                lblshow.Text = "ذخیره گروه خبری با مشکل روبرو شد";
            }
            
        }
    }
}