﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="gallary" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" margin-left:80px">
<asp:DataList ID="DataList1" runat="server"  
       RepeatColumns="3" Width="240px" onitemcommand="DataList1_ItemCommand" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table style=" margin-left:130px"> 
           <tr> <td align="center" style=" font-size:16px; color:Black"> 
            <asp:Label ID="cat_nameLabel" runat="server" Text='<%# Eval("cat_name") %>' />
            </td> </tr>
            <tr> <td >
                   <img src="cat/<%# Eval("cat_logo") %>" width="140" height="170" />
           
           </td></tr>
           <tr> <td align="center" style=" color:Yellow"> 
               <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("cat_name") %>' ForeColor="#003300">Click Details</asp:LinkButton> </td></tr>
           </table>
           
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>

