<%@ Page Title="Sign Up" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SignUp.aspx.vb" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Sign Up</h2>
    <div>
                Username<br />
        <asp:TextBox ID="txtUsername" runat="server" CssClass="tb5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredusername" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Password<br />
        <asp:TextBox ID="txtPassword" runat="server" CssClass="tb5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredpassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Confim Password<br />
        <asp:TextBox ID="txtCPassword" runat="server" CssClass="tb5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredconfirmp" runat="server" ControlToValidate="txtCPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Email<br />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="tb5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Confirm Email<br />
        <asp:TextBox ID="txtCEmail" runat="server" CssClass="tb5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredconfirmemail" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtCEmail"></asp:RequiredFieldValidator>
                <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="bordereffect" AccessKey="S" ToolTip="Sign up" />
                <br />
                <br />
                <br />
    </div>
</asp:Content>


