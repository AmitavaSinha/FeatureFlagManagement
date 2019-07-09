<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Async="true" EnableEventValidation="false"   Inherits="WebFormsApplication.Home" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
       function myFunction(value, id) {
           //alert("The input value has changed. The new value is: " + id);
           var labelID = '#' + 'lbl' + id.toString();
           var hdnValue = '#' + 'hdn' + id.toString();
           var Price = $(hdnValue).val();
           //alert(Price)
           //alert(value)
           var vTotal = Price * value;
           //alert(labelID)
           $(labelID).text(vTotal.toString());
        }

        function findTotal(){
            var sum = 0;
            
		//iterate through each textboxes and add the values
		$(".lbl").each(function() {
			//add only if the value is number
			if(!isNaN(this.textContent) && this.textContent.length!=0) {
				sum += parseFloat(this.textContent);
			}
            //alert(this.textContent);
            });
            //alert(sum);
        hdnTotal.value = sum;
        }

    </script>

    <script src="js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */
        .jumbotron {
            margin-bottom: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
        .lbl {
				background-color: #FEFFB0;
				font-weight: bold;
				text-align: right;
			}
    </style>
</head>
<body>
    <div class="jumbotron">
        <div class="container text-center">
            <h2>Online Request Applications for Office Items</h2>
        </div>
    </div>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
                <%--<a class="navbar-brand" href="#">Logo</a>--%>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <%--<li class="active"><a href="Home.aspx">Home</a></li>--%>
                    <li id="liSta" runat="server"><a href="#">Stationary Items</a></li>
                    <li id="liEle" runat="server"><a href="#">Electronic Items</a></li>
                    <li id="lihi" runat="server"><a href="#">High Value Items</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Account.aspx"><span class="glyphicon glyphicon-user"></span>amitava.sinha@hcl.com</a></li>
                    <li><a href="Cart.aspx"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">

        <div class="container">
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <input type="hidden" id="hdnTotal" runat="server" />
        </div>
        <br>
        <br />
    </form>

    <footer class="container-fluid text-center">
       <%-- <p>Website Credits</p>--%>
        <form class="form-inline">
           <%-- Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">--%>
            <button id="btnOrderNow" type="button" class="btn btn-danger" runat="server" onclick='findTotal();' onserverclick="btnOrderNow_Click">Order Now</button>
        </form>
    </footer>
</body>
</html>
