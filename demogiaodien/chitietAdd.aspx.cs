using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
   
    public partial class chitietAdd : System.Web.UI.Page
    {
         DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drBanTin.DataTextField = "noiDung";
                drBanTin.DataValueField = "IDBanTin";
                drBanTin.DataSource = dt.bantin_selectall();
                drBanTin.DataBind(); 
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            dt.ChiTiet_Insert(txtTieuDe.Text, txtNoiDung.Text, 
                DateTime.Now, Convert.ToInt32(drBanTin.SelectedValue),TxtPath.Text);
            Response.Redirect("index.aspx");
        }

        protected void BtnAnh_Click(object sender, EventArgs e)
        {
            HttpPostedFile file = FileUpload1.PostedFile;
            if(FileUpload1.HasFile==false || file.ContentLength == 1024000)
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
    }
}