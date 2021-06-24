using DataLayer.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaitecCms.Admin
{
    public partial class EditGroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GroupService gs = new GroupService();
            try
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    ViewState["gid"] = id;
                    if (id != null && id > 0)
                    {
                        var result = gs.getGropuById(id);
                        if (result != null)
                        {
                            GroupTitle.Text = result.GroupTitle;
                        }
                        else { lblShow.Text = "رکورد مورد نظر یافت نشد"; }
                    }
                    else { lblShow.Text = "بروز خطا در سیستم"; }
                }
            }
            catch (Exception)
            {
                lblShow.Text = "بروز خطا در سیستم";

            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }
    }
}