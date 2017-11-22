<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="feedback1.aspx.cs" Inherits="feedback1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; font-size: x-large">
    <strong><span style="text-decoration: underline">Feedback:</span><br style="text-decoration: underline" />
    <br />
    </strong>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="105px" Width="232px">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Better than I thought</asp:ListItem>
        <asp:ListItem>It was bad</asp:ListItem>
        <asp:ListItem>Average</asp:ListItem>
        <asp:ListItem>Can be improved</asp:ListItem>
        <asp:ListItem>It was good</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="128px" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
</asp:Content>

