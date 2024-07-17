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

public partial class adminview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("admin.aspx");
        }
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Remove("uname");
        Response.Redirect("admin.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {

    }
}
