<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="PowerPlus_v1.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="css/style1.css"/>
    <title>Power Plus</title>
    <%--<link href="img/taxi.png" rel="icon"/>--%>
    <%--<link href="img/apple-touch-icon.png" rel="apple-touch-icon"/>--%>
</head>
<body>
    <form id="form1" runat="server">
       <div class="user">
        <header class="user__header">
            <%--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />--%>
            <%--<h1 class="user__title">Request order</h1>--%>
        </header>
           <form class="form">
               <div class="form__group">
                   <input id="emailINP" runat="server" type="email" placeholder="الإيميل" class="form__input" />
               </div>
               <div class="form__group">
                   <input id="passwordINP" runat="server" type="password" placeholder="كلمة السر" class="form__input" />
               </div>
               <asp:Button class="btn" style="margin-bottom:2px;margin-top:2px" runat="server" ID="signIn" runat="server" Text="دخول" OnClick="signIn_Click" />
               <asp:Button class="btn" runat="server" ID="signUp" runat="server" Text="مستخدم جديد" OnClick="signUp_Click" />
           </form>
    </div>
    <script>
        //var d = Date(Date.now());

        //// Converting the number of millisecond in date string
        //a = d.toString().substring(4, 24);
        //document.getElementById('date').value = a;
        //function btnClick() {
            //document.getElementById("name").textContent = document.getElementById("fullName").textContent;
            //document.getElementById("email").textContent = document.getElementById("email1").textContent;
            //document.getElementById("address").textContent = document.getElementById("address1").textContent;
            //document.getElementById("book").textContent = document.getElementById("numberBook").textContent;
            //document.getElementById("phone").textContent = document.getElementById("phoneNumber").textContent;
            //document.getElementById("type").textContent = document.getElementById("carType").textContent;
            //document.getElementById("board").textContent = document.getElementById("boardNumber").textContent;
            //document.getElementById("model").textContent = document.getElementById("carModel").textContent;
            //var storage = document.getElementById("fullName").value;
            //localStorage.setItem("storage", storage);
            //var storage1 = document.getElementById("email1").value;
            //localStorage.setItem("storage1", storage1);
            //var storage2 = document.getElementById("address1").value;
            //localStorage.setItem("storage2", storage2);
            //var storage3 = document.getElementById("date").value;
            //localStorage.setItem("storage3", storage3);
            //var storage4 = document.getElementById("phoneNumber").value;
            //localStorage.setItem("storage4", storage4);
            //var storage5 = document.getElementById("carType").value;
            //localStorage.setItem("storage5", storage5);
            //var storage6 = document.getElementById("boardNumber").value;
            //localStorage.setItem("storage6", storage6);
            //var storage7 = document.getElementById("carModel").value;
            //localStorage.setItem("storage7", storage7);
            //window.open("../printOrder.html", "_self");

        //}
    </script>

    <script src="js/index.js"></script>
    </form>
</body>
</html>
