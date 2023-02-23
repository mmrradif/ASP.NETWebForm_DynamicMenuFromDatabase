<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="AnondoBazar.frmRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container-fluid bg-light">

        <header class="text-center pt-5 pb-3 text-primary fw-bolder">
            <h2>Please Registration Here</h2>
        </header>

        <main>
            <div class="container">

                <div class="row">
                    <div class="col-6 m-auto pb-3 fw-bold text-danger text-center">
                        <asp:ValidationSummary ID="ValidationSummary1" CssClass="rounded-3 p-3" runat="server" HeaderText="All Validation Summery" ShowMessageBox="True" BackColor="#CC3300" BorderStyle="Solid" Font-Bold="True" ForeColor="White" DisplayMode="List" BorderColor="#6600FF" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-6 m-auto pb-5 fw-bold">

                        <div class="mb-3">
                            <asp:Label ID="Label4" CssClass="form-label text-primary" AssociatedControlID="txtName" runat="server" Text="Label">Name : </asp:Label>
                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>

                            <div class="form-text text-danger">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name" ControlToValidate="txtName" Display="Dynamic" SetFocusOnError="True">Name is Required</asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="mb-3">

                            <asp:Label ID="Label1" CssClass="form-label text-primary" AssociatedControlID="txtUserName" runat="server" Text="Label">User Name : </asp:Label>
                            <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>

                            <div class="form-text text-danger">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name" ControlToValidate="txtUserName" Display="Dynamic" SetFocusOnError="True">User Name is Required</asp:RequiredFieldValidator>

                            </div>
                        </div>


                        <div class="mb-3">
                            <asp:Label ID="Label2" CssClass="form-label text-primary" AssociatedControlID="txtPassword" runat="server" Text="Label">Password : </asp:Label>
                            <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>

                            <div class="form-text text-danger">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True">Password is Required</asp:RequiredFieldValidator>

                            </div>
                        </div>


                        <div class="mb-3">
                            <asp:Label ID="Label3" CssClass="form-label text-primary" AssociatedControlID="txtEmail" runat="server" Text="Label">Email : </asp:Label>
                            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>

                            <div class="form-text text-danger">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True">Email is Required</asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Re Enter Email Format" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Was Not Correct Format</asp:RegularExpressionValidator>

                            </div>
                        </div>



                        
                        <div class="mt-4 mb-3">
                            <asp:Button ID="btnSave" CssClass="btn btn-primary px-2 mr-3" runat="server" Text="Save" OnClick="btnSave_Click" />

                            
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frmLogin.aspx">Already Have An Account</asp:HyperLink></div>


                    </div>
                </div>
            </div>
        </main>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
