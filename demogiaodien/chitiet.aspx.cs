using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class chitiet : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int? so = null;
            int id = Convert.ToInt32(Request["ID"]);
            int idbantin = Convert.ToInt32(Request["idbantin"]);
            //lấy dữ liệu trong sql:
            dt.chitiet_lanxem(id, ref so);
            if (so == null)
            {
                so = 0;
            }
            int gt = Convert.ToInt32(so) + 1;
            // tăng số lượt xem
            dt.ChiTiet_solanxem(gt, id);
            rpBanTin.DataSource = dt.bantin_selectid(id);
            rpBanTin.DataBind();
            rpChiTiet.DataSource = dt.ChiTiet_SelectID(idbantin,id);
            rpChiTiet.DataBind();
            rpRandom.DataSource = dt.chitiet_selectrandom();
            rpRandom.DataBind();

        }
    } 
}