<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
         </div>
         <div id="content">
            <div class="line">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="hoadon_id" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia" />
                        <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                        <asp:BoundField DataField="Sanpham_id" HeaderText="Sanpham_id" SortExpression="Sanpham_id" />
                        <asp:BoundField DataField="hoadon_id" HeaderText="hoadon_id" ReadOnly="True" SortExpression="hoadon_id" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [hoadonct] WHERE [hoadon_id] = @hoadon_id" InsertCommand="INSERT INTO [hoadonct] ([gia], [soluong], [Sanpham_id], [hoadon_id]) VALUES (@gia, @soluong, @Sanpham_id, @hoadon_id)" SelectCommand="SELECT [gia], [soluong], [Sanpham_id], [hoadon_id] FROM [hoadonct]" UpdateCommand="UPDATE [hoadonct] SET [gia] = @gia, [soluong] = @soluong, [Sanpham_id] = @Sanpham_id WHERE [hoadon_id] = @hoadon_id">
                    <DeleteParameters>
                        <asp:Parameter Name="hoadon_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="gia" Type="Int32" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="Sanpham_id" Type="String" />
                        <asp:Parameter Name="hoadon_id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="gia" Type="Int32" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="Sanpham_id" Type="String" />
                        <asp:Parameter Name="hoadon_id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
         </div>
      </section>
</form>
</asp:Content>

