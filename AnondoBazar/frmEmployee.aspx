<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmEmployee.aspx.cs" Inherits="AnondoBazar.frmEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="col-8 m-auto">
                    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered shadow m-4 p-4 w-100" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="dsEmployee" GridLines="None" ForeColor="#333333">


                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />


                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="id" Visible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Eval("id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Bind("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("name") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" CssClass="form-control" Text='<%# Bind("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Name" SortExpression="userName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("userName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("userName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" CssClass="form-control" Text='<%# Bind("userName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Password" SortExpression="userPassword">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("userPassword") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("userPassword") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" CssClass="form-control" Text='<%# Bind("userPassword") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Email" SortExpression="userEmail">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("userEmail") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("userEmail") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" CssClass="form-control" runat="server" Text='<%# Bind("userEmail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Role" SortExpression="RoleId" Visible="False">
                                <EditItemTemplate>

                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" SelectedValue='<%# Bind("roleId") %>' DataSourceID="dsRole" DataTextField="roleName" DataValueField="roleId">
                                    </asp:DropDownList>

                                    <asp:SqlDataSource ID="dsRole" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblRole] WHERE ([roleId] = @roleId)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="4" Name="roleId" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    <%--<asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("roleName") %>'></asp:TextBox>--%>
                                </EditItemTemplate>
                                <InsertItemTemplate>

                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" SelectedValue='<%# Bind("roleId") %>' DataSourceID="dsRole2" DataTextField="roleName" DataValueField="roleId">
                                    </asp:DropDownList>

                                    <asp:SqlDataSource ID="dsRole2" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblRole] WHERE ([roleId] = @roleId)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="4" Name="roleId" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>


                                    <%--<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("roleName") %>'></asp:TextBox>--%>
                                </InsertItemTemplate>

                                <ItemTemplate>
                                    <asp:Label ID="Label6" CssClass="form-control" runat="server" Text='<%# Bind("roleName") %>'></asp:Label>
                                    <%--<asp:TextBox ID="TextBox5" CssClass="form-control disabled" runat="server" Text='<%# Bind("roleName") %>'></asp:TextBox>--%>
                                    <%--<asp:Label ID="Label6" runat="server" Text='<%# Bind("roleName") %>'></asp:Label>--%>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>


                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />


                    </asp:DetailsView>

                    <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [signUp] WHERE [id] = @id" InsertCommand="INSERT INTO [signUp] ([name], [userName], [userPassword], [userEmail], [RoleId]) VALUES (@name, @userName, @userPassword, @userEmail, @RoleId)" SelectCommand="SELECT s.id,s.name,s.RoleId,s.userEmail,s.userName,s.userPassword,r.roleId,r.roleName FROM signUp s INNER JOIN tblRole r ON s.RoleId=r.roleId WHERE S.RoleId=4" UpdateCommand="UPDATE [signUp] SET [name] = @name, [userName] = @userName, [userPassword] = @userPassword, [userEmail] = @userEmail, [RoleId] = @RoleId WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="userPassword" Type="String" />
                            <asp:Parameter Name="userEmail" Type="String" />
                            <asp:Parameter Name="RoleId" Type="Int32" DefaultValue="4" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="4" Name="RoleId" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="userPassword" Type="String" />
                            <asp:Parameter Name="userEmail" Type="String" />
                            <asp:Parameter Name="RoleId" Type="Int32" DefaultValue="4" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
