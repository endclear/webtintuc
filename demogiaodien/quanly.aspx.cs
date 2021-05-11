 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class quanly : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Boolean)Session["admin"] == false)
            {
                Response.Redirect("login.aspx");
            }
        }
        //int hangchon = 0;
        protected void GirdView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = int.Parse(e.CommandArgument.ToString());
            if (e.CommandName == "Select")
            {
                Response.Redirect("Suabaiviet.aspx?ID=" + GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text);
                //txtTieuDe.Text = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[2].Text;
                //txtNoiDung.Text = 
            }
            else if (e.CommandName == "del")
            {
                //chưa viết
                //hangchon = int.Parse(e.CommandArgument.ToString());
                dt.delete_ID(int.Parse(GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text));
                Response.Redirect("quanly.aspx");
                //GridView1.DeleteRow(hangchon);
            }
        }
    }
}