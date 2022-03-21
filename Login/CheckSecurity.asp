<%
dim con,rs,username,pass
	set con=Server.CreateObject("ADODB.connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
	set rs=Server.CreateObject("ADODB.RecordSet")
	 rs.Open "Questions",con,0,3,2
	 dim i,flag,bool
	 flag=0
	 Session("Answer") = "correct"
	 user=Session.Contents("username")
	 email = Session.Contents("email")
	 Session("Visited") = "yes"
	 do while NOT rs.EOF
	 	if rs("EmailId")=email then
	 		flag=1
	 		exit do
	 	else 
	 		rs.MoveNext
	 	end if 
	 loop 
	 if flag = 1 then
	 	Response.write("hey")
	 	ans = Split(rs("Answer"),"|",-1)
	 	 i =  1
	 	for each  x in ans
	 		tempRn = Session.Contents("RN"&i)
	 		if ans(tempRn) = request.form("ans"&i) then
	 			Response.write(ans(tempRn))%> <br><%
	 			Response.write(request.form("ans"&i))%> <br><%
	 			flag = 1
	 			if flag =1 and i=4 then
	 				Response.Redirect("../NewPassword.asp")
	 			end if
	 		else
	 		Response.write("wrong")
	 			flag =0 
	 			Response.write("else")
	 			Session("Answer") = "wrong"
	 			Response.Redirect("../EnterSecurity.asp")
	 		end if
	 		i = i+1
	 		' if x = request.form("ans" & i) then
	 			
	 		' else
	 		' 	bool=0
	 			' Response.Redirect("UserExists.html") 

	 		Next
	 	end if
	 	if flag =1 then
	 		Response.Redirect("../NewPassword.asp")
	 	end if
	 ' if bool = 0 then
		' 	Response.Redirect("UserExists.html")
		' end if
	 ' 	if bool=1 then
	 ' 		Response.Redirect("NewPassword.asp")
		' end  if 

' else 
' Response.Redirect("UserNotExists.html")
' end if
	 %>