<%@ Page Title="Profile" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <h2>Profile</h2>

    Enter Username to see profile info and transaction History:

        <br />

        <asp:TextBox ID="txtEnterUsername" runat="server" CssClass="tb5"></asp:TextBox>




    <asp:RequiredFieldValidator ID="requiredusername1" runat="server" ControlToValidate="txtEnterUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>




    <br />

    <br />

    <asp:Button ID="btnEnter" runat="server" Text="Enter" CssClass="bordereffect" AccessKey="E" ToolTip="Click to show user info" />

        <br />

    <br />





  <h1>  <asp:Label ID="lblProfileInfo" runat="server"></asp:Label></h1>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Class="mydatagrid2" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

        <headerstyle cssclass="header" verticalalign="Bottom" HorizontalAlign="Center" />

<rowstyle cssclass="rows" verticalalign="Top" />

<pagerstyle cssclass="pager" />

        <Fields>

            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />

            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />

            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />

        </Fields>

    </asp:DetailsView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RentalDatabase %>" SelectCommand="SELECT [Username], [Password], [Email], [PhoneNumber] FROM [users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtEnterUsername" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>


        <br />




    <h1>

        <asp:Label ID="lblTransHistory" runat="server"></asp:Label>

        </h1>

        <p></p>
    <asp:GridView ID="GridView1" runat="server" Class="mydatagrid" AllowPaging="True"  AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource3">

        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="CreditCardNumber" HeaderText="CreditCardNumber" SortExpression="CreditCardNumber" />
            <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />
        </Columns>

        <headerstyle cssclass="header" verticalalign="Bottom" HorizontalAlign="Center" />

<rowstyle cssclass="rows" verticalalign="Top" />

<pagerstyle cssclass="pager" />


    </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RentalDatabase %>" SelectCommand="SELECT [OrderID], [Username], [Name], [Email], [PhoneNumber], [CreditCardNumber], [OrderTotal] FROM [Transactions] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtEnterUsername" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>



    </asp:Content>


