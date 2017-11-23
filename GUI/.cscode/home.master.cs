using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] != null)
        {
            if (Session["Type"].ToString() == "Admin")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
            }
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void Menu2_MenuItemClick1(object sender, MenuEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
    protected void Menu4_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
