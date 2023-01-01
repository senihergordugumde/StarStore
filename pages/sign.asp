<html>
    <head>
        <link rel ="stylesheet" href="https://fonts.googleapis.com/css?family=Alata">
        <link rel="stylesheet" href="../css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="import" href="loginpanel.asp">
    </head>
    <body>
        <%
        set conn=Server.CreateObject("ADODB.Connection")
        conn.Provider="Microsoft.Jet.OLEDB.4.0"
        conn.Open Server.MapPath("users.mdb")
        
        set rs=Server.CreateObject("ADODB.recordset")
        rs.Open "Select * from id", conn
        
        dim name2, pass2, isCorrect
        name2 = Request.Querystring("fname")
        pass2 = Request.Querystring("password")
        
        isCorrect = False
       %>
    
    </body>
        <br>
        
        <div class="menu">
          
            <ul>
                <li><a href="../index.html">Home</a></li>
                <li><a href="news.html">News</a></li>
                <li><a href="galaxy.html">Stars</a></li>
                <li><a href="order.asp">Order</a></li>
                <li><a style="color: wheat;" href="sign.asp">Admin Panel</a></li>
                <% 
                 
                       
                        do until rs.EOF
                        
                        User = rs.Fields("kullanici")
                        Pass = rs.Fields("sifre")
                        if User = name2 and Pass = pass2  then
                
                        Response.Write("<li>")
                        Response.Write("<a style='color: wheat;''>")
                        Response.Write(name2)
                        Response.Write("</a>")

                        Response.redirect("satislar.asp")
                    
                    
                        
                    End IF
                
                    
                    rs.MoveNext
                loop
                rs.close
                conn.close
                
                
                
             
           
           
             %>
              
            </ul>
        </div>

        <br><br><br><br>

       <form target="_blank" action="sign.asp"> 
        <table style="padding: 100px 41%; height: 40%;">
            <tr> <td colspan="3"> <% if User <> name2 or Pass <> pass2  then  Response.Write("<a style='color: rgb(255, 0, 0); text-align: center;'>user: emir  password: 1234</a>")%></td></tr> 
            <tr>
               
                <td style="text-align: right; padding-right: 30px;">Username  </td>
                <td><input type="text" id="fname" name="fname"><br></td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 30px;">Password  </td>
                <td><input type="password" id="fname" name="password"><br></td>
            </tr>

            <tr>  <td> <input style="float: left; padding: 10px 10px 10px 10px;" type="submit"></td></tr>
        
        </table></form>
        <br>
        <br>
        <br> 
        
       
    </body>
</html>