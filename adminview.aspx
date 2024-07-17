<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminview.aspx.cs" Inherits="adminview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                
        .style21
        {
            text-align: left;
             font-size: x-large;
        }
        
        .style22
        {
            font-size: large;
        }
        
        #ad1
        {
            font-size:x-large;
            color :Maroon;
            padding-top :20px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ad1">
    <div style="margin-top:20px"></div>

            <marquee> <font style="color:Black; font-size:36px; height:50px">
           Admin Control</font>
           </marquee>
            
</div>
<div align=center>
    <table align ="center" style="height: 209px; width: 547px;" > 
        <tr class="style22">
            <td class="style21">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/addcategory.aspx">Add Category</asp:LinkButton></td>
            <td class="style21">
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    PostBackUrl="~/delcat.aspx" onclick="LinkButton2_Click">update / Delete Category</asp:LinkButton></td>
        </tr>
        <tr class="style22">
            <td class="style21">
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/addprod.aspx">Add Product</asp:LinkButton></td>
            <td class="style21">
                <asp:LinkButton ID="LinkButton4" runat="server" 
                    PostBackUrl="~/deleteproduct.aspx">update / Delete Product</asp:LinkButton></td>
        </tr>
      
        <tr class="style22">
            <td class="style21">
                <asp:LinkButton ID="LinkButton9" runat="server" 
                    PostBackUrl="~/viewfeedback.aspx">View Feedback</asp:LinkButton></td>
            <td class="style21">
                <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click" 
                    PostBackUrl="~/read.aspx">Read / Delete Inquiry</asp:LinkButton>
            </td>

        </tr>
        
            <tr class="style22">
              <td colspan="2" align="center">
                    <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click"> Logout </asp:LinkButton></td>
                   </tr>
    </table>
</div>



</asp:Content>

