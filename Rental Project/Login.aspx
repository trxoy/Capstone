<%@ Page Title="Login" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Login</h2>
    If you have not created an account yet please <a href="SignUp.aspx">sign up</a>.
   <div class="centerdiv"> <asp:Login ID="Login1" runat="server" >
    </asp:Login>
       </div>
</asp:Content>


