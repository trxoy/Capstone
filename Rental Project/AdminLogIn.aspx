<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AdminLogIn.aspx.vb" Inherits="AdminLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Username:
    <asp:TextBox ID="txtUsername" runat="server" CssClass="tb5"></asp:TextBox>
    <br />
    <br />
    Password:
    <asp:TextBox ID="txtPassword" runat="server" CssClass="tb5"></asp:TextBox>
    <br />
    <br />

    <asp:Button ID="btnAdminLogIn" runat="server" Text="Log In" CssClass="bordereffect" />
    <br />
</asp:Content>

