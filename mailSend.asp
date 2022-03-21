<%
dim email
email = Session.Contents("EmailId")
user =  (Session.Contents("username"))
Set oMail = CreateObject("CDO.Message") 

		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "abhishekEcommCake@gmail.com"
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "abhiCake"
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
		oMail.From = "abhishekEcommCake@gmail.com"
		oMail.To = email
		oMail.Subject = "Cake Website"
		oMail.CreateMHTMLBody "http://localhost/WtProject/cake/grocery/plain-text/welcome.asp"
	
		oMail.Configuration.Fields.Update
		oMail.Send 
		response.redirect("signInForm.asp")
	
			Set oMail = Nothing 
			Set oMailConfig = Nothing
%>