<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="chitietAdd.aspx.cs" Inherits="demogiaodien.chitietAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Thêm bản tin mới cho website</h1>
                <div id="noidung">
                    <h4>
                        Chọn bản tin:
                    </h4>
                    <asp:DropDownList ID="drBanTin" runat="server" Height="30px" Width="100px"></asp:DropDownList>
                    <h4>Tiêu đề bản tin:</h4>
                    <asp:TextBox ID="txtTieuDe" runat="server" Width="615px"></asp:TextBox>
                    <h4>Ảnh minh họa</h4>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="253px" />
                    <asp:Button ID="BtnAnh" runat="server" Height="30px" OnClick="BtnAnh_Click" Text="Tải Lên" Width="85px" />
                    <br /><br />
                    <asp:TextBox ID="TxtPath" runat="server" Width="139px"></asp:TextBox>
                    <asp:Label ID="lbTBKQ" runat="server"></asp:Label>
                    <h4>Nội dung bản tin</h4>
                    <CKEditor:CKEditorControl ID="txtNoiDung" runat="server" Width="617px"></CKEditor:CKEditorControl>
                    <br /> <br />
                    <asp:Button ID="btnInsert" runat="server" Text="Cập Nhật" Height="39px" Width="151px" OnClick="btnInsert_Click" />
                </div>
</asp:Content>
