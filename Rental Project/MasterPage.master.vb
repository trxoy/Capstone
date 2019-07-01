
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Context.User.IsInRole("Admin")) Then
            lblAdmin.Text = <a href="/AdminPages/Admin.aspx">Admin</a>
        End If
    End Sub

End Class

