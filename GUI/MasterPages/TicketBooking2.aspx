<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TicketBooking2.aspx.cs" Inherits="TicketBooking2" MasterPageFile ="~/home.master"%>
<asp:Content ID = "content" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
    <div>
    
        <table cellpadding="3" cellspacing="0" style="width: 100%; border-style: solid; border-width: 2px">
            <tr>
                <td style="text-align: center; text-decoration: underline; font-size: large;" colspan="2"><strong>TICKET BOOKING</strong></td>
                <td style="text-align: center; text-decoration: underline; font-size: large;">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">PassengerName</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Passenger name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">flightId</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Flight ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">flightname</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>air india</asp:ListItem>
                        <asp:ListItem>Jet airways</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropdownList2" ErrorMessage="Select Flight name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px; height: 28px">from station </td>
                <td style="height: 28px">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Agra</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 28px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select source station"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">to station</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Agra</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Destination not select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">category</td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Business class</asp:ListItem>
                        <asp:ListItem>First class</asp:ListItem>
                        <asp:ListItem>Economic class</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Select Category"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">date and timings</td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>7:30 7 June</asp:ListItem>
                        <asp:ListItem>12:30  8 June</asp:ListItem>
                        <asp:ListItem>4:30  9 June</asp:ListItem>
                        <asp:ListItem>5:30  13 June</asp:ListItem>
                        <asp:ListItem>21:30  7 June</asp:ListItem>
                        <asp:ListItem>18:30 14 June</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList6" ErrorMessage="Date and Timings not selected "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 373px">&nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    
    </asp:Content>