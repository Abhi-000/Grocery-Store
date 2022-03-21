<html>
<body>
 <% dim con,rs,username,pass
  set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
   rs.Open "Table2",con,0,3,2 
   dim User,email
   User= request.form("fname")
   email = request.form("email")
  while NOT rs.EOF
    if rs("EmailId")= email then
        Session("username")=rs("username")
        Session("email")  = email
       '' Session("Visited") = "no"
      Response.redirect("../EnterSecurity.asp")
    else 
    rs.MoveNext
  end if 
  wend
  Session("Exists") = "no"
  Response.redirect("../Username.asp")
%></body>
</html>