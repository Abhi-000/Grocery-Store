<%
dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Questions",con,0,3,2
	user=Session.Contents("username")
	email = Session.Contents("EmailId")
	rs.MoveLast
	dim allAns,tempAns
	for i=1 to 5
	tempAns = Request.Form("ans" &i)
	allAns = allAns & tempAns & "|"
	Next
	rs("EmailId") = email
	rs("username") = user
	rs("Answer") = allAns
	rs.Update
	response.redirect("../mailSend.asp")
%>