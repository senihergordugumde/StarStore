<html>
    <head>
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
                <li><a href="news.html">News</a></li>
                <li><a href="galaxy.html">Stars</a></li>
                <li><a href="order.asp">Order</a></li>
                <li><a style="color: wheat;" href="sign.asp">Admin Panel</a></li>

            </ul>
        </div>

        <br><br><br><br>
        <div class="icerik1">
            <img src="../img/saturn.gif" style="width: 100%; height:100%;">
          
            <table style="height: 55%; width: 100%; background-color: rgba(0, 0, 0, 0.374); position: absolute; top: 34%;">
                <form action="order.asp">
                <tr>
                    <td style="text-align: right; padding-right: 30px;">Your Name:  </td>
                    <td><input type="text" id="fname" name="fname"><br></td>
                </tr>
                <tr>
                    <td style="text-align: right; padding-right: 30px;">Surname:  </td>
                    <td><input type="text"  name="sname"><br></td>
                </tr>
                <tr>
                    <td style="text-align: right; padding-right: 30px;" >Mail: </td>
                    <td><input type="email" id="email" name="email"></td>
                </tr>
                <tr>
                    <td style="text-align: right; padding-right: 30px;">
                        New Home  </td>
                    <td style> 
                        <input size="29px"list="stars" name="stars">
                        <datalist id="stars">
                            
                            <option value="9 Sagittae"></option>
                            <option value="15 Vulpeculae"></option>
                            <option value="Acrux"></option>
                            <option value="Aldebaran"></option>
                            <option value="Alhena"></option>
                            <option value="Alioth"></option>
                            <option value="Alnilam"></option>
                            <option value="Alpheratz"></option>
                            <option value="Alshain"></option>
                            <option value="Altair"></option>
                            <option value="Archernar"></option>
                            <option value="Arcturus"></option>
                            <option value="Aspidiske"></option>
                            <option value="Aspidiske"></option>
                            <option value="Atria"></option>
                            <option value="Bellatrix"></option>
                            <option value="Betelgeuse"></option>
                            <option value="Canopus"></option>
                            <option value="Caph"></option>
                            <option value="Castor A"></option>
                            <option value="Castor"></option>
                            <option value="Delta"></option>
                            <option value="Deneb"></option>
                            <option value="Diphda"></option>
                            <option value="Dschubba"></option>
                            <option value="Dubhe"></option>
                            <option value="Enif"></option>
                            <option value="Eta Sagittae"></option>
                            <option value="Fomalhaut"></option>
                            <option value="Fomalhaut"></option>
                            <option value="Gamma Sagittae"></option>
                            <option value="Gienah"></option>
                            <option value="Lukida"></option>
                            <option value="Markab"></option>
                            <option value="Markeb"></option>
                            <option value="Menkalinan"></option>
                            <option value="Merak"></option>
                            <option value="Miaplacidus"></option>
                            <option value="Mizar"></option>
                            <option value="Muscida"></option>
                            <option value="Nair al Zaurak"></option>
                            <option value="Navi"></option>
                            <option value="Omicron Tauri"></option>
                            <option value="Phecda"></option>
                            <option value="Pi Herculis"></option>
                            <option value="Pollux"></option>
                            <option value="Procyon"></option>
                            <option value="Rasalhague"></option>
                            <option value="Regulus"></option>
                            <option value="Rigel"></option>
                            <option value="Ruchbah"></option>
                            <option value="Sadr"></option>
                            <option  value="Seher Yildizi (Sehere Opsiyonlu)" ></option>
                            <option value="Scheat"></option>
                            <option value="Shedir"></option>
                            <option value="Sheliak"></option>
                            <option value="Sirius"></option>
                            <option value="Spica"></option>
                            <option value="Suhail"></option>
                            <option value="Sulafat"></option>
                            <option value="Tarazed"></option>
                            <option value="Theta Aurigae"></option>
                            <option value="Vega"></option>
                            <option value="Wei"></option>
                            <option value="Zeta"></option>
               
                        
    
                      </select></td>
                </tr>
               <tr>
                    <td>
                       
                    </td>
                    <td> <input style="float: left; padding: 10px 10px 10px 10px;" type="submit"></td>
                </tr>
            </table>
            </form>
        </div>
       
        <br>
        <br>
        <br> 
        <%
        dim conn,name,surname,mail,star,sql
        set conn = Server.CreateObject("ADODB.Connection")
        conn.Provider = "Microsoft.Jet.OLEDB.4.0"
        conn.open Server.MapPath("satislar.mdb")
        


        name =  Request.Querystring("fname")
        surname =  Request.Querystring ("sname")
        mail =  Request.Querystring("email")
        star =  Request.Querystring("stars")

        






        
       
        on error resume next
        sql = "INSERT INTO satis(isim,soyisim,mail,yildiz) values('"&name&"' ,'"&surname&"' ,'"&mail&"' , '"&star&"')"
        
     
     

        conn.Execute(sql)



   
    %>
        
    </body>
</html>