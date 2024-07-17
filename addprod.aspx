<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addprod.aspx.cs" Inherits="addprod" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:150px;">
<table style=" margin-left:100px; font-size:20px; color:Black" width=600>
<tr> <td colspan="2" align=center> Add Product</td></tr>
<tr>
<td class="style1">
    Category</td>
<td>  
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
           DataSourceID="SqlDataSource1" DataTextField="cat_name" 
        DataValueField="cat_name">
        <asp:ListItem>Clothes</asp:ListItem>
        <asp:ListItem>Jwellary</asp:ListItem>
        <asp:ListItem>Accessories</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [cat_name] FROM [category]"></asp:SqlDataSource>
    </td>
</tr>




<tr>
<td class="style1">Product Name</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
    </td>

</tr>
<tr>
<td class="style1">Product Image</td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="FileUpload1" ErrorMessage="Image Required"></asp:RequiredFieldValidator>
    </td>

</tr><tr>
<td class="style1">Price...</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>

</tr><tr>
<td class="style1">Features</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Height="84px" TextMode="MultiLine" 
        Width="175px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Please Put some information"></asp:RequiredFieldValidator>
        </td>

</tr>
<tr>

<td colspan="2" align=center>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </td>

</tr>
</table>


</div>
</asp:Content>

