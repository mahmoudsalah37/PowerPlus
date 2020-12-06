<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_cart.aspx.cs" Inherits="PowerPlus_v1.add_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <div class="col-lg-2">
        </div>
        <div class="col-lg-10" style="margin-top: 50px">
            <h1>تفاصيل السله</h1>
             <asp:GridView ID="GridView1" runat="server"
				 DataKeyNames="o_id" DataSourceID="SqlDataSource1" 
				 	CellPadding="3" GridLines="Vertical"
					AutoGenerateColumns="False" Width="100%"
					BorderWidth="1px"
					AllowCustomPaging="True"
					BackColor="White"
					BorderColor="#999999"
					BorderStyle="Solid"
					PageSize="20"
					AllowPaging="True"
					CellSpacing="2"
					  EmptyDataText="لا يوجد منتجات"
					HorizontalAlign="Center"
					 >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
               <%-- <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="image" runat="server" ImageUrl='<%# "LodeImage.aspx?image=1&id=" + Eval("product_id") %>' />
                        <br />
                    </ItemTemplate>

                </asp:TemplateField>--%>

                <asp:TemplateField HeaderText="اسم المنتج">
                    <ItemTemplate>
                        <div style="height: 30px; width: 400px">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
                        </div>
                        <br />
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:BoundField DataField="brand" HeaderText="مجموعه" SortExpression="brand" />
                <asp:BoundField DataField="quantity" HeaderText="العدد" SortExpression="quantity" />
                <asp:BoundField DataField="price" HeaderText="السعر" SortExpression="price" />
            </Columns>
				 		  <FooterStyle BackColor="White" ForeColor="Black" BorderStyle="None" />
        <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#003366" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
        <AlternatingRowStyle BackColor="#E5E8E8" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DELETE FROM [cart_product] WHERE [o_id] = @o_id" InsertCommand="INSERT INTO [cart_product] ([user_id], [product_id], [Product_name], [brand], [image], [quantity], [price]) VALUES (@user_id, @product_id, @Product_name, @brand, @image, @quantity, @price)" SelectCommand="SELECT * FROM [cart_product] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [cart_product] SET [user_id] = @user_id, [product_id] = @product_id, [Product_name] = @Product_name, [brand] = @brand, [image] = @image, [quantity] = @quantity, [price] = @price WHERE [o_id] = @o_id">
            <DeleteParameters>
                <asp:Parameter Name="o_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:CookieParameter CookieName="u_id" Name="user_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="o_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
			<br />
			<br />
			<br />
			<br />
    <asp:ImageButton ID="btn_place_order" runat="server" ImageUrl="~/img/place_order.png" OnClick="btn_place_order_Click" />
        <br />
        </div>
    </div>
    
</asp:Content>

