<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="demogiaodien.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                <div id="noidung">
                        
                        <div id="tinmoi" style="float:left;width:100%;margin:5px 0 5px 0">
                             <hr style="background:#ff0000;height:3px;margin:10px 2px 0 2px" />
                             <h1>Tin mới nhất</h1>
                            <div class="baiviet-trai">
                                <asp:DataList ID="dataChitiet" runat="server">
                                    <ItemTemplate>
                                        <img class="img-trai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa"/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <div class="baiviet-phai">
                                <asp:Repeater ID="rpChiTiet" runat="server">
                                    <ItemTemplate>
                                        <img class="img-phai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa" <%-- style="width:100%;height:100%"--%>/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                        
                        <div id="lol" style="float:left;width:100%;margin-right:5px 0 5px 0">
                            <hr style="background:#ff0000;height:3px;margin:10px 2px 0 2px" />
                            <a href="bantin.aspx?idbantin=1"><h1>League Of Legend</h1></a>
                            <div class="baiviet-trai">
                                <asp:DataList ID="datachitiet2" runat="server">
                                    <ItemTemplate>
                                        <img class="img-trai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa"/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <div class="baiviet-phai">
                                <asp:Repeater ID="rpchitiet2" runat="server">
                                    <ItemTemplate>
                                        <img class="img-phai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa" <%-- style="width:100%;height:100%"--%>/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                        <div id="fo4" style="float:left;width:100%;margin-right:5px 0 5px 0">
                            <hr style="background:#ff0000;height:3px;margin:10px 2px 0 2px" />
                            <a href="bantin.aspx?idbantin=5"><h1>Fifa Online 4</h1></a>
                            <div class="baiviet-trai">
                                <asp:DataList ID="datachitiet3" runat="server">
                                    <ItemTemplate>
                                        <img class="img-trai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa"/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <div class="baiviet-phai">
                                <asp:Repeater ID="rpchitiet3" runat="server">
                                    <ItemTemplate>
                                        <img class="img-phai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa" <%-- style="width:100%;height:100%"--%>/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                        <div id="tft" style="float:left;width:100%;margin-right:5px 0 5px 0">
                            <hr style="background:#ff0000;height:3px;margin:10px 2px 0 2px" />
                            <a href="bantin.aspx?idbantin=5"><h1>TeamFight Tactic</h1></a>
                            <div class="baiviet-trai">
                                <asp:DataList ID="datachitiet4" runat="server">
                                    <ItemTemplate>
                                        <img class="img-trai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa"/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <div class="baiviet-phai">
                                <asp:Repeater ID="rpchitiet4" runat="server">
                                    <ItemTemplate>
                                        <img class="img-phai" src="<%# Eval ("hinhAnh") %>" alt="Hình ảnh minhh họa" <%-- style="width:100%;height:100%"--%>/>
                                        <a  href="chitiet.aspx?idbantin=<%# Eval("IDBanTin") %>&id=<%# Eval ("ID")%>"><%# Eval("tieuDe") %></a> 
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                </div>
</asp:Content>
