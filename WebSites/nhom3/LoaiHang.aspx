<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
         </div>
         <div id="content">
            <div class="line">
               <div class="margin">

                   

<<<<<<< HEAD
                   <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="791px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                       <EditRowStyle BackColor="#165999" Font-Bold="True" ForeColor="#CCFF99" />
=======
                   <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="791px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black">
>>>>>>> 0751a83c8af87b91ef1ca00db30bcfc8b892e227
                       <Fields>
                           <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                           <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                       </Fields>
                       <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                       <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#66FF33" />
                       <PagerStyle BackColor="#99CCCC" ForeColor="#0000CC" HorizontalAlign="Left" />
                       <RowStyle BackColor="White" ForeColor="#003399" />
                   </asp:DetailsView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\banhang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [loaihang] WHERE [id] = @id" InsertCommand="INSERT INTO [loaihang] ([id], [ten]) VALUES (@id, @ten)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [loaihang]" UpdateCommand="UPDATE [loaihang] SET [ten] = @ten WHERE [id] = @id">
                       <DeleteParameters>
                           <asp:Parameter Name="id" Type="String" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="id" Type="String" />
                           <asp:Parameter Name="ten" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="ten" Type="String" />
                           <asp:Parameter Name="id" Type="String" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
               </div>
            </div>
         </div>
      </section>
</form>
</asp:Content>

