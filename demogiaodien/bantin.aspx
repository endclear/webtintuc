<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="bantin.aspx.cs" Inherits="demogiaodien.bantin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr style="background:#ff0000;height:3px;margin:10px 50% 0 2px" />
        <asp:Repeater ID="rpIDBanTin" runat="server">
                <ItemTemplate>
                    <h1><%# Eval("noiDung") %></h1>
                </ItemTemplate>
         </asp:Repeater>
                <div id="noidung">
                    <div class="baiviet-bantin" style="width:100%;height:100%;margin-bottom:40px">
                            
                            <asp:Repeater ID="rpChiTiet" runat="server">
                                <ItemTemplate> 
                                    <img class="img-tin" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa" />
                                    <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                </ItemTemplate>
                            </asp:Repeater>
                     </div>
                    
                </div>
</asp:Content>
