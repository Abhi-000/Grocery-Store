<%set con=Server.CreateObject("ADODB.connection")
con.Provider="Microsoft.Jet.OLEDB.4.0"
con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
set rs=Server.CreateObject("ADODB.RecordSet")
set ls=Server.CreateObject("ADODB.RecordSet")
set rs1=Server.CreateObject("ADODB.RecordSet")
rs.Open "AddToCart",con,0,3,2
ls.Open "Orders",con,0,3,2
rs1.Open "Table2",con,0,3,2
dim found
found = 0
email =Session.contents("EmailId")
while not rs.EOF and flag=0
    if email = rs("EmailId") then
    	response.write(rs("Product"))
    	TotalPrice = rs("Price")
    	Product = rs("Product")
    	qty = rs("qty")
    	IndiPrice = rs("IndiPrice")            
    	rs("Price") = ""
    	 rs("Product") = ""
    	 rs("qty") = ""
    	 rs("IndiPrice")=""
         rs("EmailId") = ""
    	 rs.Update
    	flag = 1
    else
    rs.moveNext
    end if
wend
while not rs1.EOF 
    if email = rs1("EmailId") then
        rs1("Wallet") = rs1("Wallet") - TotalPrice
        rs1.Update
        rs1.moveNext
    else
    rs1.moveNext
    end if
wend
while not ls.EOF
    if email = ls("EmailId") then
        found =1
        ls("Product") = ls("Product") & Product
        ls("Price") = ls("Price") &TotalPrice
        ls("qty") =  ls("qty") &qty
        ls("IndiPrice") =  ls("IndiPrice") &IndiPrice
        ls.moveNext
    else
    ls.moveNext
end if
wend
if found = 0 then
ls.addnew
ls("EmailId") = email
ls("Product") = Product
ls("Price") = TotalPrice
ls("qty") = qty
ls("IndiPrice") = IndiPrice
ls.Update
end if
Session("Ordered") = "true"
Set oMail = CreateObject("CDO.Message") 

        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "abhishekEcommCake@gmail.com"
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "abhiCake"
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
        oMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
        oMail.From = "abhishekEcommCake@gmail.com"
        oMail.To = email
        oMail.Subject = "Cake Website"
        oMail.CreateMHTMLBody "http://localhost/WtProject/cake/cake/plain-text/orderPlaced.asp"
    
        oMail.Configuration.Fields.Update
        oMail.Send 
            Set oMail = Nothing 
            Set oMailConfig = Nothing
Response.redirect("shoping-cart.asp")
Response.write(email)%><br><%
Response.write(Product)%><br><%
response.write(TotalPrice)%><br><%
response.write(qty)%><br><%
response.write(IndiPrice)%><br><%
%>