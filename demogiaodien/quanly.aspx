<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="quanly.aspx.cs" Inherits="demogiaodien.quanly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="noidung">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Demo" OnRowCommand=" GirdView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="STT" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="IDBanTin" HeaderText="IDBanTin" ReadOnly="True" SortExpression="IDBanTin" />
                    <asp:BoundField DataField="tieuDe" HeaderText="tieuDe" ReadOnly="True" SortExpression="tieuDe" />
                    <asp:BoundField DataField="hinhAnh" HeaderText="hinhAnh" ReadOnly="True" SortExpression="hinhAnh" />
                    <asp:ButtonField CommandName="Select" Text="Sửa" />
                    <asp:ButtonField CommandName="del" Text="Xóa" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="Demo" runat="server" ContextTypeName="demogiaodien.DemoDataContext" 
                EntityTypeName="" Select="new (ID, IDBanTin, tieuDe, noiDung, hinhAnh)" TableName="ChiTiets">
            </asp:LinqDataSource>

        </div>
</asp:Content>