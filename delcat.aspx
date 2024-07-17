<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="delcat.aspx.cs" Inherits="delcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="cat_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="cat_id" HeaderText="cat_id" ReadOnly="True" SortExpression="cat_id" />
                <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name" />
                <asp:BoundField DataField="cat_logo" HeaderText="cat_logo" SortExpression="cat_logo" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
    </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:furnConnectionString3 %>"
             SelectCommand="SELECT * FROM [category]"
            ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [category] WHERE [cat_id] = @original_cat_id AND (([cat_logo] = @original_cat_logo) OR ([cat_logo] IS NULL AND @original_cat_logo IS NULL)) AND (([cat_name] = @original_cat_name) OR ([cat_name] IS NULL AND @original_cat_name IS NULL))" 
        InsertCommand="INSERT INTO [category] ([cat_id], [cat_logo], [cat_name]) VALUES (@cat_id, @cat_logo, @cat_name)" 
        OldValuesParameterFormatString="original_{0}" 
       
        UpdateCommand="UPDATE [category] SET [cat_logo] = @cat_logo, [cat_name] = @cat_name WHERE [cat_id] = @original_cat_id AND (([cat_logo] = @original_cat_logo) OR ([cat_logo] IS NULL AND @original_cat_logo IS NULL)) AND (([cat_name] = @original_cat_name) OR ([cat_name] IS NULL AND @original_cat_name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_cat_id" Type="Int32" />
            <asp:Parameter Name="original_cat_logo" Type="String" />
            <asp:Parameter Name="original_cat_name" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="cat_logo" Type="String" />
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="original_cat_id" Type="Int32" />
            <asp:Parameter Name="original_cat_logo" Type="String" />
            <asp:Parameter Name="original_cat_name" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="cat_logo" Type="String" />
            <asp:Parameter Name="cat_name" Type="String" />
        </InsertParameters>
            
            
   </asp:SqlDataSource>
    </div>
</asp:Content>

