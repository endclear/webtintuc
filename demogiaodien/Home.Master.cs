using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class Home : System.Web.UI.MasterPage
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((Boolean)Session["admin"] == true)
                {
                    string username = "HI, " + Application["user"].ToString().ToUpper();
                    Label1.Text = username;
                }
                rpBanTin.DataSource = dt.bantin_selectall();
                rpBanTin.DataBind();

                rpRandom.DataSource = dt.chitiet_selectrandom();
                rpRandom.DataBind();
            }
        }
    }
}