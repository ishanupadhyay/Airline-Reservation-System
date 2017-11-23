using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string cn = "server = DESKTOP-76QVTNO; Database = shubham; Uid = sa; pwd = sql";
        con = new SqlConnection(cn);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string sn = "delete Plist where  passengername = '"+TextBox1.Text+"'";
        cmd = new SqlCommand();
        cmd.CommandText = sn;
        cmd.Connection = con;
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            
           
            
                cmd.CommandText = sn;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label1.Text = "Successfully deleted";
            

        }
        con.Close();


    }
}
