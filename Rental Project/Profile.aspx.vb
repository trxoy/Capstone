
Partial Class Profile
    Inherits System.Web.UI.Page

    Protected Sub btnEnter_Click(sender As Object, e As EventArgs) Handles btnEnter.Click
        lblProfileInfo.Text = "Profile Info"
        lblTransHistory.Text = "Transaction History"
    End Sub
End Class
