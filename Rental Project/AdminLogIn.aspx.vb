
Partial Class AdminLogIn
    Inherits System.Web.UI.Page

    Protected Sub btnAdminLogIn_Click(sender As Object, e As EventArgs) Handles btnAdminLogIn.Click
        If txtPassword.Text = "12345" Then
            Response.Redirect("AdminPage.aspx?")
        End If
    End Sub
End Class
