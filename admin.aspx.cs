using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sq = "select *from admin where admin_id='" + TextBox1.Text + "' and admin_pass='" + TextBox2.Text + "'";

        Connect con = new Connect();

        if (con.check_data(sq))
        {
            Session["uname"] = TextBox1.Text;
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "<script language='JavaScript'>alert('Successfully Login');window.location.href='adminview.aspx';</script>");

        }
        else
        {
            Label3.Text = "Wrong Username or Password";

        }

    }
}
