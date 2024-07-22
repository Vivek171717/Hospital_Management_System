﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="HMS1.doctor" %>

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
            grid-template-rows: 1fr 1fr 1fr;
            grid-template-columns: 1fr 1fr;
            grid-template-areas: "first1 first2" "second1 second2" "third third";
            width: 800px;
            border-radius: 40px;
          
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
        .third{
            grid-area: third;
            align-self: center;
            justify-self: center;
        }
        .gridview {
            width: 800px;
            border: 2px solid black;
        }

        .gridview-header {
            background-color: purple;
            color: white;
            font-weight: bold;
        }

        .gridview-row {
            background-color: mediumpurple;
            color: white;
            text-align:center;
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
                <img src="doctor.png"/>
                <div><h2>Doctor's Tab</h2></div>
            </div>
        </div>

        <div class="content">
            <div class="title">
                <h2>HOSPITAL MANAGEMENT SYSTEM</h2>
            </div>
            <div class="controls">
                <div class="first1">
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="first2">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <div class="second1">                
                <asp:Label ID="Label3" runat="server" Text="Specialization"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
                <div class="second2">
                <asp:Label ID="Label4" runat="server" Text="Fees"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                <div class="third">
                    <asp:Button ID="Button1" runat="server" Text="ADD"  OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="UPDATE" OnClick="Button2_Click"/>
                    <asp:Button ID="Button3" runat="server" Text="DELETE" OnClick="Button3_Click"/>
                </div>
            </div>
            <div>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </div>
            <div class="table">
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="false">
                    <HeaderStyle CssClass="gridview-header" />
                    <RowStyle CssClass="gridview-row" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="Doctor ID" />
                        <asp:BoundField DataField="Name" HeaderText="Doctor Name" />
                        <asp:BoundField DataField="Specialization" HeaderText="Speciality" />
                        <asp:BoundField DataField="CheckupFees" HeaderText="Chekup Charge" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>