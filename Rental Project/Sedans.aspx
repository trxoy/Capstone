<%@ Page Title="Sedans" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sedans.aspx.cs" Inherits="Sedans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Sedans</h2>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Car ID" DataSourceID="ObjectDataSource1" Class="mydatagrid" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        	<headerstyle cssclass="header" verticalalign="Bottom" />
	<rowstyle cssclass="rows" verticalalign="Top" />
	<pagerstyle cssclass="pager" />
        <Columns>
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Horse Power" HeaderText="Horse Power" SortExpression="Horse Power" />
            <asp:BoundField DataField="Rental Price" HeaderText="Rental Price" SortExpression="Rental Price" />
                        <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="200" ControlStyle-Height="150" HeaderText="Car Image">
<ControlStyle Height="150px" Width="200px"></ControlStyle>
            </asp:ImageField>
            <asp:CommandField SelectText="Add to Cart" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
          <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBySedan" TypeName="DataSet1TableAdapters.InventoryTableAdapter" UpdateMethod="Update">
              <DeleteParameters>
                  <asp:Parameter Name="Original_Car_ID" Type="Int32" />
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
                  <asp:Parameter Name="Original_Car_ID" Type="Int32" />
              </UpdateParameters>
          </asp:ObjectDataSource>
</asp:Content>

