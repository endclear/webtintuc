<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demogiaodien.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1>Đăng nhập hệ thống quản trị Website</h1>
                <div id="noidung">
                    <h4>Tên đăng nhập:</h4>
                    <asp:TextBox ID="txtUserName" Width="300" Height="20" runat="server"></asp:TextBox>
                    <h4>Mật khẩu:</h4>
                    <asp:TextBox ID="txtPassWord" Width="300" Height="20" TextMode="Password" runat="server"></asp:TextBox>
                    <br /><br />
                    <h4>
                        <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
                    </h4>
                    <asp:CheckBox ID="CheckBox1" runat="server" /><b>Nhớ Tài Khoản</b>
                    <br /><br />
                    <asp:Button ID="btnlogin" runat="server" Text="Đăng Nhập" Height="30px" OnClick="btnlogin_Click" Width="143px" />
                    <br /><br />
                    <a style="font-weight:bold;text-decoration:none;font-size:16px;color:#000" href="dangky.aspx">Chưa có tài khoản?</a>
                    
                </div>
</asp:Content>

