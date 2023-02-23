<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmAdminDashBoard.aspx.cs" Inherits="AnondoBazar.frmAdminDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">


    <asp:Panel ID="Panel1" runat="server" CssClass="row">
        <asp:Panel ID="Panel2" runat="server" CssClass="col-10 m-auto">

            <ul class="nav nav-tabs p-4 justify-content-center" id="myTab" role="tablist">
                <li class="nav-item shadow mr-1 px-2" role="presentation">
                    <button class="nav-link active" id="admin-tab" data-toggle="tab" data-target="#admin" type="button" role="tab" aria-controls="admin" aria-selected="true">Admin</button>
                </li>

                <li class="nav-item shadow mr-1 px-2" role="presentation">
                    <button class="nav-link" id="employee-tab" data-toggle="tab" data-target="#employee" type="button" role="tab" aria-controls="employee" aria-selected="false">Employee</button>
                </li>

                <li class="nav-item shadow mr-1 px-2" role="presentation">
                    <button class="nav-link" id="user-tab" data-toggle="tab" data-target="#user" type="button" role="tab" aria-controls="user" aria-selected="false">Registered User</button>
                </li>

                <li class="nav-item shadow mr-1 px-2" role="presentation">
                    <button class="nav-link" id="Unuser-tab" data-toggle="tab" data-target="#Unuser" type="button" role="tab" aria-controls="Unuser" aria-selected="false">Unregistered User</button>
                </li>
            </ul>


            <div class="tab-content" id="myTabContent">
                <%-- START ADMIN --%>
                <div class="tab-pane fade show active" id="admin" role="tabpanel" aria-labelledby="admin-tab">

                    <div class="row">
                        <div class="col-6">

                            <h2 class="text-center p-2 text-info">Main Menu</h2>

                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                            <asp:DetailsView ID="DetailsView2" CssClass="table table-bordered table-secondary w-100 shadow" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsMainMenu" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                        <Fields>
                                            <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                            <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="150px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="parentId" HeaderText="parentId" SortExpression="parentId" Visible="False" />
                                            <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />

                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary shadow" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger shadow" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary shadow" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger shadow" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success shadow" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info shadow" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-danger shadow" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Fields>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    </asp:DetailsView>



                                    <asp:SqlDataSource ID="dsMainMenu" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                            <asp:Parameter Name="roleid" DefaultValue="1" Type="Int32" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="roleid" Type="Int32" />
                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" DefaultValue="1" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>





                        <div class="col-6">
                            <h2 class="text-center p-2 text-info">Sub Menu</h2>

                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-secondary p-4 w-100 shadow" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsSubMenu" GridLines="None" ForeColor="#333333">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />

                                        <Fields>
                                            <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />

                                            <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="150px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Parent Menu" SortExpression="parentId">
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList3" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsAdminItemParentId3" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                    <asp:SqlDataSource ID="dsAdminItemParentId3" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="roleid" Type="Int32" />
                                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>

                                                    <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsAdminItemParentId2" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                    <asp:SqlDataSource ID="dsAdminItemParentId2" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="roleid" Type="Int32" />
                                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>

                                                    <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                                </InsertItemTemplate>

                                                <ItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsAdminItemParentId" DataTextField="menuName" DataValueField="menuId" Enabled="false"></asp:DropDownList>

                                                    <asp:SqlDataSource ID="dsAdminItemParentId" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="roleid" Type="Int32" />
                                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>

                                                    <%--<asp:Label ID="Label3" runat="server" Text='<%# Bind("parentId") %>'></asp:Label>--%>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="roleid" SortExpression="roleid" Visible="False">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("roleid") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("roleid") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("roleid") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
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

                                    <asp:SqlDataSource ID="dsSubMenu" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] &gt; @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" DefaultValue="1" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="roleid" Type="Int32" />
                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" />
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>

                </div>
                <%-- END ADMIN --%>





                <%-- START EMPLOYEE --%>

                <div class="tab-pane fade" id="employee" role="tabpanel" aria-labelledby="employee-tab">
                  
                    <div class="row">
                        <div class="col-6">
                            <h2 class="text-center p-2 text-info">Main Menu</h2>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:DetailsView ID="DetailsView3" CssClass="table table-bordered table-secondary p-4 w-100 shadow" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsMainEmployee" ForeColor="#333333" GridLines="None">

                                            <AlternatingRowStyle BackColor="White" />
                                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                            <Fields>
                                                <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                                <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="150px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="parentId" HeaderText="parentId" SortExpression="parentId" Visible="False" />
                                                <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />
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
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />

                                        </asp:DetailsView>

                                        <asp:SqlDataSource ID="dsMainEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                            <DeleteParameters>
                                                <asp:Parameter Name="menuId" Type="Int32" />
                                                <asp:Parameter Name="roleid" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="menuName" Type="String" />
                                                <asp:Parameter Name="menulocation" Type="String" />
                                                <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                                <asp:Parameter Name="roleid" Type="Int32" DefaultValue="4" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="4" Name="roleid" Type="Int32" />
                                                <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="menuName" Type="String" />
                                                <asp:Parameter Name="menulocation" Type="String" />
                                                <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                                <asp:Parameter Name="menuId" Type="Int32" />
                                                <asp:Parameter Name="roleid" Type="Int32" DefaultValue="4" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>


                    <div class="col-6">
                        <h2 class="text-center p-2 text-info">Sub Menu</h2>

                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">

                            <ContentTemplate>

                                <asp:DetailsView ID="DetailsView4" CssClass="table table-bordered table-secondary w-100" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="menuId,roleid" DataSourceID="dsEmployeeSub" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                    <Fields>
                                        <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Parent Menu" SortExpression="parentId">
                                            <EditItemTemplate>

                                                <asp:DropDownList ID="DropDownList6" CssClass="form-control" runat="server" SelectedValue='<%# Bind("parentId") %>' DataSourceID="dsEmployeeEdit" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsEmployeeEdit" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="roleid" Type="Int32" />
                                                        <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>

                                                <asp:DropDownList ID="DropDownList5" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsEmployeeSubInsert" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>


                                                <asp:SqlDataSource ID="dsEmployeeSubInsert" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="roleid" Type="Int32" />
                                                        <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>


                                                <%--<asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                            </InsertItemTemplate>
                                            <ItemTemplate>

                                                <asp:DropDownList ID="DropDownList4" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsEmpolyeeSubItem" DataTextField="menuName" DataValueField="menuId" Enabled="false"></asp:DropDownList>


                                                <asp:SqlDataSource ID="dsEmpolyeeSubItem" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="roleid" Type="Int32" />
                                                        <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>


                                                <%--<asp:Label ID="Label3" CssClass="form-control" runat="server" Text='<%# Bind("parentId") %>'></asp:Label>--%>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Fields>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                </asp:DetailsView>

                                <asp:SqlDataSource ID="dsEmployeeSub" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] &gt; @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="menuId" Type="Int32" />
                                        <asp:Parameter Name="roleid" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="menuName" Type="String" />
                                        <asp:Parameter Name="menulocation" Type="String" />
                                        <asp:Parameter Name="parentId" Type="Int32" />
                                        <asp:Parameter Name="roleid" Type="Int32" DefaultValue="4" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="4" Name="roleid" Type="Int32" />
                                        <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="menuName" Type="String" />
                                        <asp:Parameter Name="menulocation" Type="String" />
                                        <asp:Parameter Name="parentId" Type="Int32" />
                                        <asp:Parameter Name="menuId" Type="Int32" />
                                        <asp:Parameter Name="roleid" Type="Int32" DefaultValue="4" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                            </ContentTemplate>

                        </asp:UpdatePanel>
                                            
                        </div>
                    </div>

                </div>
                <%-- EMPLOYEE END --%>


                <%-- USER START --%>
                <div class="tab-pane fade" id="user" role="tabpanel" aria-labelledby="user-tab">
                    
                   <div class="row">
                        <div class="col-6">
                            <h2 class="text-center p-2 text-info">Main Menu</h2>

                            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                <ContentTemplate>
                                    <asp:DetailsView ID="DetailsView5" runat="server" CssClass="table table-bordered table-primary w-100" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsUserMainMenu" >


                                        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <Fields>
                                            <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                            <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="150px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="parentId" HeaderText="parentId" SortExpression="parentId" Visible="False" />
                                            <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />
                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Fields>
                                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" ForeColor="#003399" />


                                    </asp:DetailsView>
                                    <asp:SqlDataSource ID="dsUserMainMenu" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                            <asp:Parameter Name="roleid" Type="Int32" DefaultValue="2" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="2" Name="roleid" Type="Int32" />
                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" DefaultValue="2" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>



                       <div class="col-6">
                            <h2 class="text-center p-2 text-info">Sub Menu</h2>

                           <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                               <ContentTemplate>
                                   <asp:DetailsView ID="DetailsView6" runat="server" CssClass="table table-bordered table-primary w-100" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsUserSubMenu" >

                                       <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                       <Fields>
                                           <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                           <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                               <EditItemTemplate>
                                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>
                                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                               </InsertItemTemplate>
                                               <ItemTemplate>
                                                   <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                               </ItemTemplate>
                                               <HeaderStyle Width="150px" />
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                               <EditItemTemplate>
                                                   <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>
                                                   <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                               </InsertItemTemplate>
                                               <ItemTemplate>
                                                   <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="Parent Menu" SortExpression="parentId">
                                               <EditItemTemplate>

                                                   <asp:DropDownList ID="DropDownList7" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsUserEditSubMenu" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                   <asp:SqlDataSource ID="dsUserEditSubMenu" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                       <SelectParameters>
                                                           <asp:Parameter DefaultValue="2" Name="roleid" Type="Int32" />
                                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                       </SelectParameters>
                                                   </asp:SqlDataSource>

                                                   <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                               </EditItemTemplate>

                                               <InsertItemTemplate>

                                                   <asp:DropDownList ID="DropDownList8" CssClass="form-control" runat="server" SelectedValue='<%# Bind("parentId") %>' DataSourceID="dsUserInsertSub" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                   <asp:SqlDataSource ID="dsUserInsertSub" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                       <SelectParameters>
                                                           <asp:Parameter DefaultValue="2" Name="roleid" Type="Int32" />
                                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                       </SelectParameters>
                                                   </asp:SqlDataSource>

                                                   <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                               </InsertItemTemplate>

                                               <ItemTemplate>

                                                   <asp:DropDownList ID="DropDownList9" CssClass="form-control" runat="server" SelectedValue='<%# Bind("parentId") %>' DataSourceID="dsUserItem" DataTextField="menuName" DataValueField="menuId" Enabled="false"></asp:DropDownList>


                                                   <asp:SqlDataSource ID="dsUserItem" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                       <SelectParameters>
                                                           <asp:Parameter DefaultValue="2" Name="roleid" Type="Int32" />
                                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                       </SelectParameters>
                                                   </asp:SqlDataSource>


                                                   <%--<asp:Label ID="Label3" runat="server" Text='<%# Bind("parentId") %>'></asp:Label>--%>
                                               </ItemTemplate>
                                           </asp:TemplateField>



                                           <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />
                                           <asp:TemplateField ShowHeader="False">
                                               <EditItemTemplate>
                                                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>
                                                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                               </InsertItemTemplate>
                                               <ItemTemplate>
                                                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                       </Fields>
                                       <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                       <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                       <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                       <RowStyle BackColor="White" ForeColor="#003399" />

                                   </asp:DetailsView>
                                   <asp:SqlDataSource ID="dsUserSubMenu" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] &gt; @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                       <DeleteParameters>
                                           <asp:Parameter Name="menuId" Type="Int32" />
                                           <asp:Parameter Name="roleid" Type="Int32" />
                                       </DeleteParameters>
                                       <InsertParameters>
                                           <asp:Parameter Name="menuName" Type="String" />
                                           <asp:Parameter Name="menulocation" Type="String" />
                                           <asp:Parameter Name="parentId" Type="Int32" />
                                           <asp:Parameter Name="roleid" Type="Int32"  DefaultValue="2" />
                                       </InsertParameters>
                                       <SelectParameters>
                                           <asp:Parameter DefaultValue="2" Name="roleid" Type="Int32" />
                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                       </SelectParameters>
                                       <UpdateParameters>
                                           <asp:Parameter Name="menuName" Type="String" />
                                           <asp:Parameter Name="menulocation" Type="String" />
                                           <asp:Parameter Name="parentId" Type="Int32" />
                                           <asp:Parameter Name="menuId" Type="Int32"/>
                                           <asp:Parameter Name="roleid" Type="Int32" DefaultValue="2" />
                                       </UpdateParameters>
                                   </asp:SqlDataSource>
                               </ContentTemplate>
                           </asp:UpdatePanel>

                       </div>


                   </div>
                </div>
                <%-- USER END --%>




                <%-- UNAUTHORIZED USER START --%>

                <div class="tab-pane fade" id="Unuser" role="tabpanel" aria-labelledby="Unuser-tab">
                    
                   <div class="row">
                        <div class="col-6">
                            <h2 class="text-center p-2 text-info">Main Menu</h2>

                            <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                <ContentTemplate>
                                    <asp:DetailsView ID="DetailsView7" runat="server" CssClass="table table-bordered table-primary w-100" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsUnUserMain" ForeColor="#333333" GridLines="None" >
                                        <AlternatingRowStyle BackColor="White" />
                                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                                        <EditRowStyle BackColor="#7C6F57" />
                                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                                        <Fields>
                                            <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                            <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="150px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="parentId" HeaderText="parentId" SortExpression="parentId" Visible="False" />
                                            <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />

                                            <asp:TemplateField ShowHeader="False">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </EditItemTemplate>
                                                <InsertItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Fields>
                                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#E3EAEB" />
                                    </asp:DetailsView>
                                    <asp:SqlDataSource ID="dsUnUserMain" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                            <asp:Parameter Name="roleid" Type="Int32" DefaultValue="3" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="3" Name="roleid" Type="Int32" />
                                            <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="menuName" Type="String" />
                                            <asp:Parameter Name="menulocation" Type="String" />
                                            <asp:Parameter Name="parentId" Type="Int32" DefaultValue="0" />
                                            <asp:Parameter Name="menuId" Type="Int32" />
                                            <asp:Parameter Name="roleid" Type="Int32" DefaultValue="3" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            
                        </div>



                       <div class="col-6">
                            <h2 class="text-center p-2 text-info">Sub Menu</h2>

                           <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                               <ContentTemplate>
                                   <asp:DetailsView ID="DetailsView8" runat="server" CssClass="table table-bordered table-primary w-100" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="menuId,roleid" DataSourceID="dsUnUserSub" ForeColor="#333333" GridLines="None" >
                                       <AlternatingRowStyle BackColor="White" />
                                       <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                                       <EditRowStyle BackColor="#7C6F57" />
                                       <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                                       <Fields>
                                           <asp:BoundField DataField="menuId" HeaderText="menuId" InsertVisible="False" ReadOnly="True" SortExpression="menuId" Visible="False" />
                                           <asp:TemplateField HeaderText="Name" SortExpression="menuName">
                                               <EditItemTemplate>
                                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>
                                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:TextBox>
                                               </InsertItemTemplate>
                                               <ItemTemplate>
                                                   <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("menuName") %>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Location" SortExpression="menulocation">
                                               <EditItemTemplate>
                                                   <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>
                                                   <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:TextBox>
                                               </InsertItemTemplate>
                                               <ItemTemplate>
                                                   <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("menulocation") %>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:TemplateField HeaderText="Parent Menu" SortExpression="parentId">
                                               <EditItemTemplate>

                                                   <asp:DropDownList ID="DropDownList10" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsUnUserEdit" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                   <asp:SqlDataSource ID="dsUnUserEdit" runat="server"  ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                       <SelectParameters>
                                                           <asp:Parameter DefaultValue="3" Name="roleid" Type="Int32" />
                                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                       </SelectParameters>
                                                   </asp:SqlDataSource>

                                                   <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>

                                                   <asp:DropDownList ID="DropDownList11" CssClass="form-control" SelectedValue='<%# Bind("parentId") %>' runat="server" DataSourceID="dsUnUserInsert" DataTextField="menuName" DataValueField="menuId"></asp:DropDownList>

                                                   <asp:SqlDataSource ID="dsUnUserInsert" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                       <SelectParameters>
                                                           <asp:Parameter DefaultValue="3" Name="roleid" Type="Int32" />
                                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                       </SelectParameters>
                                                   </asp:SqlDataSource>

                                                   <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("parentId") %>'></asp:TextBox>--%>
                                               </InsertItemTemplate>
                                               <ItemTemplate>

                                                   <asp:DropDownList ID="DropDownList12" CssClass="form-control" runat="server" DataSourceID="dsUnUserItem" DataTextField="menuName" DataValueField="menuId" Enabled="false"></asp:DropDownList>


                                                   <asp:SqlDataSource ID="dsUnUserItem" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] = @parentId))">
                                                       <SelectParameters>
                                                           <asp:Parameter DefaultValue="3" Name="roleid" Type="Int32" />
                                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                                       </SelectParameters>
                                                   </asp:SqlDataSource>


                                                   <%--<asp:Label ID="Label3" runat="server" Text='<%# Bind("parentId") %>'></asp:Label>--%>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                           <asp:BoundField DataField="roleid" HeaderText="roleid" ReadOnly="True" SortExpression="roleid" Visible="False" />
                                           <asp:TemplateField ShowHeader="False">
                                               <EditItemTemplate>
                                                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                               </EditItemTemplate>
                                               <InsertItemTemplate>
                                                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                               </InsertItemTemplate>
                                               <ItemTemplate>
                                                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                   &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                       </Fields>
                                       <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                       <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                       <RowStyle BackColor="#E3EAEB" />
                                   </asp:DetailsView>
                                   <asp:SqlDataSource ID="dsUnUserSub" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblDynamicMenu] WHERE [menuId] = @menuId AND [roleid] = @roleid" InsertCommand="INSERT INTO [tblDynamicMenu] ([menuName], [menulocation], [parentId], [roleid]) VALUES (@menuName, @menulocation, @parentId, @roleid)" SelectCommand="SELECT * FROM [tblDynamicMenu] WHERE (([roleid] = @roleid) AND ([parentId] &gt; @parentId))" UpdateCommand="UPDATE [tblDynamicMenu] SET [menuName] = @menuName, [menulocation] = @menulocation, [parentId] = @parentId WHERE [menuId] = @menuId AND [roleid] = @roleid">
                                       <DeleteParameters>
                                           <asp:Parameter Name="menuId" Type="Int32" />
                                           <asp:Parameter Name="roleid" Type="Int32" />
                                       </DeleteParameters>
                                       <InsertParameters>
                                           <asp:Parameter Name="menuName" Type="String" />
                                           <asp:Parameter Name="menulocation" Type="String" />
                                           <asp:Parameter Name="parentId" Type="Int32" />
                                           <asp:Parameter Name="roleid" Type="Int32" DefaultValue="3" />
                                       </InsertParameters>
                                       <SelectParameters>
                                           <asp:Parameter DefaultValue="3" Name="roleid" Type="Int32" />
                                           <asp:Parameter DefaultValue="0" Name="parentId" Type="Int32" />
                                       </SelectParameters>
                                       <UpdateParameters>
                                           <asp:Parameter Name="menuName" Type="String" />
                                           <asp:Parameter Name="menulocation" Type="String" />
                                           <asp:Parameter Name="parentId" Type="Int32" />
                                           <asp:Parameter Name="menuId" Type="Int32" />
                                           <asp:Parameter Name="roleid" Type="Int32" DefaultValue="3" />
                                       </UpdateParameters>
                                   </asp:SqlDataSource>
                               </ContentTemplate>
                           </asp:UpdatePanel>

                       </div>


                   </div>
                </div>
                <%-- UNAUTHORIZED USER END --%>

            </div>

        </asp:Panel>
    </asp:Panel>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
