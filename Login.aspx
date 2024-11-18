<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SaurabhCloudServices.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Saurabh Cloud Services || Login </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="LoginAssets/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="LoginAssets/vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="LoginAssets/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="LoginAssets/vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="LoginAssets/vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="LoginAssets/vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="LoginAssets/css/util.css" />
    <link rel="stylesheet" type="text/css" href="LoginAssets/css/main.css" />
    <!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="LoginAssets/images/img-01.png" alt="IMG" />
                    </div>

                    <div class="login100-form validate-form">
                        <span class="login100-form-title">User Login
                        </span>
                        <div runat="server" id="msgBox"></div>
                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <asp:TextBox ID="TxtUserName" runat="server" type="text" name="email" CssClass="input100" placeholder="Username"></asp:TextBox>
                            <%--<input class="input100" type="text" name="email" placeholder="Email">--%>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <asp:TextBox ID="TxtPassword" runat="server" CssClass="input100" type="password" name="pass" placeholder="Password"></asp:TextBox>
                            <%--<input class="input100" type="password" name="pass" placeholder="Password">--%>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="container-login100-form-btn">
                            <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="login100-form-btn" OnClick="LoginButton_Click" />
                            <%--<button class="login100-form-btn">
							Login
						</button>--%>
                        </div>

                        <div class="text-center p-t-12">
                            <span class="txt1">Forgot
                            </span>
                            <a class="txt2" href="#">Username / Password?
                            </a>
                        </div>

                        <div class="text-center p-t-136">
                            <a class="txt2" href="#">Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!--===============================================================================================-->
        <script src="LoginAssets/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="LoginAssets/vendor/bootstrap/js/popper.js"></script>
        <script src="LoginAssets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="LoginAssets/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="LoginAssets/vendor/tilt/tilt.jquery.min.js"></script>
        <script>
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="LoginAssets/js/main.js"></script>

    </form>
</body>
</html>
