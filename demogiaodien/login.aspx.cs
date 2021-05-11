using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demogiaodien
{
    public partial class login : System.Web.UI.Page
    {
        
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack==false)
            {
                HttpCookie cookies = Request.Cookies["Login"];
                if (cookies != null)
                {
                    CheckBox1.Checked = true;
                    txtUserName.Text = cookies["UserName"].ToString();
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            HttpCookie cookieName = new HttpCookie("Login");
            var dl = dt.dangnhap_search(txtUserName.Text, txtPassWord.Text);
            int kt = dl.Count(); /*lấy toàn bộ dữ liệu đếm xem bn bản ghi */
            if (txtUserName.Text == "" || txtPassWord.Text=="")
            {
                lblthongbao.Text = "Đăng nhập không thành công. Đề nghị nhập lại tài khoản/mật khẩu !";
                txtUserName.Text = ""; /* xóa tất cả dl trên tên tk thanhf rỗng*/
                txtPassWord.Text = ""; /* cho password thành rỗng */
                txtUserName.Focus(); /*đưa chuột về ô username */
            }
            else { 
                if (kt > 0)
                {
                    if (CheckBox1.Checked == true)
                    {
                        cookieName["UserName"] = txtUserName.Text;
                        cookieName.Expires = DateTime.Now.AddDays(5);
                        Response.Cookies.Add(cookieName);
                    }
                    else {
                        cookieName["UserName"] = "";
                        Response.Cookies.Add(cookieName);
                    }
                    Application["user"] = txtUserName.Text;
                    Session["admin"] = true;
                    Response.Redirect("index.aspx");  /*nếu đăng nhập thành công đưa về trang index*/
                    
                }
                else
                {
                    lblthongbao.Text = "Đăng nhập thất bại";
                    txtUserName.Text = ""; /* xóa tất cả dl trên tên tk thanhf rỗng*/
                    txtPassWord.Text = ""; /* cho password thành rỗng */
                    txtUserName.Focus(); /*đưa chuột về ô username */
                }
            
            }
        }
    }
}