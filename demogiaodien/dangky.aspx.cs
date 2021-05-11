using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class dangky : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister(object sender, EventArgs e)
        {
            if (txtUserName.Text == "" || txtPassWord.Text == "")
            {
                lblthongbao.Text = "Đăng ký không thành công. Đề nghị nhập lại tài khoản/mật khẩu !";
                txtUserName.Text = ""; /* xóa tất cả dl trên tên tk thanhf rỗng*/
                txtPassWord.Text = ""; /* cho password thành rỗng */
                txtUserName.Focus(); /*đưa chuột về ô username */
            }
            else
            {
                dt.dangnhap_insert(txtUserName.Text, txtPassWord.Text);
                Response.Redirect("index.aspx");
            } 
        }
    }
}