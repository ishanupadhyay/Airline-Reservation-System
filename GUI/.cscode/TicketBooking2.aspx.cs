using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class TicketBooking2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        string cn = "server = DESKTOP-76QVTNO; Database = shubham; Uid = sa; pwd = sql";
        con = new SqlConnection(cn);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string st = "insert into Plist values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "')";
            cmd = new SqlCommand();
            cmd.CommandText = st;
            cmd.Connection = con;
            con.Open();
            if (con.State == ConnectionState.Open)
            {




                cmd.CommandText = st;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label2.Text = "Successfully Booked";


            }
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("error:"+ ex);
        }
    }
}
