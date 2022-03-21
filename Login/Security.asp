<html>
<body>
	<form action="SubmitSecurity.asp" method="post">
		<% dim user
		user=Session.Contents("username") %>
  <h1><% Response.write(user) %> Please Enter Security Questions</h1><br>
  These will help us verify your identity incase you forogt your password<br>
<%
dim questions(10)
' dim a
  set con=Server.CreateObject("ADODB.connection")
  con.Provider="Microsoft.Jet.OLEDB.4.0"
  con.Open "C:\\inetpub\wwwroot\Example\Database2.mdb"
  set rs=Server.CreateObject("ADODB.RecordSet")
   rs.Open "Questions",con,0,3,2
   a = Split(rs("SecurityQuestions"),"|",-1)
    for each x in a
     questions(i) = x
     i=i+1
    Next
    dim tempQues
    tempQues = rs("SecurityQuestions")
    rs.AddNew
    rs("SecurityQuestions")=tempQues
    rs.Update
    Response.write(questions(0))%>
    <input type="text" id="ans1" name="ans1"><br><%
    Response.write(questions(1))%>
    <input type="text" id="ans2" name="ans2"><br><%
    Response.write(questions(2))%>
    <input type="text" id="ans3" name="ans3"><br><%
    Response.write(questions(3))%>
    <input type="text" id="ans4" name="ans4"><br><%
    Response.write(questions(4))%>
     <input type="text" id="ans5" name="ans5"><br>
    <form action="SubmitSecurity.asp">
    <input type="submit" value="Submit">
  </form>
 <!-- <input type="text" id=>Question 1</p>
  <input type="text" id="ans1" name="ans1"><br> -->
  <!-- <p id ="q2">Question 2 What was your childhood nickname:
  <input type="text" id="ans2" name="ans2">
  <p id ="q3">Question 3 What is your favourite pet:
  <input type="text" id="ans3" name="ans3"><br>
  <p id ="q4">Question 4 What is your favourite pet:
  <input type="text" id="ans4" name="ans4"><br>
  <p id ="q5">Question 5 What is your Grandfathers name:
  <input type="text" id="ans5" name="ans5"><br> -->
<!--   <input type="submit" value="Submit"> -->
</body>
</html>