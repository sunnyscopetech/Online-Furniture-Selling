﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallaryprd.aspx.cs" Inherits="gallaryprd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" Width="16px" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" 
        onitemcommand="DataList1_ItemCommand" Height="208px">
    <ItemTemplate>
            <table style=" margin-left:170px"> 
           <tr> <td align="center" style=" font-size:16px; color:Black"> 
            <asp:Label ID="cat_nameLabel" runat="server" Text='<%# Eval("pro_name") %>' />
            </td> </tr>
            <tr> <td >
                   <img src="prod/<%# Eval("pro_images") %>" width="110" height="160" />
           
           </td></tr>
            <tr> <td align="center" style=" font-size:16px; color:black"> 
            Rs..<asp:Label ID="Label2" runat="server" Text='<%# Eval("budget") %>' />/
            </td> </tr>
           <tr> <td align="center" style=" color:Yellow"> 
               <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("pro_id") %>' ForeColor="#003300">Click Details</asp:LinkButton> </td></tr>
           </table>
           
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>

