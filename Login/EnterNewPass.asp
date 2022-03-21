<%
user=Session.Contents("username")
dim newPass,confirmPass
newPass = Request.form("newPass")
confirmPass = Request.form("confirm")
if newPass = confirmPass then
	dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	email = Session.Contents("email")
	 rs.Open "Table2",con,0,3,2
	 rs.MoveFirst
	 do while NOT rs.EOF
	 	if rs("username") = user then
	 		rs("pass") = newPass
	 		rs.Update
	 		Session("Changed") = "Yes"
	 		Response.Redirect("../signInForm.asp")
	 		exit do
	 	else
	 	rs.MoveNext
	 end if
	loop 
else
Response.write("Both Passwords Dont Match")
end if
%>

