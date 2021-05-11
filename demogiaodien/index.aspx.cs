using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class index : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //tin mới
            dataChitiet.DataSource = dt.chitiet_selecthome2();
            dataChitiet.DataBind();
            rpChiTiet.DataSource = dt.chitiet_selectHome();
            rpChiTiet.DataBind();

            //tin lol
            datachitiet2.DataSource = dt.Select_randomIDtin(1);
            datachitiet2.DataBind();
            rpchitiet2.DataSource = dt.chitiet_selectbantin(1);
            rpchitiet2.DataBind();

            //tin fo4
            datachitiet3.DataSource = dt.Select_randomIDtin(5);
            datachitiet3.DataBind();
            rpchitiet3.DataSource = dt.chitiet_selectbantin(5);
            rpchitiet3.DataBind();

            //tin tft
            datachitiet4.DataSource = dt.Select_randomIDtin(2);
            datachitiet4.DataBind();
            rpchitiet4.DataSource = dt.chitiet_selectbantin(2);
            rpchitiet4.DataBind();
        }
    }
}