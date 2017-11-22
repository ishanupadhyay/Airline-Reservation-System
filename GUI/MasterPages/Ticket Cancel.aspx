<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Ticket Cancel.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
    <strong><span style="font-size: large">Ticket Cancellation</span></strong>
    <br />
    <br />
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td>Passenger Name</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter passenger name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>flight ID</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" Width="194px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter ID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

