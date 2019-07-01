﻿
Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail
Partial Class SignUp
    Inherits System.Web.UI.Page
    Protected Sub RegisterUser(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim userId As Integer = 0
        Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|RentalDatabase.mdf;Integrated Security=True")


            Using cmd As New SqlCommand("Insert_Users")
                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim())
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim())
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim())
                    cmd.Connection = con
                    con.Open()
                    userId = Convert.ToInt32(cmd.ExecuteScalar())
                    con.Close()
                End Using
            End Using
            Dim messege As String = String.Empty
            Select Case userId
                Case -1
                    messege = "Username already exists."
                Case -2
                    messege = "This email address has already been used before."
                Case Else
                    messege = "Registration has been sucessful! Please check your email tocomplete activation!"
                    SendActivationEmail(userId)
                    Exit Select
            End Select
            ClientScript.RegisterStartupScript([GetType](), "alert",
           (Convert.ToString("alert( ' ") & messege) + " ');", True)
        End Using
    End Sub
    Private Sub SendActivationEmail(userId As Integer)
        Dim activationCode As String = Guid.NewGuid().ToString()
        Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|RentalDatabase.mdf;Integrated Security=True")
            Using cmd As New SqlCommand("INSERT INTO UserActivation VALUES(@UserId,@ActivationCode)")

                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@UserId", userId)
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode)
                    cmd.Connection = con
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                End Using
            End Using
        End Using
        Using mm As New MailMessage("trxoy1@gmail.com", txtEmail.Text)
            mm.Subject = "Account Activation"
            Dim body As String = "Hello " + txtUsername.Text.Trim() + ","
            body += "<br /><br />Thank you for choosing us. Our goal is to make "

            body += "your dreams come true by driving your favorite exotic car."
            body += "<br />Please click the link below to activate your account."
            body += "<br />For security purposes the link will expire in 24 hours."
            body += "<br /><br />Thank you and welcome!"
            body += "<br />-Extraterrestrial Rentals"
            body += "<br /><br /><a href = '" +
        Request.Url.GetLeftPart(UriPartial.Authority) +
        Page.ResolveUrl("~/Activation.aspx?ActivationCode=" & activationCode) + "'> Click here toactivate your account!"

            mm.Body = body
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New System.Net.NetworkCredential()
            NetworkCred.UserName = "trxoy1@gmail.com"
            NetworkCred.Password = "baseball18"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
        End Using
    End Sub
End Class