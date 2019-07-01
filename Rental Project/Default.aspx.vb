
Partial Class _Default
    Inherits System.Web.UI.Page




    Protected Sub SignUp_Click(sender As Object, e As EventArgs) Handles SignUp.Click
        Response.Redirect("http://localhost:8469/SignUp.aspx")
    End Sub
    Protected Sub Login_Click(sender As Object, e As EventArgs) Handles Login.Click
        Response.Redirect("http://localhost:8469/Login.aspx")
    End Sub
    Protected Sub AboutUs_Click(sender As Object, e As EventArgs) Handles AboutUs.Click
        Response.Redirect("http://localhost:8469/AboutUs.aspx")
    End Sub
End Class
