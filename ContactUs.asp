<% 
	Session("Exist") = "nothing"
	dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	set rs1=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Contact",con,0,3,2
	 email = request.form("email") 
	 name = request.form("name")
	 message = request.form("message")
	 				rs.AddNew
	 				rs("Message") = message
	 				rs("EmailId") = email
	 				rs("Username") = name
	 				rs.Update
	 				Session("contact") = "yes"
	 				Response.Redirect("contact.asp")
%>