<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Available seats.aspx.cs" Inherits="Available_seats" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <br />
        <table>
            <tr>
                <td colspan="2">
                    <span style="font-size: 16pt; ">AVAILABLE SEATS</span></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 94px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="flightid"
                        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" EnableModelValidation="True">
                        <Columns>
                            <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
                            <asp:BoundField DataField="Flightname" HeaderText="Flightname" SortExpression="Flightname" />
                            <asp:BoundField DataField="Fromstation" HeaderText="Fromstation" SortExpression="Fromstation" />
                            <asp:BoundField DataField="Tostation" HeaderText="Tostation" SortExpression="Tostation" />
                            <asp:BoundField DataField="Firstclass" HeaderText="Firstclass" SortExpression="Firstclass" />
                            <asp:BoundField DataField="Bussinessname" HeaderText="Bussinessname" SortExpression="Bussinessname" />
                            <asp:BoundField DataField="economicclass" HeaderText="economicclass" SortExpression="economicclass" />
                            <asp:BoundField DataField="dateandtimings" HeaderText="dateandtimings" SortExpression="dateandtimings" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shubhamConnectionString %>" SelectCommand="SELECT * FROM [seats]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>

