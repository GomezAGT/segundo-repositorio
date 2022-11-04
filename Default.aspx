<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tienda.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>PRUEBA TECNICA</title>
    <style type="text/css">
    body{
        background-image: url(images\\background.jpeg);
        background-attachment: fixed;
        background-size: cover;
    }
    .cl {
        height: 100vh;
        width: 100%;
    }
    .wsdl {
        width: 100%;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
    }
    .db{
        background-color: rgb(255 255 255 / 0.80);
    }
    .bgm{
        background-color: #F8D7DA;
    }
    .btna {
        color: white;
        height: 50px;
        border: none;
        border-radius: 4px;
        outline: none;
    }
    .btns {
        background-color: #357E6F;
    }
    .btns:hover {
        background-color: #006F52;
        transition: all 0.8s;
    }
    .pl {
        color: #ffffff;
        background: rgb(36 59 85 / 0.80);
    }
    .pls {
        background-image: url(images\\cart.png);
        background-size: 60%;
        background-repeat: no-repeat;
        background-position: center;
        opacity: 20%;
    }
    .ct{
        color: gray;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="g-3 needs-validation" novalidate="novalidate">
        <div class="container-lg">
        <div class="cl d-flex align-items-center justify-content-center">
            <div class="h-75 w-100 wsdl db">
                <div class="d-flex h-100 flex-lg-row flex-column">
                    <div class="pl flex-lg-fill">
                        <div class="pls w-100 h-100 text-center"></div>
                    </div>
                    <div class="h-100 flex-fill px-5 py-5">
                        <div class="db h-100 mb-0 w-auto bg-transparent">
                        <div class="text-center py-4"><img src="images/logo.png"; style="width: 150px;" alt="logo"/>
                        <h1 class="text-center mt-4 ct">BIENVENIDO</h1>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="input-group text-center">
                                <span class="input-group-text bg-white" id="basic-addon1"> <img src="images/user.png"; style="width: 25px;" alt="logo"/></span>
                                <input type="text" class="form-control" id="user" runat="server" placeholder="User" required="required" autocomplete="off"/>
                                <div class="valid-feedback">Looks Good!</div>
                                <div class="invalid-feedback">Required Field!</div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4 justify-content-center">
                            <div class="col-lg-7">
                                <div class="input-group text-center">
                                <span class="input-group-text bg-white" id="basic-addon2"><img src="images/lock.png"; class="bg-transparent" style="width: 25px;" alt="logo"/></span>
                                <input type="text" class="form-control" id="password" runat="server" placeholder="Password" required="required" autocomplete="off"/>
                                <div class="valid-feedback">Looks Good!</div>
                                <div class="invalid-feedback">Required Field!</div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-5 justify-content-center">
                            <div class="col-lg-7">
                                <asp:Button ID="login" runat="server" CssClass="l text-white btna btns w-100" Text="LOG IN" OnClick="login_Click" />
                            </div>

                        </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>    
    </form>
    <script type="text/javascript">
        (() => {
            'use strict'
            const forms = document.querySelectorAll('.needs-validation')
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')

                }, false)
            })
        })()
    </script>
</body>
</html>
