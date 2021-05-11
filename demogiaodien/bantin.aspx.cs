using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class bantin : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpIDBanTin.DataSource = dt.bantin_selectid(Convert.ToInt32(Request["idbantin"]));
            rpIDBanTin.DataBind();
            rpChiTiet.DataSource = dt.chitiet_selectbantin(Convert.ToInt32(Request["idbantin"]));
            rpChiTiet.DataBind();
        }
    }
}