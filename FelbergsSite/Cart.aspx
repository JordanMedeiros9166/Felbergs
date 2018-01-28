<!--
    Team: FelBergs
    -Jordan, Cj, Dan

    Things to do:
    -Impliment CJ's database  
    -Validation's  
    -Razer code

    Note: Login.aspx is standalone currently until database is attached.
    -->
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="FelbergsSite_Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cart</title>

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
                    <a class="navbar-brand" href="Main.aspx"><span><img alt="Logo" src="images/FelbergsLogo.png"height="35" width="40" /></span>FelBergs</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li><a href="Main.aspx">Browse</a></li>
                        <li><a href="MyAccount.aspx">My Account</a></li>
                        <li class ="active"><a href="Cart.aspx">Cart</a></li>
                        <li><a href="Events.aspx">Events</a></li>
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
         <!-- Navbar Ends---------------------->
    </div>
        <!-- Sidebar Starts------------------->
    <div class="display-sidebar">
        <h1>New Release!</h1>
        <!--Image of featured new release-->
        <img class="sidebar-image-center"src="images/WarcraftTemplate.jpg" />
        <!--description-->
        <p class="col-xs-11 space-vert" ><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</b></p>
        <div>
            <!--Rating system implimentation here-->
        </div>
        <div class="sidebar-pad-price">
            <h1>
                <!--Price from database-->
                <!-- filler for now-->
                $29.99
            </h1>

        </div>
        <div class="sidebar-buttons">
             <div class="col-xs-11 space-vert">
                 <!--buy now button-->
                 <asp:Button ID="btnBuyNow" runat="server" Text="Buy Now" Class="btn btn-success" />
                 <!--Add to car button-->
                 <asp:Button ID="btnAddCart" runat="server" Text="Add to Cart" Class="btn btn-success" />
             </div>           
        </div>
    </div>  
         <!-- Sidebar Ends------------------->    
        
       <!-- Cart Starts---------------------->  
        <div class="game-pad">
            <h1>Your cart:</h1>                    
        </div>
           <div class="myaccount-details">
            <span style="font-size:medium">Item</span>
            <span style="font-size:medium; padding-left:400px">Qty</span>
            <span style="font-size:medium; padding-left:80px">Price</span>
            <span style="font-size:medium; padding-left:80px">Remove</span>
            <hr class="hr" />   
            <!--Razer engine foreach item--->
            <p>
                <!-- currently hardcoded, need database attachment/ razer engine -->
                <!-- Possibly change to a table instead-->
                <span style="font-size:medium">World of Warcraft: Legion</span>
                <span style="font-size:medium; padding-left:265px">4</span>
                <span style="font-size:medium; padding-left:80px">29.99</span>
                <a href="#"><span style="font-size:medium; padding-left:80px">Remove</span></a>                 
            </p>
            <hr class="hr" /> 
            <span style="font-size:x-large; float:left;">Total:</span>
            <span style="font-size:large; padding-left:470px">$243.24</span><!--Placeholder for now--- total price---->
        </div>
         <!-- Cart Ends---------------------->  

    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
