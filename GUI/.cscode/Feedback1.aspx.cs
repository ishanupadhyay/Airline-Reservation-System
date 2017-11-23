using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class feedback1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cn = "server=DESKTOP-76QVTNO; Database=shubham; Uid=sa; pwd=sql";
        con = new SqlConnection(cn);
        con.Open();
        string insert = "insert into Feedback (Feedback) values (@feed)";
        cmd = new SqlCommand(insert,con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@feed", DropDownList1.SelectedItem.Text);
        int temp = cmd.ExecuteNonQuery();
        Label1.Text = "Thankyou for your time";
        con.Close();
    }
}
