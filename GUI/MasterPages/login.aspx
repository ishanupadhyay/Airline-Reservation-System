<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs"
    Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
    <br />
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td style="width: 100px; height: 18px;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label" runat="server" Text="label" Visible="False" Width="316px" ForeColor="Gray"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
