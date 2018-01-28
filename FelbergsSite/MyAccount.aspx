<!--
    Team: FelBergs
    -Jordan, Cj, Dan

    Things to do:
    -Impliment CJ's database  
    -Validation's  
    -Razer code

    Note: Login.aspx is standalone currently until database is attached.
    -->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>MyAccount</title>

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
                    <a class="navbar-brand" href="Main.aspx"><span><img alt="Logo" src="images/FelbergsLogo.png"height="35" width="40" /></span>FelBergs</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li><a href="Main.aspx">Browse</a></li>
                        <li class ="active"><a href="MyAccount.aspx">My Account</a></li>
                        <li><a href="Cart.aspx">Cart</a></li>
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
        <!-- MyAccount Details Starts-------------------->
        <div class="myaccount-header">
            <h1>Your Account</h1>
        </div>
        <div class="myaccount-details">
        
            <h2>Orders</h2>
            <p>See & Modify orders</p>
            <!-- all links are currently not working-->
                 <div class="myaccount-options">
                     <asp:Button ID="btnOrders" runat="server" Text="Your Orders   > " Class="btn btn-success" /><br /><br />
                     <a href="#">View archived orders</a>
                 </div>
            <hr class="hr" />
            <h2>Payment</h2>
            <p>Credit card & Gift cards</p>
                 <div class="myaccount-options">
                     <a href="#">Add Credit Card</a><br /><br />
                     <a href="#">Add Paypal</a><br /><br />
                     <a href="#">Add Gift Card</a><br /><br />
                 </div>        
            <hr class="hr" />      
            <h2>Settings</h2>
            <p>Manage Account Information</p>
                 <div class="myaccount-options">
                     <a href="#">Change Password</a>
                 </div>
            <hr class="hr" />
        </div>
        <!-- MyAccount Details Ends-------------------->
    
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
