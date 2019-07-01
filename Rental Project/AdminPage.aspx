<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AdminPage.aspx.vb" Inherits="AdminPage" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Admin Page</h2>
    <h1>Add to Inventory</h1>
    <div class="centerdiv">
    Car ID:
    <asp:TextBox ID="txtCarID" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredcarid" runat="server" ControlToValidate="txtCarID" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Make:
    <asp:TextBox ID="txtMake" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredmake" runat="server" ControlToValidate="txtMake" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Model:
    <asp:TextBox ID="txtModel" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredmodel" runat="server" ControlToValidate="txtModel" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Style:
    <asp:TextBox ID="txtStyle" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredstyle" runat="server" ControlToValidate="txtStyle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    Year:
    <asp:TextBox ID="txtYear" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredyear" runat="server" ControlToValidate="txtYear" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Color:
    <asp:TextBox ID="txtColor" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredcolor" runat="server" ControlToValidate="txtColor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Horse Power:
    <asp:TextBox ID="txtHorsePower" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredhorse" runat="server" ControlToValidate="txtHorsePower" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    Rental Price:
    <asp:TextBox ID="txtRentalPrice" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredrentalprice" runat="server" ControlToValidate="txtRentalPrice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Image:
    <asp:TextBox ID="txtImage" runat="server" CssClass="tb5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="requiredimage" runat="server" ControlToValidate="txtImage" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnAddCar" runat="server" Text="Add Car" Class="bordereffect"/>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear1" runat="server" Text="Clear" Class="bordereffect"/>
    </div>
    <h1>Inventory</h1>
    <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Car ID" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             <asp:BoundField DataField="Car ID" HeaderText="Car ID" ReadOnly="True" SortExpression="Car ID" />
             <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
             <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
             <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
             <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
             <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
             <asp:BoundField DataField="Horse Power" HeaderText="Horse Power" SortExpression="Horse Power" />
             <asp:BoundField DataField="Rental Price" HeaderText="Rental Price" SortExpression="Rental Price" />
             <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
         </Columns>
         <headerstyle cssclass="header" verticalalign="Bottom" HorizontalAlign="Center" />

<rowstyle cssclass="rows" verticalalign="Top" />

<pagerstyle cssclass="pager" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RentalDatabase %>" DeleteCommand="DELETE FROM [Inventory] WHERE [Car ID] = @Car_ID" InsertCommand="INSERT INTO [Inventory] ([Car ID], [Make], [Model], [Style], [Year], [Color], [Horse Power], [Rental Price], [Image]) VALUES (@Car_ID, @Make, @Model, @Style, @Year, @Color, @Horse_Power, @Rental_Price, @Image)" SelectCommand="SELECT * FROM [Inventory]" UpdateCommand="UPDATE [Inventory] SET [Make] = @Make, [Model] = @Model, [Style] = @Style, [Year] = @Year, [Color] = @Color, [Horse Power] = @Horse_Power, [Rental Price] = @Rental_Price, [Image] = @Image WHERE [Car ID] = @Car_ID">
        <DeleteParameters>
            <asp:Parameter Name="Car_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Car_ID" Type="Int32" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Style" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Horse_Power" Type="Decimal" />
            <asp:Parameter Name="Rental_Price" Type="Decimal" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Style" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Horse_Power" Type="Decimal" />
            <asp:Parameter Name="Rental_Price" Type="Decimal" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Car_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h1>Edit Profile Info</h1>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2" Class="mydatagrid" AllowPaging="True" >
        	<headerstyle cssclass="header" verticalalign="Bottom" />
	<rowstyle cssclass="rows" verticalalign="Top" />
	<pagerstyle cssclass="pager" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RentalDatabase %>" DeleteCommand="DELETE FROM [users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [users] ([Username], [Password], [Email], [RoleId], [PhoneNumber]) VALUES (@Username, @Password, @Email, @RoleId, @PhoneNumber)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [Username] = @Username, [Password] = @Password, [Email] = @Email, [RoleId] = @RoleId, [PhoneNumber] = @PhoneNumber WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="RoleId" Type="Int32" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="RoleId" Type="Int32" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <h1>&nbsp;</h1>
    <h1>Transactions Report</h1>
   <div class="centerdiv2">
     <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Consolas" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="755px">
        <LocalReport ReportPath="TransactionReport2.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="Transactions2" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="RentalDatabaseDataSetTableAdapters.TransactionsTableAdapter"></asp:ObjectDataSource>
    </div>
       <br />
    <br />
    </asp:Content>

