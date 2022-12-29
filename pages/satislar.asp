<html>
<head>
<meta charset="utf-8">
<link rel ="stylesheet" href="https://fonts.googleapis.com/css?family=Alata">
<link rel="stylesheet" href="../css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <br>
    <div class="menu">
        
        <ul>
            <li><a href="../index.html">Home</a></li>
            <li><a href="contact.asp">Contact</a></li> 
            <li><a href="galaxy.asp">Stars</a></li>
            <li><a href="order.asp">Order</a></li>
        </ul>
    </div>
<h3><a href="ekle.asp">+Veri Ekle</a></h3>
<br> <br>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open Server.MapPath("satislar.mdb")

set rs=Server.CreateObject("ADODB.recordset")
rs.Open "Select * from satis", conn

Response.Write("<table border='1'>")
Response.Write("<tr>")
for each x in rs.Fields
    Response.Write("<th>")
	Response.Write(x.name)
	Response.Write("</th>")
  next
  Response.Write("<th>Edit</th>")
  Response.Write("</tr>")
dim aytekin  
do until rs.EOF
Response.Write("<tr>")
  for each x in rs.Fields
    if x.name = "TCKimlik" then aytekin = x.value
	Response.Write("<td>")
    Response.Write(x.value & "</td>")
  next
  Response.Write("<td><a href='sil.asp?tc="& aytekin &"'>Sil</a></td>")
  Response.Write("</tr>")
  rs.MoveNext
loop
Response.Write("</table>")  
  
rs.close
conn.close

%>

</body>
</html>