<%@ Page Title="Cart" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart2.aspx.cs" Inherits="Cart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Shopping Cart</h2>
            Your car selection:<br />
    <br />
    <asp:Label ID="lblMake" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblModel" runat="server"></asp:Label>
    <br />
    <br />
            $<asp:Label ID="lblRentalPrice" runat="server"></asp:Label>
            <br />
            <br />

        <asp:Button ID="btnCheckout1" runat="server" Text="Checkout" Class="bordereffect" OnClick="btnCheckout1_Click" AccessKey="C" ToolTip="Go to checkout page"/>
    </p>
</asp:Content>

