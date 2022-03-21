<% 
	Session("Exist") = "nothing"
	dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	set rs1=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Reviews",con,0,3,2
	 rs1.Open "Table2",con,0,3,2
	 email = request.form("email") 
	 name = request.form("name")
	 review = request.form("message")
	 Country = request.form("country")
	 do while not rs1.EOF 
	 	if rs1("EmailId") = email then
	 				Session("Exist") = "Yes"
	 				rs.MoveFirst
	 				rs.AddNew
	 				rs("Country") = Country
	 				rs("Review") = review
	 				rs("EmailId") = email
	 				rs("Username") = name
	 				rs.Update
	 				Response.Redirect("review.asp")
	 				exit do
		 else 
	 		rs1.MoveNext
	 	end if
	loop
	Session("Exist") = "No"
	Response.Redirect("review.asp")
%>