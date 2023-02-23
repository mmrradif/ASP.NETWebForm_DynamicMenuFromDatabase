<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="AnondoBazar.frmHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container m-5 p-5">
        <div class="row">
            <div class="col-8 p-2">

                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Visible="False"></asp:TextBox>
                <asp:Label ID="lblHomeText" Font-Size="X-Large" CssClass="alert-light" runat="server" Text="Home page">I'am A UnRegistered User<br />I Can't See TextBox</asp:Label>


                


            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
