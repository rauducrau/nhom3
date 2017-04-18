<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
         </div>
         <div id="content">
            <div class="line">
               <div class="margin">
                   <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                       <Fields>
                           <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                           <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                           <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
                           <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt" />
                           <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                           <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" />
                           <asp:BoundField DataField="cmt" HeaderText="cmt" SortExpression="cmt" />
                           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                       </Fields>
                   </asp:DetailsView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [Khachhang] WHERE [id] = @id" InsertCommand="INSERT INTO [Khachhang] ([id], [ten], [diachi], [sdt], [email], [ngaysinh], [cmt]) VALUES (@id, @ten, @diachi, @sdt, @email, @ngaysinh, @cmt)" SelectCommand="SELECT [id], [ten], [diachi], [sdt], [email], [ngaysinh], [cmt] FROM [Khachhang]" UpdateCommand="UPDATE [Khachhang] SET [ten] = @ten, [diachi] = @diachi, [sdt] = @sdt, [email] = @email, [ngaysinh] = @ngaysinh, [cmt] = @cmt WHERE [id] = @id">
                       <DeleteParameters>
                           <asp:Parameter Name="id" Type="String" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="id" Type="String" />
                           <asp:Parameter Name="ten" Type="String" />
                           <asp:Parameter Name="diachi" Type="String" />
                           <asp:Parameter Name="sdt" Type="Int32" />
                           <asp:Parameter Name="email" Type="String" />
                           <asp:Parameter Name="ngaysinh" Type="DateTime" />
                           <asp:Parameter Name="cmt" Type="Int32" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="ten" Type="String" />
                           <asp:Parameter Name="diachi" Type="String" />
                           <asp:Parameter Name="sdt" Type="Int32" />
                           <asp:Parameter Name="email" Type="String" />
                           <asp:Parameter Name="ngaysinh" Type="DateTime" />
                           <asp:Parameter Name="cmt" Type="Int32" />
                           <asp:Parameter Name="id" Type="String" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
               </div>
            </div>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
               </div>
            </div>
         </div>
      </section>
</form>
</asp:Content>

