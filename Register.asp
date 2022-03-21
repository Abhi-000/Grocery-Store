<%
set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
  set rs1=Server.CreateObject("ADODB.RecordSet")
   rs.Open "Register",con,0,3,2
   fname = REquest.form("fname")
   phone  = REquest.form("phone")
   requirements = REquest.form("requirements")
   rs.AddNew
   rs("Fname") = fname
   rs("PhoneNo") = phone
   rs("requirements") = requirements
   rs.update
   Session("registered") = "yes"
   response.redirect("index.asp")
   %>