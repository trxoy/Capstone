Imports System.Data.SqlClient
Imports System.Data
Partial Class Checkout
    Inherits System.Web.UI.Page


    Protected Sub btnCalculateTotal_Click(sender As Object, e As EventArgs) Handles btnCalculateTotal.Click
        lblOrderTotal.Text = (ddlDate2.SelectedValue - ddlDate1.SelectedValue) * lblDailyPrice.Text

    End Sub

    Private Sub Checkout_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblDailyPrice.Text = Request.QueryString().ToString
        Me.lblMonth.Text = DateTime.Now.ToString("MMM")
        Me.lblMonth2.Text = DateTime.Now.ToString("MMM")
    End Sub
    Protected Sub btnSubmitOrder_Click(sender As Object, e As EventArgs) Handles btnSubmitOrder.Click
        Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|RentalDatabase.mdf;Integrated Security=True")
        cn.Open()
            Dim cmd As New SqlCommand(("insert into [Transactions](Name,Email,PhoneNumber,CreditCardNumber,OrderTotal,Username) values ('" & txtName2.Text & "','" & txtEmail2.Text & "','" & txtPhone2.Text & "','" & txtCCNumber.Text & "','" & lblOrderTotal.Text & "','" & txtUsername.Text & "')"), cn)

        cmd.ExecuteNonQuery()
        cn.Close()

        Response.AppendHeader("Refresh", "2;url=OrderSubmitted.aspx")
        ' lblOrderSubmitted.Text = txtName2.Text & "" & "your order has been submitted"
        txtCCDate.Text = ""
        txtCCNumber.Text = ""
        txtCVV.Text = ""
        txtEmail2.Text = ""
        txtName2.Text = ""
        txtPhone2.Text = ""
        txtUsername.Text = ""


        txtName2.Focus()

    End Sub
    Protected Sub btnClear2_Click(sender As Object, e As EventArgs) Handles btnClear2.Click
        txtCCDate.Text = ""
        txtCCNumber.Text = ""
        txtCVV.Text = ""
        txtEmail2.Text = ""
        txtName2.Text = ""
        txtPhone2.Text = ""
        txtUsername.Text = ""


        txtName2.Focus()
    End Sub
End Class
