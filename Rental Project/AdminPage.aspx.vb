Imports System.Data.SqlClient
Imports System.Data
Partial Class AdminPage
    Inherits System.Web.UI.Page

    Protected Sub btnAddCar_Click(sender As Object, e As EventArgs) Handles btnAddCar.Click
        Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|RentalDatabase.mdf;Integrated Security=True")
        cn.Open()
        Dim cmd As New SqlCommand(("insert into [Inventory]([Car ID],Make,Model,Style,Year,Color,[Horse Power],[Rental Price],Image) values ('" & txtCarID.Text & "','" & txtMake.Text & "','" & txtModel.Text & "','" & txtStyle.Text & "','" & txtYear.Text & "','" & txtColor.Text & "','" & txtHorsePower.Text & "','" & txtRentalPrice.Text & "','" & txtImage.Text & "')"), cn)

        cmd.ExecuteNonQuery()
        cn.Close()

        txtCarID.Text = ""
        txtColor.Text = ""
        txtHorsePower.Text = ""
        txtImage.Text = ""
        txtMake.Text = ""
        txtModel.Text = ""
        txtRentalPrice.Text = ""
        txtStyle.Text = ""
        txtYear.Text = ""

        txtCarID.Focus()
    End Sub

    Protected Sub btnClear1_Click(sender As Object, e As EventArgs) Handles btnClear1.Click
        txtCarID.Text = ""
        txtColor.Text = ""
        txtHorsePower.Text = ""
        txtImage.Text = ""
        txtMake.Text = ""
        txtModel.Text = ""
        txtRentalPrice.Text = ""
        txtStyle.Text = ""
        txtYear.Text = ""

        txtCarID.Focus()

    End Sub
End Class
