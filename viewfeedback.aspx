<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <p align="center">
            View & Delete Feedback
        </p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="mobile"
            DataSourceID="SqlDataSource2" Font-Size="22px" Width="519px" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderColor="#000066" 
            BorderStyle="Solid" GridLines="Horizontal" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" ReadOnly="True" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#FF99FF" BorderColor="#6666FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:furnConnectionString2 %>" 
            DeleteCommand="DELETE FROM [contact] WHERE [mobile] = @original_mobile AND [fname] = @original_fname AND [email] = @original_email AND [message] = @original_message"
            InsertCommand="INSERT INTO [contact] ([fname], [email], [mobile], [message]) VALUES (@fname, @email, @mobile, @message)"
            OldValuesParameterFormatString="original_{0}"
             SelectCommand="SELECT [fname], [email], [mobile], [message] FROM [contact]"
            UpdateCommand="UPDATE [contact] SET [fname] = @fname, [email] = @email, [message] = @message WHERE [mobile] = @original_mobile AND [fname] = @original_fname AND [email] = @original_email AND [message] = @original_message">
            <DeleteParameters>
                <asp:Parameter Name="original_mobile" Type="String" />
                <asp:Parameter Name="original_fname" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_message" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="original_mobile" Type="String" />
                <asp:Parameter Name="original_fname" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_message" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="message" Type="String" />
            </InsertParameters>
            
            </asp:SqlDataSource>
    </div>
</asp:Content>
