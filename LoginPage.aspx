<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LOGIN</title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container">
            <h1>Login</h1>
            <div class="P2">
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your username" style="text-indent:15px;"></asp:TextBox>
                <br />
                </div> 

             <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <div class="password-container">
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password" style="text-indent:15px;"></asp:TextBox>
                    <img src="view.jpg" id="eyeicon" />
                </div>
                <br />

             <div class="remember">
                <asp:CheckBox ID="chkRememberMe" runat="server"  Text="Remember me" />
            </div>
         <div class="forget">
                <a href="#" id="forgotPasswordLink">Forgot Password?</a>
            </div>


            <div class="signup">
            <asp:Button ID="btnLogin" runat="server" Text="Login"/>
            </div>

            <div class="signup">
            <asp:Literal ID="litLoginText" runat="server" Text="Don't have an account?"></asp:Literal>
            <a href="SignUp.aspx" id="signupbtn">SIGNUP</a>
            </div>

     </div>
    </form>

      <style>
          * {
              font-family: sans-serif;
          }



       
          body {
            
            background: url("PHOTO.jpg") no-repeat;
            background-size: cover;
            
           
            
        }
        
        .container {
            
            width: 100%;
            max-width: 400px;
            margin:100px auto;
            padding: 20px;
            flex-align: center;
            background: rgba(255, 255, 255, 0.2);
            border:2px solid rgba(255, 255, 255, 5);
            border-radius:20px;
            backdrop-filter: blur(10px); 

        }
          

        
        h1 {
            margin-top: 0;
            color: black;
            text-align: center;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 99%; 
            padding: 20px 0px;
            border: 2px double black;
            outline: none;
            border-radius: 4px;
            background: white;
            font-size: 16px;
            margin: 12px 0px;
            color: black;
            display: inline-block;
            text-indent:15px;
        }
         .password-container img {
            width: 20px;
            height: 20px;
            cursor: pointer;
            position: absolute;
            margin-left: -30px;
            margin-top: 33px;


        }
          #chkRememberMe {
              margin-top:-1px;

          }

          .remember {
              margin:-15px 0 10px;
              padding:0px 0px;
              color:black;
              display: flex;
              text-justify: inter-cluster;
              align-items: center;
 
        }


          .forget {

               margin:-35px 10px 10px;
               text-align: end;
               align-items: center;
              
          }


         #forgotPasswordLink {
            color:blue;
            text-decoration: none;
        }

        #forgotPasswordLink:hover {
            text-decoration: none;
        }

        
        #btnLogin {
            width: 100%;
            padding: 12px 0px;
            margin-bottom: 15px;
            background-color: white;
            color: black;
            font-size: 22px;
            font-weight: 700;
            border-radius: 50px;
            cursor: pointer;
            transition: background-color 0.4s;
        }
        
        #btnLogin:hover {
            background-color: lightblue;
            cursor: pointer;
        }



         .signup {
              text-align:center;
          }

        #signupbtn {
            color:blue;
            text-align: center;
            text-decoration:none;
            
        }
        @media (max-width: 600px) {
            .container {
                width: 100%;
                padding: 15px;
                box-shadow: none;
                border-radius: 0;
            }
        }

        @media (max-width: 400px) {
            .container h1 {
                font-size: 1.5em;
            }

            input[type="text"],
            input[type="password"] {
                font-size: 1em;
                padding: 12px;
            }
        }


    </style>

    <script>

        var eyeicon = document.getElementById("eyeicon");
        var password = document.getElementById("txtPassword");

        eyeicon.onclick = function () {
            if (password.type == "password") {
                password.type = "text";
                eyeicon.src = "close.jpg";
            }
            else {
                password.type = "password";
                eyeicon.src = "view.jpg";
            }
        }

    </script>


</body>
</html>