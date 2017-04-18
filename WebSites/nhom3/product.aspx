<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
            <div class="line">
               <h1>QUẢN LÝ SẢN PHẨM</h1>
            </div>
         </div>
         <div id="content">
            <div class="line">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="nhom3">
                        <EditItemTemplate>
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            ten:
                            <asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' />
                            <br />
                            gia:
                            <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
                            <br />
                            soluong:
                            <asp:TextBox ID="soluongTextBox" runat="server" Text='<%# Bind("soluong") %>' />
                            <br />
                            loaihang_id:
                            <asp:TextBox ID="loaihang_idTextBox" runat="server" Text='<%# Bind("loaihang_id") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            id:
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            <br />
                            ten:
                            <asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' />
                            <br />
                            gia:
                            <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
                            <br />
                            soluong:
                            <asp:TextBox ID="soluongTextBox" runat="server" Text='<%# Bind("soluong") %>' />
                            <br />
                            loaihang_id:
                            <asp:TextBox ID="loaihang_idTextBox" runat="server" Text='<%# Bind("loaihang_id") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="nhom3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [Sanpham] WHERE [id] = @id" InsertCommand="INSERT INTO [Sanpham] ([id], [ten], [gia], [soluong], [loaihang_id]) VALUES (@id, @ten, @gia, @soluong, @loaihang_id)" SelectCommand="SELECT [id], [ten], [gia], [soluong], [loaihang_id] FROM [Sanpham]" UpdateCommand="UPDATE [Sanpham] SET [ten] = @ten, [gia] = @gia, [soluong] = @soluong, [loaihang_id] = @loaihang_id WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="String" />
                            <asp:Parameter Name="ten" Type="String" />
                            <asp:Parameter Name="gia" Type="Int32" />
                            <asp:Parameter Name="soluong" Type="Int32" />
                            <asp:Parameter Name="loaihang_id" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ten" Type="String" />
                            <asp:Parameter Name="gia" Type="Int32" />
                            <asp:Parameter Name="soluong" Type="Int32" />
                            <asp:Parameter Name="loaihang_id" Type="String" />
                            <asp:Parameter Name="id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="nhom3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                            <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia" />
                            <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                            <asp:BoundField DataField="loaihang_id" HeaderText="loaihang_id" SortExpression="loaihang_id" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>

            </div>
         </div>
         <!-- GALLERY -->	
         <div id="third-block">
            <div class="line">
               <h2>mobile gallery</h2>
               <p>.</p>
                <p>.</p>
                <p>.</p>
                <p>.</p>
               <div class="margin">
                  <div class="s-12 m-6 l-3">
                      <img src="img/iphone7s.jpg" />
                     <p class="subtitile">Iphone 7 đẳng cấp
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/oppof1s.jpg" />
                     <p class="subtitile">Camera phone sang chảnh
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/sonyxz.jpg" />
                     <p class="subtitile">Sony thời thượng
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/sss7.jpg" />  
                     <p class="subtitile">Sam Sung tinh tế
                     </p>
                  </div>
               </div>
            </div>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
                  <div class="item">
                     <h3 class="s-12 m-12 l-8 center">Những mấu điện thoại mới nhất</h3>
                      <p> </p>
                      <p> </p>
                     <p class="s-12 m-12 l-8 center">Luôn cập nhật xu thế điện thoại mới
                     </p>
                  </div>
                  <div class="item">
                     <h3 class="s-12 m-12 l-8 center">Chế độ bảo hành</h3>
                      <p> </p>
                      <p> </p>
                     <p class="s-12 m-12 l-8 center">Trung tâm bảo hành luôn khiến cho khách hàng hài lòng
                     </p>
                  </div>
                  <div class="item">
                     <h3 class="s-12 m-12 l-8 center">Giá</h3>
                      <p> </p>
                      <p> </p>
                     <p class="s-12 m-12 l-8 center">Giá cả phải chăng, luôn kèm khuyến mãi hấp dẫn
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
</form>
</asp:Content>

