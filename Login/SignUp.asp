<html>
<body>
<%
dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Table2",con,0,3,2
	 username = request.form("fname")
	 while NOT rs.EOF
	 	if rs("username")= username then
	 		' Response.Write("Hey")
	 	 Response.Redirect("UserExists.html")
	 else
	 	 rs.MoveNext
	end if
	 wend
	 Session("username")=username
	 rs.AddNew
	 rs("username")=request.form("fname")
	 rs("pass")=request.form("lname")
	 rs.Update
	 rs.MoveNext
	con.close
	set con=Nothing
	 Response.Redirect("Security.asp")
	 

	
	 
%>