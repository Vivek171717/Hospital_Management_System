<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HMS1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
 
    body{
        padding: 0px;
        margin: 0px;
        background-color: mediumpurple;  
    }
    .content{
        padding: 0px;
        margin: 0px;
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .title{
        color: white;
        text-align: center; 
    }
    .title div{
        font-size: 70px;
    }
    .main{
        width: 400px;
        height: 300px;
        border-radius: 50px;
        background-color: purple;
        color: white;
        margin: 60px 0px 0px 0px;
        display: grid;
        grid-template-rows: 1fr 0.8fr 0.8fr 0.6fr 1fr;
        grid-template-areas: "first" "second" "third" "fourth" "fifth";
    }
    .first{
        grid-area: first;
        align-self: center;
        justify-self: center;
    }
    .second{
        grid-area: second;
        align-self: center;
        justify-self: center;
    }
    .third{
        grid-area: third;
        align-self: center;
        justify-self: center;
    }
    .fourth{
        grid-area: fourth;
        align-self: center;
        justify-self: center;
    }
    .fifth{
        grid-area: fifth;
        align-self: center;
        justify-self: center;
    } 
    .btn-cancel{
        margin-left:10px;
    }

</style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="content">
        <div class="title">
            <div>HOSPITAL MANAGEMENT SYSTEM</div>
        </div>
        <div class="main">
            <div class="first">
                <h1><asp:Label ID="Label1" runat="server" Text="Login Form"></asp:Label></h1>
            </div>
            <div class =" second">
                <asp:Label ID="Label2" runat="server" Text="Username:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="180px"></asp:TextBox>
            </div>

            <div class="third">
                <asp:Label ID="Label3" runat="server" Text="Password: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px" Height="35px"></asp:TextBox>
            </div>
            <div class="fourth">
                <input class="checkbox" type="checkbox" onchange="document.getElementById('TextBox2').type=this.checked? 'text': 'password'" />Show Password
            </div>
            <div class="fifth">
                <asp:Button CssClass="btn-login" Font-Size="Large" ID="Button1" runat="server" Text="Login" ForeColor="White" BackColor="#33CC33" Height="40px" Width="90px" OnClick="Button1_Click" />
                <asp:Button CssClass="btn-cancel" ID="Button2" runat="server" Font-Size="Large" Text="Cancel" ForeColor="White" BackColor="Red" Height="40px" Width="90px" />
            </div>
        </div>
        </div>
        
    </form>
</body>
</html>
