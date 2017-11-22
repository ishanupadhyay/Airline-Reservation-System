<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <strong>
        <br style="text-decoration: underline; font-size: x-large" />
        <span style="text-decoration: underline; font-size: x-large">Login Details</span></strong><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shubhamConnectionString %>" SelectCommand="SELECT * FROM [reg]"></asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Feedback.aspx">Feedback list</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx">Sign out</asp:HyperLink>
        <br />
</div>
</asp:Content>

