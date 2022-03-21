<%
dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database1.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Table2",con,0,3,2
	dim email
	dim allEmails(20)
	dim i
	i=0
	while not rs.EOF 
		if rs("Subscribed") = "Yes" then
			allEmails(i) = rs("EmailId")
			i=i+1
			rs.MoveNext
		else
		rs.MoveNext
	end if
	wend
Set oMail = CreateObject("CDO.Message") 
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "abhishekEcommCake@gmail.com"
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "abhiCake"
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
		oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
		for j=0 to i-1
		oMail.From = "abhishekEcommCake@gmail.com"
		response.write(allEmails(j))
		oMail.To = allEmails(j)
		oMail.Subject = "Cake Website"
		oMail.CreateMHTMLBody "http://localhost/WtProject/cake/cake/plain-text/NewItems.asp"
	
		oMail.Configuration.Fields.Update
		oMail.Send 
				next
		response.redirect("signInForm.asp")
	
			Set oMail = Nothing 
			Set oMailConfig = Nothing
%>