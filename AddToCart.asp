<%
Session("added") = "yes"
	set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
  set rs1=Server.CreateObject("ADODB.RecordSet")
   rs.Open "AddToCart",con,0,3,2
   rs1.Open "Product",con,0,3,2
   email = Session.Contents("EmailId")
   dim flag,totalPrice,productPrice,oldPrice,product,ProductName,qty
   dim allProduct(50),allqty(50),splitedProductName
   dim i
   dim repeat,qtySelected
   qtySelected = request.form("qtySelected")
   response.write(qtySelected)
   flag = 0
   while not rs1.EOF and flag= 0
      splitedProductName = Split(rs1("ProductName")," ")
   	if Session.Contents("Cupcake") = splitedProductName(0) then
   		productPrice = rs1("Price")
   		flag = 1
   		else rs1.MoveNext
   	end if
   	wend 
   	flag=0
   	' for each x in Product
   	' 	Response.write(x)
   	' 	if not i=0 then
   	' 		Response.write("similar")
   	' 		allProduct(i) = x
   	' 		if allProduct(i-1) = allProduct(i) then

   	' 		else
   	' 		allProduct(i) = x
   	' 	end if
   	' 	else
   	' 	Response.write("Not similar")
   	' 		end if
   	' 	i= i+1
   	' next
   

  
   	' response.write(i)
   	' ProductName  = Split(allProduct(i),"X",-1)
   	' for each x in ProductName
   	' 	response.write("hey")
   	' 		IndividualProduct(i) = x
   	' 		Response.WRITE(IndividualProduct)
   	' 		i=i+1
   	' next
   	' i=0
   while not rs.EOF and flag=0
   		if email = rs("EmailId") then
   			 	i=0
   			 	repeat = -1
   			 	flag= 1
               dim tempProduct
   			 	product  = Split(rs("Product"),"|",-1)
   			 		for each x in product
                     tempProduct = tempProduct + 1
   						allProduct(i) = x
   						if Session.Contents("Cupcake") = allProduct(i) then
   							repeat = i
   						end if
   						i=i+1
   					next
   					i=0
   					dim temp
   					temp = 0
   					qty = Split(rs("qty"),"|",-1)
   					for each x in qty
   						temp = temp+1
   						allqty(i) = x
   						if i = repeat then
   						allqty(i) = cint(allqty(i)) + qtySelected
   							Response.write("qty"&allqty(i))%><br><%
   					end if
   						i=i+1
   					next
                  dim j
                  j=0
                  dim indiPrice
                  dim allIndiPrice(50)
                  dim tempIndi
                  indiPrice = Split(rs("IndiPrice"),"|",-1)
                  for each x in indiPrice
                     tempIndi = tempIndi+1
                     allIndiPrice(j) = x
                     if j = repeat then
                     allIndiPrice(j) = cint(allIndiPrice(j)) + (cint(productPrice)*qtySelected)
                        Response.write("allIndiPrice"&allIndiPrice(j))%><br><%
                  end if
                     j=j+1
                  next
   					rs("qty") = ""
   					for i=0 to (temp-2)
   						Response.write(allqty(i) &"|")%><br><%
   						rs("qty") =  rs("qty") &allqty(i) & "|"
   						rs.Update
   					next
                  rs("IndiPrice") = ""
                  for i=0 to (tempIndi-2)
                     Response.write(allIndiPrice(i) &"|")%><br><%
                     rs("IndiPrice") =  rs("IndiPrice") &allIndiPrice(i) & "|"
                     rs.Update
                  next
   					if repeat = -1 then
   					rs("Product") = rs("Product")&Session.Contents("Cupcake") &"|"
   					rs("qty") = rs("qty") & qtySelected&"|"
                  rs("IndiPrice") = rs("IndiPrice") & (productPrice*qtySelected) & "|"
                   Session("Items") = cint(tempProduct) + 1
                  response.write("tempProduct:"&Session.Contents("Items"))
   					rs.Update	
   					end if  		
   					rs("Price") = rs("Price") + qtySelected * productPrice
   					response.write("price:"&rs("Price"))%><br><%
   					rs.update
   					Response.redirect("shoping-cart.asp")
   		else
   		rs.MoveNext
   		end if 
   wend
   if flag = 0 or rs.EOF then
      response.write("helo")
   	rs.AddNew
   	rs("EmailId") = email
   	rs("Product") = Session.Contents("Cupcake") & "|"
   	rs("Price") = productPrice * qtySelected
      rs("IndiPrice") = productPrice * qtySelected & "|"
      rs("qty") = rs("qty") & qtySelected&"|"
      Session("Items") = 1
      rs.Update
   	Response.redirect("shoping-cart.asp")
   	
   end if

%>	