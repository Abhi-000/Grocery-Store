<%
set con=Server.CreateObject("ADODB.connection")
 con.Provider="Microsoft.Jet.OLEDB.4.0"
con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
set rs=Server.CreateObject("ADODB.RecordSet")
 rs.Open "Table2",con,0,3,2
 email = Request.form("email")
 dim flag
 flag = 0
 while not rs.EOF
 	if email = rs("EmailId") then
 		flag = 1
 		rs("Subscribed") = "Yes"
 		rs.movenext
 	else
	 	rs.movenext
 	end if
 wend
 if flag =1 then
 	Session("existsSub") = "Yes"
 	else
 	Session("existsSub") = "No"
 end if
 response.redirect("index.asp")
%>