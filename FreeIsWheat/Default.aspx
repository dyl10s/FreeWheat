<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FreeIsWheat.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
         (adsbygoogle = window.adsbygoogle || []).push({
              google_ad_client: "ca-pub-5177136706143979",
              enable_page_level_ads: true
         });
    </script>


    <link rel="stylesheet" type="text/css" href="stylesheet1.css">
    <link href="https://fonts.googleapis.com/css?family=Paytone+One" rel="stylesheet">
    <title>Free Wheat!</title>
</head>
<body>
        <form id="form1" runat="server">
            <div class="topbar">
                Free Wheat
            </div>
    
            <br />

            <div class="blurb">
                    <asp:Label ID="lblBlurb" runat="server" Text="Here at Free Wheat, our goal is to make sure that the starving kids around the world get some food."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblBlurb2" runat="server" Text="You are helping by visiting our website and doing these math problems. Not only does it help you, but it helps us."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblBlurb3" runat="server" Text="The more you share this website, the more food can be shared around the world. "></asp:Label>
                </div>
    
                <div class="wheatCount">
                    <asp:Label ID="lblWheatCount" runat="server" Text="0"></asp:Label>
                    <br />
                    <asp:Label ID="hdWheat" runat="server" Text="Wheats"></asp:Label>
                </div>
            
            <div class="center">
                <br />
                <div class="problem">
                    <asp:Label ID="lblFirstNumber" runat="server" Text="0"></asp:Label>
                    <asp:Label ID="lblX" runat="server" Text="x"></asp:Label>
                    <asp:Label ID="lblSecondNumber" runat="server" Text="0"></asp:Label>
                </div>
    
                <br />
    
                <asp:TextBox ID="txtAnswer" runat="server" autocomplete="off" OnTextChanged="Button1_Click"></asp:TextBox>
                <br />
                 <br />
                <asp:Button class="submitButton" ID="Button1" runat="server" Text="Check" Height="50px" Width="109px" OnTextChanged="Button1_Click"/>
                <br />
            </div>
    
            <div class="response">
                <asp:Label ID="lblCorrectIncorrect" runat="server" Text="Correct/Incorrect" Visible="False"></asp:Label>
            </div>

            <footer style="text-align: center;">&hearts; 2018 Free Wheat &hearts;<br/> &hearts;Made with lots of love from SmokeyFish and AngryCarrot. P.S. We love the African Childs &hearts;</footer>
            
            <br/>

             <div>
                <center>
                    <asp:PlaceHolder ID="LongAd" runat="server"></asp:PlaceHolder>
                </center>
            </div>

        </form>

    </body>

</html>
