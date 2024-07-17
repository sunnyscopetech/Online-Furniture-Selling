<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="read.aspx.cs" Inherits="read" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mono" HeaderText="mono" SortExpression="mono" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="pro_name" HeaderText="pro_name" SortExpression="pro_name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F:\STUDY\BCA\6TH SEM\FINAL PROJECTS\FINAL PROJECTS\FURNITURE\FURN\APP_DATA\FURN.MDFConnectionString %>" SelectCommand="SELECT [fullname], [email], [mono], [city], [pro_name] FROM [inquiry]"></asp:SqlDataSource>
</div>

</asp:Content>

