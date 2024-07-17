<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: x-large;

        }
        .style12
        {
            width: 115px;
            font-size: large;
            text-align: center;
            color: #000000;
        }
        .style21
        {
            font-size: x-large;
            font-weight: bold;
            color: maroon;
            width: 60%;
            text-decoration: blink;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <table align = "center" style="height: 219px; width: 543px;" >
            <tr>
                <td colspan = "2" align = "center" class="style8" height="40px"  >
                    <span class="style21">Add Category 
                    Details</span><asp:Label ID="lbl1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style12">&nbsp;Category_name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">Category_Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
           <tr> <td colspan="2">
               <asp:Button ID="Button1" runat="server" Text="Button" 
                   onclick="Button1_Click1" /> </td></tr>
        </table>
    </div>

</asp:Content>



