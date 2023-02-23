<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="AnondoBazar.frmLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container-fluid bg-light">

        <header class="text-center pt-5 pb-3 text-primary fw-bolder">
            <h2>Please Login Here</h2>
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
                            <asp:Label ID="Label1" CssClass="form-label text-primary" AssociatedControlID="txtUserName" runat="server" Text="Label">User Name : </asp:Label>
                            <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>

                            <div class="form-text text-danger">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name" ControlToValidate="txtUserName" Display="Dynamic" SetFocusOnError="True">User Name is Required</asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <div class="mb-3">
                            <asp:Label ID="Label2" CssClass="form-label text-primary"  AssociatedControlID="txtPassword" runat="server" Text="Label">Password : </asp:Label>
                            <asp:TextBox ID="txtPassword" CssClass="form-control"  runat="server"></asp:TextBox>                          

                            <div class="form-text text-danger">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True">Password is Required</asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="mb-1">                            
                            <asp:CheckBox ID="cbRemember" runat="server" /> 
                            <asp:Label ID="Label3" CssClass="form-label text-primary" AssociatedControlID="cbRemember" runat="server" Text="Label">Remember Me</asp:Label>          
                        </div>
                      
                        <div class="mb-3">                                                       
                            <asp:Label ID="lblInvalid" CssClass="form-label text-danger" runat="server" Text=""></asp:Label>                            
                        </div>


                        <div class="mt-4 mb-3">
                            <asp:Button ID="btnlogin" CssClass="btn btn-primary mr-3 px-4" runat="server" Text="Login" OnClick="btnlogin_Click"/>
                            <asp:LinkButton ID="SignUpLink" CausesValidation="false" runat="server" OnClick="SignUpLink_Click">Sign Up</asp:LinkButton>
                        </div>
                        
                    </div>

                </div>
                
            </div>

        </main>

    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
