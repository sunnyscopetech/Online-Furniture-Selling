using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sq = "select *from regi where unm='" + TextBox1.Text + "' and pswd='" + TextBox2.Text + "'";

        Connect con = new Connect();

        if (con.check_data(sq))
        {
            Session["user"] = TextBox1.Text;
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script language='JavaScript'>alert('Successfully Login');window.location.href='prodview.aspx';</script>");

        }
        else
        {
            Label3.Text = "Wrong Username or Password";

        }

    }
}