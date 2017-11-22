<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="AIRLINE SCHEDULE.aspx.cs" Inherits="AIRLINE_SCHEDULE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<br />
    <br />
    <div style="text-align: center">
        <table style="height: 203px; width: 576px;">
            <tr>
                <td colspan="2" style="height: 27px">
                    <span >AIRLINE SCHEDULE</span></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 154px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="flightid"
                        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" EnableModelValidation="True">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="flightid" HeaderText="flightid" ReadOnly="True" SortExpression="flightid" />
                            <asp:BoundField DataField="Flightname" HeaderText="Flightname" SortExpression="Flightname" />
                            <asp:BoundField DataField="Fromstation" HeaderText="Fromstation" SortExpression="Fromstation" />
                            <asp:BoundField DataField="Tostation" HeaderText="Tostation" SortExpression="Tostation" />
                            <asp:BoundField DataField="dateandtimings" HeaderText="dateandtimings" SortExpression="dateandtimings" />
                        </Columns>
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shubhamConnectionString %>" SelectCommand="SELECT * FROM [schedule]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;
</asp:Content>

