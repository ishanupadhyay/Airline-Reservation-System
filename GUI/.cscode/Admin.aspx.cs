using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cn = "server = DESKTOP-76QVTNO; Database = shubham; Uid = sa; pwd = sql";
        SqlConnection con = new SqlConnection(cn);
        con.Open();
        string query1 = "select count(*) from Admin where Username='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(query1, con);
        int tmp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        {
            if (tmp == 1)
            {
                con.Open();
                string PassQuery = "Select Password from Admin where Username='" + TextBox1.Text + "'";
                SqlCommand pass = new SqlCommand(PassQuery, con);
                string password = pass.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["new"] = TextBox1.Text;
                    Label1.Text = "Your password is correct";
                    Response.Redirect("details.aspx");
                }
                else
                {
                    Label1.Text = "Password is incorrect";
                }
            }
            else
            {
                Label1.Text = "Username is incorrect";
            }
        }
    }
}
