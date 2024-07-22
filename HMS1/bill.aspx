<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="HMS1.bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .sidebar {
            background-color: purple;
            width: 20vw;
            height: 100vh; /* Full height */
            color: white;
            box-sizing: border-box;
            position: absolute;
            padding: 5vh 0px 0px 0px;
        }

        .sidebar ul {
            list-style-type: none;
        }

        .sidebar ul li {
            margin: 40px 0;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }
        .topitem img{
            width:40px;
            height:40px;
        }
        .top{
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            margin: 0px;
        }
        .middle{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .bottom{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .bottom img{
            width:180px;
            height:180px;
        }
        .content {
            margin-left: 20vw;
            padding: 20px;
            width: 80vw;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;

        }
        .title{
            background-color: mediumpurple;
            color: white;
            width: 550px;
            display: flex;
            justify-content: center;
            border-radius: 400px;
        }
        .controls{
            background-color: mediumpurple;
            height: 25vh;
            color: white;
            display: grid;
            grid-template-rows: 1fr 1fr 1fr 1fr;
            grid-template-columns: 1fr 1fr 0.8fr;
            grid-template-areas: "first1 first2 first3" "second1 second2 second2" "third1 third2 third2" "fourth fourth fourth";
            width: 800px;
            border-radius: 30px;
          
        }
        .first1{
            grid-area: first1;
            align-self: center;
        }
        .first2{
            grid-area: first2;
            align-self: center;
            justify-self: center;
        }
        .first3{
            grid-area: first3;
            align-self: center;
            justify-self: center;
        }
        .second1{
            grid-area: second1;
            align-self: center;
            justify-self: center;
        }
        .second2{
            grid-area: second2;
            align-self: center;
            justify-self: center;
        }
        .third1{
            grid-area: third1;
            align-self: center;
            justify-self: center;
        }
        .third2{
            grid-area: third2;
            align-self: center;
        }
        .fourth{
            grid-area: fourth;
            align-self: center;
            justify-self: center;
        }
        .bill{
            display: flex;
            gap: 10px;
            align-items:center;
            justify-content: center;
        }
        .bill div{
            margin-bottom: 8px;
        }
        
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <div class="top">
                <div class="topitem"><img src="hms-logo.png" /></div>
                <div class="topitem"><h1>XYZ HOSPITAL</h1></div>
            </div>
            <div class="middle">      
                    <ul>
                        <li><h2><a href="doctor.aspx">Doctor</a></h2></li>     
                        <li><h2><a href="patient.aspx">Patient</a></h2></li>  
                        <li><h2><a href="medicine.aspx">Medicine</a></h2></li>
                        <li><h2><a href="bill.aspx">Billing</a></h2></li>
                    </ul>                          
            </div>
            <div class="bottom">
                <img src="bill.png"/>
                <div><h2>Billing Tab</h2></div>
            </div>
        </div>

        <div class="content">
            <div class="title">
                <h2>HOSPITAL MANAGEMENT SYSTEM</h2>
            </div>
            <div class="controls">
                <div class="first1">
                &emsp;&emsp;&emsp;&emsp;<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="first2">
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <div class="first3">                
                <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
                <div class="second1">
                &emsp;&ensp;<asp:Label ID="Label4" runat="server" Text="Doctor fee"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                <div class="second2">
                <asp:Label ID="Label5" runat="server" Text="Service Charge Per Day"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </div>
                <div class="third1">
                <asp:Label ID="Label6" runat="server" Text="Medicine Fee"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </div>
                <div class="third2">
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;<asp:Label ID="Label7" runat="server" Text="No. of Days Admitted"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </div>
                <div class="fourth">
                    <asp:Button ID="Button1" runat="server" Text="Calculate Bill" onClick="Button1_Click" />
                </div>
            </div>
            <div style=" margin-bottom: 30px;">
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            </div>
            <div class="bill">
                <div>
                <div class="blable1">
                    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable12">
                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable13">
                    <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable4">
                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable5">
                    <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable6">
                    <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable7">
                    <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable8">
                    <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable9">
                    <asp:Label ID="Label17" runat="server" Text="" Font-Bold ></asp:Label>
                </div>
                </div>
                <div>
                <div class="blable10">
                    <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable11">
                    <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable12">
                    <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable13">
                    <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable14">
                    <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable15">
                    <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable16">
                    <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable17">
                    <asp:Label ID="Label25" runat="server" Text=""></asp:Label>
                </div>
                <div class="blable18">
                    <asp:Label ID="Label26" runat="server" Text="" Font-Bold ></asp:Label>
                </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
