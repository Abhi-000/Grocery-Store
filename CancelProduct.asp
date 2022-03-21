<%
	set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
  set rs1=Server.CreateObject("ADODB.RecordSet")
   rs.Open "AddToCart",con,0,3,2
   email = Session.Contents("EmailId")
      dim allProductQty(50),indiProductPrice(50)
   itemCancel = Request.form("CancelCupcake")
   index = Request.form("indexCancel")
   ' Session.Contents.Remove("CancelCupCake")
   ' Session.Contents.Remove("indexCancel")
   Response.write("index:"&index)%><br><%
   Response.write("Product:"&itemCancel)%><br><%
   indiQty = Split(rs("qty"),"|",-1)
   indiPrice = Split(rs("IndiPrice"),"|",-1)
   k=0
   j=0
   temp = 0
   for each x in indiQty
   	temp = temp +1
        allProductQty(k) = x
        k = k+1
     next 
     for each a in indiPrice
        indiProductPrice(j) = a
        j =j+1
     next 
     i=0
     rs("qty") = ""
     rs("IndiPrice") = ""
    while not rs.EOF and flag=0
   		if email = rs("EmailId") then
   			rs("Product") = Replace(rs("Product"),itemCancel&"|","")
   			for i=0 to (temp-2)
   				Response.write(index)
   				if not index-1 = i then
   					rs("qty") =  rs("qty") & allProductQty(i) & "|"
   					 rs("IndiPrice") =  rs("IndiPrice") &indiProductPrice(i) & "|"
   				end if
   			next
   			Response.write(Replace(rs("Product"),itemCancel&"|",""))%><br><%
   			Response.write(rs("qty"))%><br><%
   			Response.write(rs("IndiPrice"))%><br><%
   			' ' Response.write(allProductQty(index)&"|")
   			' Response.write(Replace(rs("qty"),"5|","",,1))
   			 ' rs.update
   			flag=1
   		else
   		rs.MoveNext
   		end if
   	wend
   	'Response.redirect("shoping-cart.asp")
%>
    
