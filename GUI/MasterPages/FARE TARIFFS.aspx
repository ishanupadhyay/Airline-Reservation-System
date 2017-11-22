<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="FARE TARIFFS.aspx.cs"
    Inherits="FARE_TARIFFS" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span><span>
        <br />
    </span>
        <div style="text-align: center">
            <table>
                <tr>
                    <td colspan="2">
                        <span>FARES AND TARIFFS</span><br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="flightid"
                            DataSourceID="SqlDataSource1" Font-Size="12pt" ForeColor="Black" GridLines="Horizontal" EnableModelValidation="True">
                            <Columns>
                                <asp:BoundField DataField="Flightname" HeaderText="Flightname" SortExpression="Flightname" />
                                <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
                                <asp:BoundField DataField="Fromstation" HeaderText="Fromstation" SortExpression="Fromstation" />
                                <asp:BoundField DataField="Tostation" HeaderText="Tostation" SortExpression="Tostation" />
                                <asp:BoundField DataField="firstclass" HeaderText="firstclass" SortExpression="firstclass" />
                                <asp:BoundField DataField="Bussinessclass" HeaderText="Bussinessclass" SortExpression="Bussinessclass" />
                                <asp:BoundField DataField="economicclass" HeaderText="economicclass" SortExpression="economicclass" />
                                <asp:BoundField DataField="dateandtimings" HeaderText="dateandtimings" SortExpression="dateandtimings" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shubhamConnectionString %>" SelectCommand="SELECT * FROM [Fares]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
        <br />
    </span>&nbsp;
    <br />
    <br />
</asp:Content>
