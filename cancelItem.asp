<% set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
  set rs1=Server.CreateObject("ADODB.RecordSet")
   rs.Open "AddToCart",con,0,3,2
   email = Session.Contents("EmailId")
   Response.write(email)