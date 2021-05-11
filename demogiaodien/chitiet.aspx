<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="demogiaodien.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr style="background:#ff0000;height:3px;margin:10px 50% 0 2px" />
                
                    <asp:Repeater ID="rpBanTin" runat="server">
                        <ItemTemplate>
                            <h1><%# Eval("noiDung") %></h1>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div id="noidung">
                        <asp:Repeater ID="rpChiTiet" runat="server">
                            <ItemTemplate>
                                <h3 style="color:red"><%# Eval("tieuDe") %></h3>
                                <p style="text-align:right;">
                                    Cập nhật: <%# Eval("ngayDang") %><br />
                                    Số lần xem: <%# Eval("lanXem") %>
                                </p> 
                             <%# Eval("noiDung") %>
                            </ItemTemplate>
                        </asp:Repeater>
                        <hr style="background:#ff0000;height:3px;margin:10px 2px 0 2px" />
                        <h3 style="color:red">Xem thêm tin khác</h3>
                            <ul>
                                <asp:Repeater ID="rpRandom" runat="server">
                                    <ItemTemplate>
                                        <li>
                                        <a href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a>
                                        </li>
                                     </ItemTemplate>
                                     </asp:Repeater>
                        
                            </ul>
                            
                </div>
</asp:Content>
