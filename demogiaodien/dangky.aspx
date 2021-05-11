<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="demogiaodien.dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Đăng ký thành viên cho Website</h1>
                <div id="noidung">
                    <h4>Tên đăng nhập:</h4>
                    <asp:TextBox ID="txtUserName" Width="300" Height="20" runat="server"></asp:TextBox>
                    <h4>Mật khẩu:</h4>
                    <asp:TextBox ID="txtPassWord" Width="300" Height="20" TextMode="Password" runat="server"></asp:TextBox>
                    <br /> <br />
                    <asp:Button ID="btnDK" runat="server" Text="Đăng Ký" Height="30px"  Width="143px" OnClick="btnRegister" />
                    <h4>
                        <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
                    </h4>
                </div>
</asp:Content>
