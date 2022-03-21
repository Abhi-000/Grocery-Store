<%
dim splitedProductName
  set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
  set rs1=Server.CreateObject("ADODB.RecordSet")
   rs.Open "AddToCart",con,0,3,2
   rs1.Open "Product",con,0,3,2
   email = Session.Contents("EmailId")
      dim allProductQty(50),indiProductPrice(50),allProduct(50)
   ' itemCancel = Request.form("CancelCupcake")
   index = Request.form("indexCancel")

   ' Session.Contents.Remove("CancelCupCake")
   ' Session.Contents.Remove("indexCancel")
   Response.write("index:"&index)%><br><%
   'Response.write("Product:"&itemCancel)%><br><%
    while not rs.EOF and flag=0
      if email = rs("EmailId") then
  product  = Split(rs("Product"),"|",-1)
   indiQty = Split(rs("qty"),"|",-1)
   indiPrice = Split(rs("IndiPrice"),"|",-1)
   k=0
   j=0
    i=0
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
     for each z in product
        allProduct(i) = z
        i = i+1
        next
      rs("Product") = ""
     rs("qty") = ""
     rs("IndiPrice") = ""
        ' rs("Product") = Replace(rs("Product"),itemCancel&"|","")
        for i=0 to (temp-2)
          if not index-1 = i then
            Response.write("i:"&i)
            rs("Product")  = rs("Product") & allProduct(i) & "|"
            rs("qty") =  rs("qty") & allProductQty(i) & "|"
            rs("IndiPrice") =  rs("IndiPrice") &indiProductPrice(i) & "|"
          else
               while not rs1.EOF and flag= 0
                Response.write("prod"&allProduct(i))
                splitedProductName = Split(rs1("ProductName")," ")
                 if allProduct(i) = splitedProductName(0) then
                  Response.write("heyy")
                  productPrice = rs1("Price")
                  rs("Price") = rs("Price") - (productPrice*allProductQty(i))
                  Response.write("PRICE"&productPrice*allProductQty(i))
                  flag = 1
                 else 
                 rs1.MoveNext
    end if
    wend 
          end if
        next
        Response.write(rs("Product"))%><br><%
        Response.write(rs("qty"))%><br><%
        Response.write(rs("IndiPrice"))%><br><%
        Response.write(rs("Price"))%><br><%
        ' ' Response.write(allProductQty(index)&"|")
        ' Response.write(Replace(rs("qty"),"5|","",,1))
        rs.update 
        flag=1
      else
      rs.MoveNext
      end if
    wend
   Response.redirect("shoping-cart.asp")
%>
    
