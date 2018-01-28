<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="FelbergsSite_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
     <div>
    <!-- Navbar Starts---------------------->
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class ="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Main.aspx"><span><img alt="Logo" src="images/FelbergsLogo.png"height="30" width="50"/></span>FelBergs</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                       
                        <li><a href="Main.aspx">Browse</a></li>
                        <li class="active"><a href="Login.aspx">Login</a></li>
                        <li><a href="#">Cart</a></li>
                        <li><a href="#">Events</a></li>
                            <li class="dropdown">
                                <a href="#" class ="dropdown-toggle" data-toggle="dropdown">Platform<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Platforms:</li>
                                    <li><a href="#">PC</a></li>
                                    <li><a href="#">PS4</a></li>
                                    <li><a href="#">Xbox360</a></li>
                                    <li><a href="#">PS3</a></li> 
                                </ul>                            
                            </li>
                          <li class="dropdown">
                                <a href="#" class ="dropdown-toggle" data-toggle="dropdown">Genre<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Genres:</li>
                                    <li><a href="#">MMORPG</a></li>
                                    <li><a href="#">Shooter</a></li>
                                    <li><a href="#">RPG</a></li>
                                    <li><a href="#">Strategy</a></li>
                                    <li><a href="#">Sports</a></li>
                                    <li><a href="#">Survival</a></li> 
                                </ul>                            
                            </li>
                        <li><a href="#">Search: <asp:TextBox ID="tbSearch" runat="server" ></asp:TextBox></a></li>
                    </ul>
                </div>
            </div>
        </div>
    <!-- End of Navbar ---------------------->  
    </div>
        <!-- Register start ------------------------>
        <div class="center-page">
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbUsername" runat="server" Class="form-control"></asp:TextBox>
            </div>
            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbPassword" runat="server" Class="form-control"></asp:TextBox>
            </div>
            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" Class="form-control"></asp:TextBox>
            </div>         
            <div class="col-xs-11 space-vert">
            
             <asp:Button ID="btnRegister" runat="server" Text="Register" Class="btn btn-success" onclick="btnRegister_Click"/>
            
             


           
            </div>         
        </div> 
        <!-- Register end ------------------------>
    </form>
</body>
</html>
