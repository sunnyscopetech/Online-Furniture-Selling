<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prodview.aspx.cs" Inherits="prodview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table align="center" style=" font-size:14px; color:Black;
	font-weight:bold;
	padding:0;
	margin:0;font-family: Georgia, Times, serif; margin-left:200px">
        <tr>
            <td align="right" colspan="4" rowspan="1"><asp:Label ID="lbl1" runat="server"></asp:Label><br />
                </td>
        </tr>
        <tr>
            <td align="center" rowspan="5">
                <asp:Image ID="Image1" runat="server" Width="600" Height="400" /> </td>
            <td class="style21"></td>
            <td>
                </td>
        </tr>
        </table>
        <div align="center">         <table align="center">
            
        <tr> <td> Name:-</td> <td> &nbsp;<asp:Label ID="lblnm" runat="server" ></asp:Label></td></tr>
        <tr>
            <td class="style21">Price</td>
            <td>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
                /-</td>
        </tr>
        <tr>
            <td class="style21">  &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
            <tr>
                   <td class="style21">Features</td> 
                   <td>
                       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                   </td>
            </tr>
            <tr>
                <td>
                    <h2> Inquiry for product</h2>
                </td>
            </tr>
             <tr>
                   <td class="style21">Fullname</td> 
                   <td>
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </asp:Label>
                   </td>
            </tr>
            
             <tr>
                   <td class="style21">Email</td> 
                   <td>
                       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </asp:Label>
                   </td>
            </tr>
             <tr>
                   <td class="style21">MobileNo</td> 
                   <td>
                       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </asp:Label>
                   </td>
            </tr>
             <tr>
                   <td class="style21">City</td> 
                   <td>
                       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> </asp:Label>
                   </td>
            </tr>
            
            <tr>
             
                <td colspan="0" align ="center" >
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Inquiry" />
                    
                </td>
                <td>
                    <asp:Button ID="btn2" runat="server" Text="Logout" OnClick="btn2_Click" style="height: 29px" />
                </td>
        </tr>
        <tr align ="center"><td colspan="3" align="center">&nbsp;</td>
        </tr>
    </table>
    </div>

</asp:Content>

