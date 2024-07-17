<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deleteproduct.aspx.cs" Inherits="deleteproduct" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div align="center">
        <p align="center">
           Delete & update Products
        </p>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="pro_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="pro_id" HeaderText="pro_id" ReadOnly="True" SortExpression="pro_id" />
                <asp:BoundField DataField="pro_name" HeaderText="pro_name" SortExpression="pro_name" />
                <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name" />
                <asp:BoundField DataField="pro_features" HeaderText="pro_features" SortExpression="pro_features" />
                <asp:BoundField DataField="pro_images" HeaderText="pro_images" SortExpression="pro_images" />
                <asp:BoundField DataField="budget" HeaderText="budget" SortExpression="budget" />
           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 </Columns>
        </asp:GridView>
<%--        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:furnConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>--%>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:furnConnectionString %>" 
         ConflictDetection="CompareAllValues" 
        
           DeleteCommand="DELETE FROM [product] WHERE [pro_id] = @original_pro_id AND [pro_name] = @original_pro_name AND [cat_name] = @original_cat_name AND [pro_features] = @original_pro_features AND [pro_images] = @original_pro_images AND [budget] = @original_budget" 
        InsertCommand="INSERT INTO [product] ([pro_id], [pro_name], [cat_name], [pro_features], [pro_images], [budget]) VALUES (@pro_id, @pro_name, @cat_name, @pro_features, @pro_images, @budget)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [pro_id], [pro_name], [cat_name], [pro_features], [pro_images], [budget] FROM [product]" 
        UpdateCommand="UPDATE [product] SET [pro_name] = @pro_name, [cat_name] = @cat_name, [pro_features] = @pro_features, [pro_images] = @pro_images, [budget] = @budget WHERE [pro_id] = @original_pro_id AND [pro_name] = @original_pro_name AND [cat_name] = @original_cat_name AND [pro_features] = @original_pro_features AND [pro_images] = @original_pro_images AND [budget] = @original_budget">
        <DeleteParameters>
            <asp:Parameter Name="original_pro_id" Type="Int32" />
            <asp:Parameter Name="original_pro_name" Type="String" />
            <asp:Parameter Name="original_cat_name" Type="String" />
            <asp:Parameter Name="original_pro_features" Type="String" />
            <asp:Parameter Name="original_pro_images" Type="String" />
            <asp:Parameter Name="original_budget" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="pro_name" Type="String" />
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="pro_features" Type="String" />
            <asp:Parameter Name="pro_images" Type="String" />
            <asp:Parameter Name="budget" Type="String" />
            <asp:Parameter Name="original_pro_id" Type="Int32" />
            <asp:Parameter Name="original_pro_name" Type="String" />
            <asp:Parameter Name="original_cat_name" Type="String" />
            <asp:Parameter Name="original_pro_features" Type="String" />
            <asp:Parameter Name="original_pro_images" Type="String" />
            <asp:Parameter Name="original_budget" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="pro_id" Type="Int32" />
            <asp:Parameter Name="pro_name" Type="String" />
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="pro_features" Type="String" />
            <asp:Parameter Name="pro_images" Type="String" />
            <asp:Parameter Name="budget" Type="String" />
        </InsertParameters>
   
   </asp:SqlDataSource>
        <br />
        <br />
    </div>
</asp:Content>

