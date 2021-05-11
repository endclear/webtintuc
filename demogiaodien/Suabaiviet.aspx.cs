using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class Suabaiviet : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Boolean)Session["admin"] == false)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                var t = (from j in dt.ChiTiets
                         where j.ID.ToString() == Request.QueryString["ID"].ToString()
                         select j).First();
                txtTieuDe.Text = t.tieuDe;
                txtNoiDung.Text = t.noiDung;
                TxtPath.Text = t.hinhAnh;
            }
            //  drBanTin.SelectedValue = t.BanTin.ToString();
        }

        protected void BtnAnh_Click(object sender, EventArgs e)
        {
            HttpPostedFile file = FileUpload1.PostedFile;
            if (FileUpload1.HasFile == false || file.ContentLength == 1024000)
            {
                lbTBKQ.Text = "Vui lòng chọn file nhỏ hơn 1mb";
            }
            else//file thỏa mãn
            {
                try
                {
                    string strPath = Server.MapPath("~/image/" + FileUpload1.FileName);
                    FileUpload1.SaveAs(strPath);
                    TxtPath.Text = "/image/" + FileUpload1.FileName.ToString();
                    lbTBKQ.Text = "Upload thành công";
                }
                catch
                {
                    lbTBKQ.Text = "Upload thất bại";
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            dt.UpdateTin(txtTieuDe.Text, txtNoiDung.Text, TxtPath.Text, id);
            Response.Redirect("quanly.aspx");
        }
    }
}