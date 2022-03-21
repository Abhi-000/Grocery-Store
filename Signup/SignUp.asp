<html>
<body>
<%
Session("Exist") = "no"
dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Table2",con,0,3,2
	 username = request.form("username")
	 pass = request.form("pass")
	 Function Hash(HashType, PlainText)
    On Error Resume Next

    With CreateObject("ADODB.Stream")
        .Open
        .CharSet = "Windows-1252"
        .WriteText PlainText
        .Position = 0
        .CharSet = "UTF-8"
        PlainText = .ReadText
        .Close
    End With

    Set UTF8Encoding = CreateObject("System.Text.UTF8Encoding")
    Dim PlainTextToBytes, BytesToHashedBytes, HashedBytesToHex

    PlainTextToBytes = UTF8Encoding.GetBytes_4(PlainText)

    Select Case HashType
        Case "sha1": Set Cryptography = CreateObject("System.Security.Cryptography.SHA1Managed")
    End Select

    Cryptography.Initialize()
    BytesToHashedBytes = Cryptography.ComputeHash_2((PlainTextToBytes))

    For x = 1 To LenB(BytesToHashedBytes)
        HashedBytesToHex = HashedBytesToHex & Right("0" & Hex(AscB(MidB(BytesToHashedBytes, x, 1))), 2)
    Next

    Hash = LCase(HashedBytesToHex)

    If Err.Number <> 0 Then Response.Write(Err.Description)

    On Error GoTo 0
End Function
  pass=Hash("sha1", pass)
	 	 email = Request.form("email")
	 while NOT rs.EOF
	 	if rs("EmailId")= email then
	 	Session("Exist") = "Yes"
	 	Response.redirect("../SignUpForm.asp")
	 else
	 	 rs.MoveNext
	end if
	 wend
	 Session("username")=username
	 Session("EmailId") = email
	 rs.AddNew
	 rs("username")=username
	 rs("pass")=pass
	 rs("EmailId") =  email
	 rs.Update
	 rs.MoveNext
	con.close
	set con=Nothing
	 Response.Redirect("../Security.asp")
	 

	
	 
%>