<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyGames.aspx.cs" Inherits="FelbergsSite_ModifyGames" %>

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

        <!-- Toolbox/Family friends Sidebar Starts --------------->
        <div class="display-toolbox">
            <div class="toolbox-options">             
                <asp:PlaceHolder ID="ToolboxSwitch" runat="server" />                
            </div>      
        </div>  
        <!-- Toolbox/Family friends Sidebar Ends --------------->  

        <!-- ADD/UPDATE/DELETE GAME ------------->
        <div class="center-page-details" >       
                <h1 style="padding-top:50px; ">Add Game:</h1>    
            <div class="col-xs-12">                           
                <label>Game Name: </label><asp:TextBox ID="tbGameName" runat="server" Class="form-control"></asp:TextBox> 
                <label>Game Genre: </label><asp:TextBox ID="tbGameGenre" runat="server" Class="form-control"></asp:TextBox>
                 <!-- pull data of platforms from database --->
                <label>Game Platform: </label><asp:DropDownList ID="dpGamePlatform" runat="server" Class="form-control"></asp:DropDownList> 
                <label>Game Price: </label><asp:TextBox ID="tbGamePrice" runat="server" Class="form-control"></asp:TextBox>
                <label>Game Image: </label><asp:Image ID="tbImagePath" runat="server" Class="form-control"></asp:Image><br />
            <asp:Button ID="btnAdd" runat="server" Text="Add" Class="btn" BackColor="#5cb85c" ForeColor="White"  /><br /><br />
          </div><br />
            
                <h1 style="padding-top:50px; ">Update Game:</h1>    
             <div class="col-xs-12">                    
                <label>Update Game Name: </label><asp:TextBox ID="tbUpGameName" runat="server" Class="form-control"></asp:TextBox> 
                <label>Update Game Genre: </label><asp:TextBox ID="tbUpGameGenre" runat="server" Class="form-control"></asp:TextBox>
                 <!-- pull data of platforms from database --->
                <label>Update Game Platform: </label><asp:DropDownList ID="dpUpGamePlatform" runat="server" Class="form-control"></asp:DropDownList> 
                <label>Update Game Price: </label><asp:TextBox ID="tbUpGamePrice" runat="server" Class="form-control"></asp:TextBox>
                <label>Update Game Image: </label><asp:Image ID="tbUpImagePath" runat="server" Class="form-control"></asp:Image><br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Class="btn" BackColor="#5cb85c" ForeColor="White"  /><br /><br />
          </div><br />      
              
                <h1 style="padding-top:50px; ">Delete Game:</h1>    
            <div class="col-xs-12">                           
                <label>Game Name: </label><asp:TextBox ID="tbDelGameName" runat="server" Class="form-control"></asp:TextBox> 
                <label>Game Platform: </label><asp:DropDownList ID="dpDelPlatform" runat="server" Class="form-control"></asp:DropDownList> <br />

            <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn" BackColor="#5cb85c" ForeColor="White"  /><br /><br />
            </div>
          </div>
      </form>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
