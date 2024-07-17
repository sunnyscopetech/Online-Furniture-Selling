<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User-login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .style7
        {
            font-size: xx-large;
            color: #7F0D0D;
            font-weight: bold;
            text-decoration: blink;
            height: 49px;
        }
        .style8
        {
            font-size: medium;
            width: 179px;
        }
        .style9
        {
            width: 275px;
        }
        .style10
        {
            font-size: medium;
            height: 52px;
            width: 179px;
        }
        .style11
        {
            width: 275px;
            height: 52px;
            margin-left: 120px;
        }
        .style12
        {
            height: 133px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <table style=" height: 315px; width: 609px;" align="center"  align="center">
    <tr>
        <td colspan = "2" align = "center" class="style7">Sign In
        </td>
    </tr>
    <tr>
        <td class="style8" align ="center">
            <asp:Label ID="Label1" runat="server" Text="Admin Id" Width="130px" 
                Height="20px" style="font-size: x-large"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="TextBox1" runat="server" Width="270px" Height="35px" 
                Font-Size="X-Large"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Please Enter The  Admin ID"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10" align ="center" >
            <asp:Label ID="Label2" runat="server" Text="Password" Width="130px" 
                Font-Size="X-Large" Height="20px"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox2" runat="server" Width="270px" Height="35px" 
                TextMode="Password" Font-Size="X-Large"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Please Enter The Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan = "2" align = "center" class="style12" >
            <asp:Button ID="Button1" runat="server" Text="Log In" Font-Bold="True" 
                Font-Size="X-Large" ForeColor="#7F0D0D" Height="40px" Width="100px" 
                onclick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" 
                Height="40px" Width="400px"></asp:Label>
 </td>
    </tr>
</table>
</div>

</asp:Content>

