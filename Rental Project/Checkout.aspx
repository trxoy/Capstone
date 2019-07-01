<%@ Page Title="Checkout" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style5 {
            width: 369px;
        }
        .auto-style6 {
            width: 396px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h2>Checkout</h2>
        <br />
      Pick up date:
        <asp:Label ID="lblMonth" runat="server"></asp:Label>
        <asp:DropDownList ID="ddlDate1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>

   
        <br />

   
        <br />

   
        Drop off date:
        <asp:Label ID="lblMonth2" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlDate2" runat="server">

            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
      

            <br />
        <br />
      

            <asp:Button class="bordereffect" ID="btnCalculateTotal" runat="server" Text="Calculate Total" AccessKey="C" ToolTip="Calculate" />
        
            <br />
        <br />
        
            Price per day: $<asp:Label ID="lblDailyPrice" runat="server"></asp:Label>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Price: $<asp:Label ID="lblOrderTotal" runat="server"></asp:Label>
        
            <br />
        <br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table class="purpleHorizon">
<thead>
<tr>
<th class="auto-style5">Personal Info</th>
<th class="auto-style6">Credit Card Info</th>
</tr>
</thead>
<tbody>
<tr>
<td class="auto-style5">Name:
    <asp:TextBox ID="txtName2" runat="server" CssClass="tb5"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorname" runat="server" ControlToValidate="txtName2" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
    </td><td class="auto-style6">Credit Card Info:
        <asp:TextBox ID="txtCCNumber" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorCCNumber" runat="server" ControlToValidate="txtCCNumber" EnableTheming="True" ErrorMessage="Invalid CC" ForeColor="Red" ValidationExpression="^(\d{4}[- ]){3}\d{4}|\d{16}$"></asp:RegularExpressionValidator>
    </td></tr>
<tr>
<td class="auto-style5">Email:
    <asp:TextBox ID="txtEmail2" runat="server" CssClass="tb5"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td><td class="auto-style6">Credit Card Date:
        <asp:TextBox ID="txtCCDate" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorDate" runat="server" ControlToValidate="txtCCDate" ErrorMessage="Invalid Date" ForeColor="Red" ValidationExpression="^\d*$"></asp:RegularExpressionValidator>
    </td></tr>
<tr>
<td class="auto-style5">Phone Number:
    <asp:TextBox ID="txtPhone2" runat="server" CssClass="tb5"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="txtPhone2" ErrorMessage="Invalid number" ForeColor="Red" ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$"></asp:RegularExpressionValidator>
    </td><td class="auto-style6">CVV:
        <asp:TextBox ID="txtCVV" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorCVV" runat="server" ControlToValidate="txtCVV" ErrorMessage="Invalid CVV" ForeColor="Red" ValidationExpression="^\d*$"></asp:RegularExpressionValidator>
    </td></tr>
    <td class="auto-style5">Username:
        <asp:TextBox ID="txtUsername" runat="server" CssClass="tb5"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
<tr>

<td class="auto-style5">  
    <asp:Button ID="btnSubmitOrder" runat="server" Text="Submit Order" CssClass="bordereffect" AccessKey="S" ToolTip="Submit" />
    </td><td class="auto-style6">
        <asp:Button ID="btnClear2" runat="server" Text="Clear" CssClass="bordereffect" />
    </td></tr>

</tbody>

</table>
        <br />
        <asp:Label ID="lblOrderSubmitted" runat="server" ForeColor="#22C81A"><h1></h1></asp:Label>
        </div>  
    <br />
    <br />
</asp:Content>

